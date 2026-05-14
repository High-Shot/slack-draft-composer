---
name: slack-draft-composer
description: Scans your Slack channels for what needs attention, composes ready-to-send message drafts, and queues them in your Slack Drafts folder for manual review and send. Use this skill whenever the user asks to check Slack and draft messages, queue up Slack drafts, draft a status update for Slack, find what needs a reply in Slack, write a client update for Slack, compose a channel announcement, or create any Slack draft. Also runs automatically on schedule to surface reply needs, status updates, outbound announcements, and client-facing comms. Trigger on phrases like "check my Slack", "draft some Slack messages", "what needs a response in Slack", "queue up drafts", "write a Slack update", "Slack draft", or "compose Slack messages for review".
compatibility: requires Slack MCP with slack_search_public_and_private, slack_read_channel, slack_read_thread, slack_search_channels, slack_send_message_draft, slack_send_message
---

# Slack Draft Composer

Scan Slack channels and DMs for actionable signals, build context before drafting, compose conversational messages, and save them as drafts. The user reviews and sends manually — Claude never sends client or team messages directly.

## Core Principle

Not every active channel needs a draft. The goal is to identify channels where there is a *genuine, specific reason* to send a message — an unanswered question, a pending action item, a client update that's overdue, a status moment. Avoid creating noise drafts just because a channel exists.

Drafts should read like a real person wrote them in Slack — conversational, concise, no unnecessary formatting. Not a report. Not a status document. A message.

---

## Run Modes

Honor any mode specified at invocation. If no mode is specified, default to `full run`.

**`full run`** — Standard behavior. Triage all priority channels + DMs, compose up to 5 drafts. Used for scheduled runs and general check-ins.

**`accountability scan`** — No drafting. Scan priority channels for asks made by the agency team that the client has not responded to. Read threads to confirm resolution status. Return a structured list of open items with age. Use when the user asks "what haven't they gotten back to us on" or "what are we still waiting for."

**`targeted`** — Focus on one brand, channel, or DM specified by the user. Override all defaults. Compose as many drafts as warranted.

---

## Priority Channels (Starred)

Always triage these first, in order. A starred channel that's gone quiet may still need a proactive update.

| Channel | ID | Type |
|---|---|---|
| #team3-drink-hyq | C0AQ583S0JZ | Internal |
| #team3-drink-hyq-shared | C09V7NHRZUK | Client-facing |
| #team3-kayara-labs | C0AD8QM7P4N | Internal |
| #team3-kayara-labs-shared | C0AEF7YG7MG | Client-facing |
| #team3-lulu-roses | C0AV32B331T | Internal |
| #team3-slnt | C0AUKCHM3NZ | Internal |
| #team3-slnt-shared | C0ATVJ7RH33 | Client-facing |
| #team3-swim-slipstream | C0AFWTM50N5 | Internal |
| #team3-swim-slipstream-shared | C0AHUB6U98F | Client-facing |
| #team3-sziro-jewelry | C09S5LH2KS9 | Internal |
| #team3-sziro-shared | C09R52BLNBH | Client-facing |

**Channel type rules:**
- Channels ending in `-shared` are client-facing — the client reads these. Professional tone, no internal jargon.
- Channels without `-shared` are internal — direct, operational language.

---

## Team DMs to Monitor

Always check these DMs as part of any full run. They surface team blockers and questions that need Barcus.

| Person | User ID |
|---|---|
| Elaine de Ramos | U0AH6888FFW |
| Alex Paynter | U03J34HAJBD |

Read last 10 messages per DM. Draft a reply if there's an unanswered question or pending action.

---

## Workflow

### Step 0 — Read Run Log (First, Before Anything Else)

Read `/Users/barcus/Documents/SlackResponder/run-log.md`.

Parse and hold in memory for the entire run:

- **Open Items table** → issues the skill is already tracking
- **Reviewed Images table** → images Barcus has manually reviewed (do not re-flag)
- **Resolved Items table** → items Barcus has marked done (skip entirely — no draft, no flag)
- **Run History** → context on recent activity

**Using the run log during triage:**
- If a channel + issue matches an Open Item AND `Last Drafted` was < 3 days ago → skip drafting, note as "already tracked"
- If a channel + issue matches an Open Item AND `Last Drafted` was ≥ 3 days ago → re-evaluate whether it's still unresolved, draft again if so, update `Last Drafted`
- If a channel + issue matches a Resolved Item → skip entirely, no mention in summary
- If an image situation matches a Reviewed Image → do not flag it again

