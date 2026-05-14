# slack-draft-composer

Scans your Slack channels for what needs attention, composes ready-to-send drafts, and queues them in Slack Drafts for your review. You never auto-send — Claude drafts, you send.

---

## What It Does

- Reads your priority channels and DMs
- Identifies unanswered questions, overdue updates, blocked work
- Drafts Slack messages tuned to the channel (client-facing vs. internal)
- Saves them as Slack drafts for your review
- Tracks open items across runs so it doesn't re-draft the same thing every day

---

## Prerequisites

1. **Cowork** installed and running
2. **slack-draft-composer plugin** installed in Cowork
3. **Slack MCP** connected in Cowork (the plugin requires it)

---

## Setup (New Team Member)

### Step 1 — Clone the repo

```bash
git clone <repo-url> ~/Documents/SlackResponder
cd ~/Documents/SlackResponder
```

### Step 2 — Install the skill

```bash
chmod +x install.sh
./install.sh
```

This copies `SKILL.md` into the Cowork plugin directory. Run this again whenever you pull updates.

### Step 3 — Create your run log

```bash
cp run-log-template.md run-log.md
```

Your `run-log.md` is personal. It tracks open items and history for your account. Never commit it.

### Step 4 — Set up your brand brains

Each brand you manage needs its own brain file. This is where the skill learns your client context.

```bash
cp brand-brains/_template.md brand-brains/your-brand-name.md
```

Open the file and fill in:
- Brand overview (category, revenue, scope)
- Key contacts (names and roles)
- Current status and active issues
- Slack channel IDs (internal + client-facing)
- Tone notes

You need one file per brand. Do not commit these — they stay local.

### Step 5 — Update SKILL.md with your channels

Open `SKILL.md` and update the **Priority Channels** table with your brand's Slack channel names and IDs.

To find a channel ID: right-click any channel in Slack → View channel details → copy the ID from the URL or details panel.

Also update the **Team DMs** section with your team members' Slack user IDs.

Your Slack user ID (for the mention search): right-click your name in Slack → View profile → copy the Member ID.

### Step 6 — Connect your folder in Cowork

When starting a Cowork session, connect `~/Documents/SlackResponder/` as your workspace folder. This lets the skill read your brand brains and run log.

### Step 7 — Run it

In Cowork, say: **"check my Slack"** or **"run slack draft composer"**

The skill will read your channels, compose drafts, and summarize what it found.

---

## Folder Structure

```
SlackResponder/
├── README.md                  ← this file
├── SKILL.md                   ← the skill (shared, update via git pull)
├── install.sh                 ← copies SKILL.md into Cowork plugin dir
├── .gitignore                 ← excludes personal files
├── run-log-template.md        ← blank run log (copy to run-log.md)
├── run-log.md                 ← YOUR run log (personal, gitignored)
└── brand-brains/
    ├── _template.md           ← blank brand brain (copy per brand)
    ├── amazon-core.md         ← shared Amazon knowledge base (shared, versioned)
    └── your-brand.md          ← YOUR brand brains (personal, gitignored)
```

---

## Getting Updates

When the skill is updated:

```bash
git pull
./install.sh
```

That's it. Your brand brains and run log are untouched.

If `amazon-core.md` was updated (new Amazon platform intel, policy changes, etc.), the pull picks that up automatically.

---

## How the Run Log Works

The skill reads `run-log.md` at the start of every run and writes back to it at the end.

**Open Items** tracks issues the skill has drafted about. If the skill drafted something less than 3 days ago, it skips re-drafting. After 3 days, it re-evaluates and drafts again if the issue is still unresolved.

**To mark something resolved:** copy the row to the "Resolved Items" table. The skill ignores resolved items permanently — no more drafts, no more flags.

**To mark an image as reviewed:** add a row to "Reviewed Images." The skill stops flagging that image.

---

## How Brand Brains Work

Each brand brain is a markdown file the skill loads before reading Slack. It gives the skill context about:
- Who the client contacts are
- What's currently active or on fire
- What tone to use (internal vs. client-facing)
- Which Slack channels belong to which brand

The skill uses this to write drafts that reference real names, real situations, and real priorities — not generic templates.

Update a brand brain any time something changes: new contact, issue resolved, strategic shift. Changes take effect on the next skill run with no reinstall needed.

---

## Run Modes

Trigger specific modes by telling Cowork:

| Mode | How to trigger | What it does |
|---|---|---|
| Full run | "check my Slack" | Triage all channels, draft up to 5 messages |
| Targeted | "check Slack for [brand]" | Focus on one brand or channel |
| Accountability scan | "what are we still waiting on from clients" | Lists unanswered asks — no drafts |

---

## Contributing Updates

If you improve a brand brain section that's relevant to everyone (a new Amazon policy, a platform change, a tactical framework), update `amazon-core.md` and submit a PR. The whole team benefits.

Do not commit your personal brand brain files — they contain client info.

---

## Troubleshooting

**Skill isn't finding my channels**
- Check the Priority Channels table in `SKILL.md` — make sure your channel IDs are correct
- Channel IDs start with `C` followed by alphanumeric characters

**Draft already exists error**
- Slack only allows one draft per channel at a time. Go to Slack Drafts, send or delete the existing draft, then re-run.

**Brand brain not loading**
- Confirm your Cowork session has `~/Documents/SlackResponder/` connected as the workspace folder
- Check that your brand brain filename matches the channel mapping table in `SKILL.md`

**SKILL.md reverted after Cowork update**
- The plugin directory gets wiped when Cowork reinstalls plugins. Run `./install.sh` again.
