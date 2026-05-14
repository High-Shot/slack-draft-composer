# SlackResponder Project

This folder is the persistent storage and context layer for the `slack-draft-composer` Cowork skill. It keeps brand brain files alive across plugin reinstalls and Cowork resets.

---

## What This Folder Is

- **Brand brains:** `brand-brains/` — one `.md` file per client brand, plus `amazon-core.md` as a shared knowledge base
- **Run log:** `run-log.md` — persistent memory across skill runs. Tracks open items, reviewed images, brand brain flags, and run history. The skill reads and writes this automatically.
- **Purpose:** The slack-draft-composer skill reads these files before composing any Slack draft, so messages reference real contacts, active issues, and correct tone

---

## Agency Context

**Agency:** The Amazon Whisperer
**Owner:** Barcus

**Brands under management:**

| Brand | Scope | Status |
|---|---|---|
| Drink HYQ | PPC only | Active — discovery phase |
| Kayara Labs | Full-service | Paused — awaiting cGMP cert |
| Lulu Roses | TBD | New — onboarding April 2026 |
| SLNT (Silent Pocket) | Full-service | Active — 5 open fires |
| Swim Slipstream | Full-service | Active — Premium A+ just unlocked |
| Sziro Jewelry | Full-service | Active — SEO rewrite in progress, PPC paused |

**Team:**
- Alex Paynter — account lead
- Elaine de Ramos — SEO / catalog
- Jho Eugenio — PPC
- Roi-Dan Bacierto — operations
- John Eurie Torralba — operations

---

## Brand Brain Files

| File | Brand |
|---|---|
| `brand-brains/drink-hyq.md` | Drink HYQ |
| `brand-brains/kayara-labs.md` | Kayara Labs |
| `brand-brains/lulu-roses.md` | Lulu Roses |
| `brand-brains/slnt.md` | SLNT / Silent Pocket |
| `brand-brains/swim-slipstream.md` | Swim Slipstream |
| `brand-brains/sziro-jewelry.md` | Sziro Jewelry |
| `brand-brains/amazon-core.md` | Shared agency knowledge base |

---

## Run Log — How It Works

The skill reads `run-log.md` at the start of every run and writes back to it at the end.

**What it tracks:**
- **Open Items** — issues the skill has drafted about, with date first flagged and date last drafted. Prevents re-drafting the same issue every day.
- **Reviewed Images** — Slack images you've manually reviewed. Prevents the skill from flagging the same unreadable image every run.
- **Brand Brain Flags** — pending updates to brand brain files surfaced by the skill.
- **Resolved Items** — items you've marked as handled. The skill ignores these permanently.
- **Run History** — log of every run with draft count and notes.

**How to mark something resolved:**
Copy the row from "Open Items" to "Resolved Items" and add a resolution note. The skill will stop tracking it.

**How to mark an image as reviewed:**
Add a row to "Reviewed Images" with the channel and a description. The skill will stop flagging it.

**On scheduled runs:** the skill also DMs Barcus (U0AQCP0CJMP) directly with any brand brain update flags so they aren't lost in an unreviewed session log.

---

## How to Update a Brand Brain

1. Open the relevant file in `brand-brains/`
2. Edit the Active Issues, Current Status, or any other section
3. Save — changes take effect on the next skill run, no reinstall needed

## How to Add a New Brand

1. Create `brand-brains/<brand-name>.md` using the same format as existing files
2. Add the channel mapping row to the slack-draft-composer `SKILL.md`
3. That's it

---

## Skill Location

The skill itself lives in the Cowork plugin directory (temp). The brand brain path it reads from:

**Primary:** `/Users/barcus/Documents/SlackResponder/brand-brains/`
**Fallback:** relative `brand-brains/` next to the skill file

---

## Session Notes

- Connect this folder at the start of any session where you're updating brand brains or maintaining the skill
- The slack-draft-composer runs on a weekday morning schedule — brand brain updates made here are picked up automatically on the next run