If the run log file does not exist, proceed normally and create it at Step 9.

---

### Step 1 — Load Brand Brains (Once Per Run)

Load all brain files once before reading any channels. Do not reload per brand.

**Load order:**
1. Read `/Users/barcus/Documents/SlackResponder/brand-brains/amazon-core.md` — shared knowledge base
2. Read each brand brain file relevant to channels that will be triaged

**Primary location:** `/Users/barcus/Documents/SlackResponder/brand-brains/`
**Fallback location:** `brand-brains/` relative to this skill file

Try primary first. If not found, try fallback. If neither exists, proceed and note the gap.

**Channel → Brand Brain mapping:**

| Channel pattern | Brand brain file |
|---|---|
| `team3-drink-hyq` | `drink-hyq.md` |
| `team3-kayara-labs` | `kayara-labs.md` |
| `team3-lulu-roses` | `lulu-roses.md` |
| `team3-slnt` | `slnt.md` |
| `team3-swim-slipstream` | `swim-slipstream.md` |
| `team3-sziro` | `sziro-jewelry.md` |

**amazon-core.md loading note:** This file is large. Load it once. Reference relevant sections mentally as needed per draft — do not reload it per brand or per draft.

---

### Step 2 — Build the Channel Queue

**Tier 1 — Starred (always first):**
Read all 11 priority channels using `slack_read_channel`, limit 20, response_format "concise".

**Tier 2 — Direct mentions:**
```
slack_search_public_and_private(
  query="<@U0AQCP0CJMP> after:<yesterday-unix-timestamp>",
  channel_types="public_channel,private_channel,mpim,im",
  sort="timestamp", limit=20
)
```

**Tier 3 — General activity + Team DMs:**
Remaining active channels not yet covered, plus Elaine and Alex DMs.

---

### Step 3 — Build Context Before Drafting (Required)

Before composing anything, build a context summary for each channel with a draft candidate. Do not skip this step.

For each candidate channel or DM:

1. **Read threads** on any message containing a question, ask, or action item. Use `slack_read_thread` with the message `ts`. Do not infer resolution from the surface message alone — check the thread.

2. **Check images against run log.** If a message contains images you cannot read:
   - Check the Reviewed Images table — if it's already there, skip flagging it
   - If not reviewed, flag it explicitly: *"[X images attached — not readable. Draft may be missing context from these."*
   - Do not compose a response that depends on image content you haven't seen

3. **Write a 2–3 line internal summary:**
   - What has been asked or said
   - What has been answered or delivered
   - What is still open or unresolved

Only proceed to drafting after this summary is complete.

---

### Step 4 — Triage — Identify Draft Candidates with Urgency

Assign each candidate an urgency tier before drafting. Cross-reference against the run log Open Items and Resolved Items before assigning.

**P1 — Draft immediately:**
- Account health issues (violations, ODR, suspensions, disbursement holds)
- Client escalation or frustrated tone
- Unanswered client question >24 hours old
- Blocked agency work waiting on client deliverable

**P2 — Draft if time allows:**
- Open action items <24 hours old
- Status updates that are overdue
- Internal team questions needing Barcus input

**P3 — Skip unless nothing else:**
- Routine check-ins where last message is from the agency
- Conversations that are resolved

**Skip entirely when:**
- Conversation is resolved (confirmed via thread)
- Matches a Resolved Item in the run log
- Draft already exists (`draft_already_exists`)
- Channel is externally shared / Slack Connect
- Issue is in Open Items with `Last Drafted` < 3 days ago

Draft P1 items first. In scheduled runs, cap at 5 drafts total.

---

### Step 5 — Compose — Write the Draft

**Tone — this is the most important rule:**
Write like a person sending a Slack message, not like a report. Short paragraphs. Plain language. No headers inside the message. No bullet lists unless the content genuinely requires them (e.g., a list of 4+ items). Read it back and ask: does this sound like something a real person would type in Slack?

Match the message type to the signal:

**Reply / thread response:**
- Address the specific question or action item directly
- One or two short paragraphs max
- Use `thread_ts` to reply in-thread when the signal is inside a thread

**Status update:**
- Lead with current state
- Include what's done, what's in progress, what's blocked
- Keep it scannable but not over-formatted

**Client ask / follow-up:**
- Acknowledge what they've said, then redirect or request what's needed
- Don't lecture. Don't over-explain. Get to the point.

**Client-facing (`-shared` channels):**
- Professional but still conversational — clients are people too
- Use their names, reference specific situations
- No internal jargon, no agency acronyms

**Internal channels:**
- Direct and operational
- Name the person responsible, state the action clearly

---

### Step 6 — Save Drafts

```
slack_send_message_draft(
  channel_id=<id>,
  message=<composed message>,
  thread_ts=<ts only if thread reply>
)
```

Handle errors gracefully:
- `draft_already_exists` → skip, add to skipped list
- `mcp_externally_shared_channel_restricted` → skip, note in summary
- `channel_not_found` → skip, note in summary

---

### Step 7 — Summary Report

```
## Slack Drafts Queued — [date]

| Channel | Urgency | Draft Purpose |
|---------|---------|---------------|
| #team3-slnt-shared | P1 | Follow-up on Australia inventory address — Avie hasn't sent it |
| Elaine DM | P2 | Answer on FBA pack group issue |

## Skipped
| Channel | Reason |
|---------|--------|
| #team3-swim-slipstream | Resolved in thread |
| #team3-sziro-shared | Already tracked — drafted 2026-05-12, re-evaluation in 1 day |

## Images Not Read
| Channel | Note |
|---------|------|
| #team3-swim-slipstream-shared | 6 screenshots from Joshua — draft may be missing context |

X draft(s) queued. Review in Slack Drafts & Sent before sending.
```

---

### Step 8 — Brand Brain Update Flags

After completing the summary, scan for any information from today's channels that contradicts or updates a brand brain. Flag these — do not auto-update files.

```
## Brand Brain Updates to Consider

- slnt.md: Disbursement hold is resolved (confirmed May 7). Remove from Active Issues.
- swim-slipstream.md: Premium A+ unlocked May 12 — update status from "pending" to "active."
```

**On scheduled runs:** After surfacing these flags in the summary, send them directly to Barcus via Slack DM so they are not lost in an unreviewed session log:

```
slack_send_message(
  channel_id="U0AQCP0CJMP",
  message="[slack-draft-composer] Brand brain flags from today's run:\n\n- slnt.md: ...\n- swim-slipstream.md: ...\n\nUpdate the files at ~/Documents/SlackResponder/brand-brains/ when ready."
)
```

Only send this DM if there are actual flags to report. Do not send an empty notification.

---

### Step 9 — Update Run Log

After every run, write the updated run log back to `/Users/barcus/Documents/SlackResponder/run-log.md`.

**Updates to make:**

1. **Open Items** — For each draft created:
   - If the issue is already in Open Items, update `Last Drafted` and increment `Draft Count`
   - If it's a new issue, add a new row with today's date, channel, one-line issue description, today as `Last Drafted`, Draft Count = 1

2. **Brand Brain Flags** — Add any new flags to the Brand Brain Flags table with status "Pending"

3. **Run History** — Append a new row:
   - Date, mode, number of drafts created, number of new open items added, any notable notes

**Do not remove rows from Open Items or Resolved Items** — Barcus manages those manually.

**Run log file path:** `/Users/barcus/Documents/SlackResponder/run-log.md`

If the file doesn't exist, create it using the standard template structure (tables for Open Items, Reviewed Images, Brand Brain Flags, Resolved Items, Run History).

---

## Business Context

- Amazon agency (The Amazon Whisperer) managing: Drink HYQ, Kayara Labs, Lulu Roses, SLNT (Silent Pocket), Swim Slipstream, Sziro Jewelry
- Core services: PPC advertising, listing optimization, SEO, inventory management
- Team: Alex Paynter (account lead), Elaine de Ramos (SEO/catalog), Jho Eugenio (PPC), Roi-Dan Bacierto, John Eurie Torralba
- Barcus Slack user ID: U0AQCP0CJMP

If the user provides instructions at invocation time, honor those as overrides to everything above.

---

## Scheduled Run Behavior

When running on schedule (not triggered by direct request):
- Mode: `full run`
- Time window: last 24 hours
- Triage order: starred → DMs → mentions → general
- Maximum 5 drafts per run
- Always complete Step 0 (run log) and Step 1 (brand brains) before any channel reading
- Always complete the context build step (Step 3) before drafting
- Output the summary report and brand brain update flags
- Send brand brain flags as Slack DM to Barcus if any exist
- Always complete Step 9 (update run log) as the final action
