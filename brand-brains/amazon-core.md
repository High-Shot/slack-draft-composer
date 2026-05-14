# Amazon Core Knowledge Base

> Shared reference for The Amazon Whisperer agency. All brand brains pull from this file.
> Covers: how Amazon works, PPC, SEO, account health, compliance, catalog, fulfillment, logistics, and common client questions.

---

## How Amazon Works — The Fundamentals

Understanding this prevents bad strategy decisions and bad client conversations.

### Amazon is a Search Engine First
Customers search → Amazon ranks results → Sales go to whoever ranks highest and converts best. That's the whole game. Everything — PPC, SEO, pricing, reviews — feeds into rank and conversion.

### The Flywheel
Sales → Reviews → Rank → More traffic → More sales. Getting the flywheel spinning is the hard part. Once it's moving, it compounds. This is why launch phase spend is high and why you don't cut ads too early.

### How Organic Rank Works
Amazon's A9/A10 algorithm ranks listings based on:
- **Sales velocity** — how many units sold recently (most important)
- **Conversion rate** — what % of visitors buy
- **Relevance** — do your title/bullets/backend match what the customer searched
- **Price competitiveness** — are you priced to win the buy box
- **Reviews** — volume and rating impact click-through and conversion
- **In-stock rate** — going out of stock tanks rank and is hard to recover from

PPC accelerates rank by driving sales on target keywords. Organic rank follows.

### The Buy Box
Most sales go through the Buy Box (the "Add to Cart" button). If you're the only seller, you own it. If there are 3P sellers, Amazon rotates it based on price, fulfillment method, and seller metrics. FBA sellers win the buy box more often than FBM. Losing the buy box = losing most of your sales.

### FBA vs FBM — the Real Tradeoff
FBA wins the buy box more easily and gets Prime badge automatically. FBM gives you control but requires fast, reliable shipping. For hazmat products (batteries, chemicals), FBA is restricted and FBM is the only option.

---

## PPC — Advertising Fundamentals

### Campaign Types
- **Sponsored Products (SP):** Most common. ASIN-level targeting. CPC. Best for driving sales and rankings.
- **Sponsored Brands (SB):** Brand-level. Headline + logo + 3 ASINs. Requires Brand Registry. Shows at top of search — high visibility.
- **Sponsored Display (SD):** Retargeting and audience targeting. On and off Amazon. Best for high-consideration products with long purchase cycles.
- **Sponsored Brand Video (SBV):** Auto-play video in search results. High CTR when video is strong and relevant.
- **DSP:** Programmatic. Not self-serve. Used for large budgets, retargeting, awareness at scale.

### Match Types
- **Exact:** Bid on specific keyword only. Highest precision, lowest volume.
- **Phrase:** Keyword as part of search query. Balanced precision and reach.
- **Broad:** Loosest match. Used for discovery. Watch search term reports closely.
- **Auto:** Amazon chooses targeting. Good for keyword harvesting. Run alongside manual.

### Key Metrics
| Metric | Definition | Target |
|---|---|---|
| ACOS | Ad Cost of Sales = Ad Spend / Ad Revenue | Category-dependent (see below) |
| TACoS | Total ACOS = Ad Spend / Total Revenue | Track trend over time |
| ROAS | Revenue / Ad Spend | Inverse of ACOS |
| CTR | Click-through rate | >0.3% acceptable; >0.5% good |
| CVR | Conversion rate | Category average varies; watch trends |
| CPC | Cost per click | Depends on keyword competitiveness |

### ACOS Benchmarks by Phase
- **Discovery / Launch:** 100–200%+ acceptable — you're buying data
- **Growth:** 40–80% — optimizing toward profitability
- **Mature:** 20–40% — defending position, maintaining efficiency
- **Branded keywords:** Should be lowest ACOS; protect at all costs

### TACoS Targets
- Under 10%: Highly efficient; may be under-investing
- 10–20%: Healthy growth phase
- 20–30%: Aggressive scaling; acceptable if growing fast
- Above 30%: Review spend allocation and organic velocity

### Campaign Structure Best Practices
- Separate auto and manual campaigns
- Separate match types across campaigns (exact / phrase / broad in own campaigns)
- One primary ASIN per ad group for granular control
- Negative match competitors' brands in your brand campaigns
- Negative match your brand in non-brand campaigns (keep data clean)
- Weekly bid reviews; monthly restructures if needed

### Budget Scaling Rules
- Don't scale until ACOS is trending down
- Scale in 20–30% increments; watch impression share and rank
- Dayparting: adjust budgets by time of day if conversion data supports it
- Pre-event ramp: increase budgets 2–4 weeks before Prime Day, Black Friday

### Keyword Harvesting Workflow
1. Run auto campaigns for 2–4 weeks
2. Pull search term report weekly
3. Move converting terms (≥1 order, acceptable ACOS) to exact match manual
4. Negative match non-converting high-spend terms
5. Repeat

---

## Reserved / Share of Voice Advertising

This comes up constantly with clients who want to "own" their branded search terms.

### What It Is
Reserved Ads (also called Share of Voice) is a **guaranteed placement purchase** — not an auction. You pay Amazon a flat fee upfront and they lock out competitors from the Sponsored Brands top-of-search banner for your chosen keywords during the campaign period.

### What It Covers
- **Sponsored Brands top banner** — the headline ad at the very top of search results
- Your brand owns that slot 100% for the duration — no competitor can displace you there regardless of their bid

### What It Does NOT Cover
- Sponsored Products placements (still auction-based — competitors can still appear)
- Sponsored Display placements (still auction-based)
- Product listing page ad slots (separate auction)

### Cost Structure
- Flat rate based on estimated impressions
- Typical pricing: ~$6,000 for 90 days for a mid-volume brand
- Not CPC — you pay for the impression guarantee, not per click

### When to Use It
- Brand search volume is meaningful and growing
- Competitors are consistently winning Sponsored Brands placements on your brand terms
- Protecting branded search is worth the fixed cost vs. the potential lost revenue
- NOT recommended when branded search volume is low — the guarantee buys you less

### When NOT to Use It
- Brand is new with low search volume — the fixed cost won't deliver enough impressions to justify it
- Budget is better spent on non-brand discovery campaigns
- Organic rank is already dominant on brand terms

### The Honest Client Answer on "Why Can't We Just Own Our Terms?"
Unlike Google, Amazon does not offer trademark enforcement on ad bidding. Any seller can bid on your brand name in Sponsored Products and Sponsored Display — Amazon won't stop them. The only tools available are: (1) outbid them in the auction, (2) use Reserved SoV for the Sponsored Brands top banner specifically, or (3) add more branded ASINs to fill your own listing's ad slots. There is no Amazon equivalent of Google's trademark complaint process for ads.

---

## B2B Selling on Amazon — Expanded

### How B2B Works on Amazon
Amazon Business is a separate buying experience for verified business customers. They see a different storefront, can see quantity pricing tiers, and have different purchase behavior (higher AOV, more repeat purchases, purchase orders).

### B2B Pricing
Set in Seller Central → Business Pricing. You can offer:
- **Business price:** a discounted price visible only to business buyers
- **Quantity discounts:** tiered pricing (e.g., 5–9 units = 5% off, 10+ = 10% off)
Business buyers are price-sensitive on volume but less sensitive on individual unit price if the product solves a real need.

### B2B Campaigns
- No B2B targeting by default — you have to build separate campaigns
- In Sponsored Products: use "Business" audience type in targeting settings
- B2B buyers tend to search differently — more functional, less brand-aware terms
- Higher AOV means higher allowable CPC — don't apply consumer ACOS benchmarks to B2B campaigns
- B2B conversion cycle is longer — retargeting via SD is effective

### B2B Signals to Watch
- B2B Central dashboard in Seller Central shows B2B order volume, top categories, top customers (anonymized)
- A spike in B2B orders = signal to build B2B-specific campaigns and pricing
- If a large B2B order comes in (100+ units), try to identify buyer type (government, corporate, military) from any order notes

### B2B Opportunity Categories
- Privacy/security gear (SLNT)
- Industrial/safety equipment
- Office supplies
- Training equipment
- Anything with bulk use cases

---

## Ad Platform Comparison — Amazon vs Google vs Meta

Clients who run multi-channel advertising often ask why Amazon behaves differently. Here's the honest comparison.

### Intent
- **Amazon:** Purchase intent. Customers are ready to buy or very close. Highest conversion intent of any platform.
- **Google Search:** Research and purchase intent. Mix of people learning and people ready to buy.
- **Meta:** Interruption-based. Customers aren't searching — your ad appears in their feed. Lower purchase intent, higher volume, cheaper CPCs.

### Keyword/Audience Targeting
- **Amazon:** Keywords only (for SP/SB). You bid on what people search on Amazon. No interest or demographic targeting in SP campaigns.
- **Google:** Keywords + audience layers. Can combine search terms with demographics, device, location, retargeting.
- **Meta:** Audience-based. Interest targeting, lookalikes, retargeting. No keyword intent signal.

### Trademark / Brand Name Bidding
- **Google:** Offers trademark complaint process. Competitors can be blocked from bidding on your exact brand name in some cases.
- **Amazon:** No trademark enforcement on bidding. Any seller can bid on your brand terms. Only defense is outbidding them or using Reserved SoV for Sponsored Brands top banner.
- **Meta:** Brand names in ad creative are reviewed for policy compliance but competitors can still target your audience.

### Attribution and Data
- **Amazon:** 1st party purchase data — Amazon knows exactly who bought what. Brand Analytics gives you search term → purchase data. Very reliable conversion tracking.
- **Google:** Cookie-based attribution. More fragile since iOS changes. Google Ads conversion tracking requires tag installation.
- **Meta:** Relies on pixel and modeled conversions. Post-iOS 14, reported conversions are often under-counted. Meta's own data often overstates performance vs. actual revenue.

### Cost Structure
- **Amazon:** CPC auction (SP/SB/SD). Reserved flat rate for SoV. Generally higher CPCs than Google for competitive categories because buyer intent is highest.
- **Google:** CPC auction. Quality Score affects ad rank — better ads = lower CPCs. CPCs vary enormously by category.
- **Meta:** CPM-based primarily. You pay per thousand impressions. Cheaper to reach people but conversion rates are lower.

### What This Means in Practice
When a client says "why can't Amazon work like Google" — explain that Amazon's lack of trademark ad enforcement is a platform limitation, not a gap in strategy. The tools available (higher bids, Reserved SoV, additional ASINs) are the actual levers. When a client shares Google CPA data ($600/sale), use it to calibrate Amazon allowable CPC — if $600 is acceptable to acquire a customer, a $15 Amazon CPC with a 4% CVR = $375 CPA, which beats Google.

---

## FBA Logistics — Shipments and Pack Groups

### How FBA Shipments Work
1. Create shipment in Seller Central → Manage Inventory → Send to Amazon
2. Amazon generates a shipment plan — assigns your inventory to one or more fulfillment centers
3. You print labels, pack boxes to Amazon's specs, ship via your carrier or Amazon's partnered carrier

### Pack Groups — Why Amazon Splits SKUs
Amazon's algorithm automatically groups SKUs based on:
- Prep requirements (labeling, poly-bagging, bubble wrap)
- Product category and storage type (standard, oversize, hazmat)
- Destination fulfillment center routing

You cannot manually override pack group assignments. If Amazon puts SL-ESSL-01 in Pack Group 2 and you want it with SPUF-SPU1, your options are:
1. **Repack to match Amazon's grouping** (recommended — fastest resolution)
2. **Start a new shipment plan** with SKUs entered in a different order — sometimes changes the grouping, not guaranteed
3. **Open a Seller Support case** requesting manual pack group adjustment — can take several days, not guaranteed

### Box Requirements
- No side longer than 25 inches
- No box heavier than 50 lbs
- Mixed SKU cartons are allowed but not recommended — single-SKU boxes get checked in faster
- Standard eaches box size: 24x18x20 is common

### LTL Shipments
Used for large shipments (typically 150+ lbs or 6+ pallets). Requires:
- Pallet dimensions and weight
- Bill of Lading (BOL) from carrier
- Amazon-assigned shipment ID on each pallet label
- Four pallet labels per pallet (one per side)

### Hazmat / Dangerous Goods
- Batteries, flammable liquids, and similar require SDS (Safety Data Sheet) filed with Amazon
- Must be approved by Amazon's hazmat team before receiving
- Often routes to specialized hazmat fulfillment centers — separate from standard inventory

---

## SEO — Listing Optimization

### Title Structure
- Lead with primary keyword
- Include brand name (especially if registered)
- Key attributes: material, size, color, quantity, use case
- Stay under 200 characters; Amazon truncates in search results
- No promotional language ("best," "cheapest")
- No special characters unless meaningful
- No dashes to separate attributes — use commas; dashes look like AI-generated copy

### Bullet Points
- 5 bullets max on most categories
- Lead each bullet with the benefit, not the feature
- Include secondary keywords naturally — do NOT keyword stuff
- Keep each bullet under 250 characters for mobile display
- No pricing, availability, or seller info
- No prohibited terms

### Backend Search Terms
- 250 bytes total (not characters — some characters = 2 bytes)
- No repetition of words already in title/bullets
- No competitor brand names (violates policy)
- No prohibited words
- Separate with spaces, not commas
- Include misspellings and plural/singular variations

### A+ Content
- Requires Brand Registry
- Standard A+: image + text modules, up to 7 modules
- Premium A+: video, interactive, carousel, hotspots — unlocked at Brand Registry maturity (~3+ years of brand age or at Amazon's discretion)
- Increases CVR 3–10% on average per Amazon data
- Keep it benefit-focused with strong visuals
- No dashes in copy per client preference — use commas

### Indexing and Ranking
- Keywords must appear in title OR backend for indexing
- PPC clicks on a keyword boost organic rank for that term
- Sales velocity is the primary ranking signal
- Session-to-order ratio (CVR) impacts rank directly
- Vine reviews and early reviewer programs accelerate launch

---

## Account Health

### Key Metrics to Monitor Weekly
| Metric | Threshold | Action if exceeded |
|---|---|---|
| Order Defect Rate (ODR) | <1% | Immediate POA required |
| Late Shipment Rate (LSR) | <4% (FBM) | Fix fulfillment or switch to FBA |
| Pre-Fulfillment Cancellation | <2.5% (FBM) | Review inventory accuracy |
| Return Dissatisfaction Rate | <10% | Address return reasons proactively |
| Policy Violations | 0 critical | POA immediately; remove offending content |

### ODR Resolution
ODR = (Negative feedback + A-to-Z claims + Chargebacks) / Total orders

Steps if ODR exceeds 1%:
1. Identify root cause: defective products? Shipping issues? Incorrect listings?
2. Submit Plan of Action immediately
3. POA structure: Root cause → Corrective actions taken → Preventive measures
4. Monitor daily until ODR drops below 0.75%

### Policy Violations
Common violations: keyword stuffing, competitor brand names in content/backend, health claims on supplements, inaccurate product info, review manipulation.

Response process:
1. Identify the specific policy (check Account Health violation notice)
2. Remove or fix the offending content immediately
3. If listing suppressed: submit appeal with evidence of fix
4. If account at risk: submit POA through Account Health dashboard
5. Amazon typically responds within 48–72 hours

### Disbursement Holds
- Caused by: bank account changes, verification failures, compliance flags
- Resolution: Submit bank verification documents through Seller Central → Account Info → Deposit Methods → Verify
- Escalate to Seller Support if auto-process fails
- Timeline: 3–7 business days typical once documents submitted

---

## Brand Registry

### Requirements
- Active registered trademark (or pending application)
- Trademark must match brand name on Amazon
- Trademark classes must include goods being sold

### Benefits
- Brand attribution in campaigns
- A+ Content access
- Brand Stores
- Vine enrollment
- Transparency program access
- Report of violations tool

### Brand Rename Process
1. Update trademark if necessary
2. Submit brand name change via Brand Registry
3. Update all ASINs via flat file or Seller Central item edit
4. Confirm catalog reflects new brand name
5. Update PPC campaign naming
6. Monitor for suppressed listings post-rename
7. Required from client: letterhead letter with USPTO trademark, GS1 UPC certificate, handheld product photos showing new brand, new main images showing new brand, UPCs per ASIN

---

## Catalog Management

### Stranded Inventory
- Inventory in FBA warehouse with no active listing
- Fix: Manage Inventory → Stranded Inventory → resolve per ASIN
- Costs money to store — resolve within 30 days or remove

### Suppressed Listings
Causes: missing required attributes, price too high relative to history, policy violation, GTIN/UPC issues.
Fix: Manage Inventory → Suppressed → identify issue → edit → resubmit

### GTIN / UPC Compliance
- Every ASIN needs a valid GTIN unless GTIN exemption is approved
- GTIN must match GS1 database
- Jewelry and some categories have strict requirements

### Gold / Precious Metal Listings (Jewelry)
- Must include: metal type, purity, stone type and weight if applicable
- Amazon may suppress if price is algorithmically flagged
- High-value items may require additional verification

---

## Fulfillment

### FBA vs. FBM Decision
| Factor | FBA | FBM |
|---|---|---|
| Prime eligibility | Automatic | Must qualify for Seller Fulfilled Prime |
| Hazmat products | Restricted/excluded | Required for batteries, chemicals |
| Cost | Storage + fulfillment fees | Shipping + labor |
| Speed | 2-day Prime | Depends on carrier |
| Control | Low | High |

---

## Key Events Calendar

| Event | Timing | Prep window |
|---|---|---|
| Prime Day | July (2 days) | Start 4–6 weeks out |
| Back to School | July–August | 3–4 weeks out |
| Prime Big Deal Days | October | 3–4 weeks out |
| Black Friday / Cyber Monday | Late November | 4–6 weeks out |
| Holiday / Q4 | October–December | Begin October 1 |

**Prime Day prep checklist:**
- [ ] Increase ad budgets 4–6 weeks out
- [ ] Submit Lightning Deals 4–6 weeks before (Amazon deadline)
- [ ] Ensure 8–12 weeks of inventory at FBA
- [ ] Upgrade A+ content if not current
- [ ] Build promotional pricing strategy
- [ ] Set up Deal Badges if eligible
- [ ] Review and optimize top 20% of catalog by revenue

---

## Supplements — Additional Compliance

- FDA 21 CFR Part 111: GMP certification required
- Certificate of Analysis (CoA) per lot
- No disease claims (only structure/function claims)
- Supplement Facts panel must meet FDA label requirements
- Amazon may require third-party lab documentation before listing approval

---

## Common Client Misconceptions

These come up repeatedly. Know the real answer.

**"Why can't we just block competitors from bidding on our brand name?"**
Amazon doesn't offer trademark enforcement on ad bidding. Any seller can bid on your brand terms. The tools available: outbid them, use Reserved SoV for the Sponsored Brands banner, or add more branded ASINs to fill your own listing's ad slots.

**"Why is our ACOS so high?"**
ACOS being high is normal and expected in discovery/launch phase (100–200%+). The question is whether it's trending down. ACOS alone without TACoS context is misleading — if organic sales are growing, high ACOS on ads can be fine.

**"Amazon should be getting us more orders — we're getting traffic on Google/Meta."**
Off-Amazon traffic doesn't automatically convert on Amazon. Amazon customers search Amazon separately. A traffic spike on Shopify does not mean Amazon search volume went up. Brand Analytics shows Amazon-specific search data — that's the source of truth for Amazon demand.

**"Can we just raise all our bids to get more placement?"**
Raising bids increases impressions and clicks but not necessarily conversions. If the listing isn't converting (weak images, no reviews, poor title), more traffic just means more wasted spend. Fix conversion first, then scale bids.

**"Why isn't Amazon showing the strike-through price?"**
Amazon only shows a strike-through (was/now) price if the product was previously offered at the higher price on Amazon. You can't just set a list price and get the strike-through. They verify it against sales history.

**"Why can't we appear in our own listing's ad spots?"**
You need multiple ASINs to cross-promote in Sponsored Products. With only one ASIN, you can't use it to fill ad slots on your own listing page. Adding a second ASIN (even a cheaper/throttled version) solves this.

---

## Onboarding Checklist (New Brand)

- [ ] Kickoff call — capture goals, budget, timeline, contacts
- [ ] Seller Central read/write access granted
- [ ] Brand Registry access confirmed
- [ ] Audit existing listings (title, bullets, A+, backend)
- [ ] Audit existing PPC (spend, ACOS, structure, wasted spend)
- [ ] Review account health (ODR, violations, suspensions)
- [ ] Pull 90-day sales data by ASIN
- [ ] Identify top 20 ASINs by revenue
- [ ] Define 90-day priority roadmap
- [ ] Set up shared Slack channel with client
- [ ] Confirm reporting cadence (weekly KPI reports)

---

## Platform Changes — 2025–2026

Keep these updated as Amazon evolves. These are operationally relevant, not just news.

### Amazon Ads Agent (launched late 2025)
AI copilot inside the Ads Console. Can build campaigns from media plans, auto-find targeting, pace budgets, and write AMC SQL on demand. Won't replace strong PPC operators but removes manual work. Agency focus: use it for discovery and initial setup, not as a replacement for bid strategy judgment.

### Sponsored Products Video Tiles (live)
Attach 1–5 short video clips per ASIN that appear in a video tray under the SP ad image carousel. Separate bid controls for video placements. Early adopters report higher CTR and cheaper traffic without needing a new campaign type. Prioritize high-AOV and visually complex products first.

### Rufus — Amazon's AI Shopping Assistant
Rufus is Amazon's AI shopping layer. Key impact:
- Uplifted Black Friday sales ~100% for shoppers who engaged with it (Amazon's own data)
- Draws on listing content, reviews, Q&A, and images — not just keywords
- Listings need to answer questions naturally, not just keyword-stack
- Rufus prompts now surface inside Sponsored Products ad groups

### Image SEO — Visual Semantics Now Count
Amazon's systems (Rufus, Lens AI, Rekognition, COSMO) read images for product attributes, labels, and context. Clean, information-rich images are now ranking factors for both text and visual search. Implication: image quality and relevance matter for SEO, not just conversion.

### Structured Secondary Images — 10%+ CVR Lift
Experts report 10%+ conversion lifts just from curating the right six secondary images and A+ content to address buyer fears, questions, and benefits — without touching bids or budgets. Image framework: main shot → scale/size reference → feature callout → lifestyle in use → comparison or differentiation → social proof or guarantee.

### "High Price" Warning Badge (testing as of April 2026)
Amazon may now flag products priced higher than the competitive range with a visible "High Price" warning in search results. Monitor pricing competitively — this badge kills CTR. If flagged, either reprice or justify premium clearly in images.

### Amazon Antitrust — Pricing Pressure on Sellers (2026)
Unredacted emails from the FTC antitrust case revealed Amazon pressures sellers into pricing parity — flagging and suppressing listings where Amazon's price is higher than the seller's own website or other channels. This is the PPMP (Price Parity Matching Policy) operating in practice. Real-world implication: if a client prices on their DTC site lower than Amazon, Amazon may suppress their Amazon listing or remove the buy box.

### Prime Day 2026 — Moved to Late June
Amazon moved Prime Day to late June 2026, cutting the usual July preparation window. This compresses the prep timeline significantly. Adjust the standard "start 4–6 weeks out" guidance — for 2026, prep should already be underway by early June at the latest.

### Product Opportunity Explorer — Discover Unmet Demand (April 2026)
Amazon launched a "Discover Unmet Demand" feature inside Product Opportunity Explorer. Identifies high-search, low-conversion queries — signals where customer demand exists but supply (or listing quality) is failing to convert. Use this for: new product opportunities, listing gap analysis, and keyword targeting for underserved terms.

### Amazon Ads MCP Server (2026)
Amazon opened its Ads stack to AI agents via an MCP Server. Enables AI systems (including Claude) to interact directly with Amazon Ads data and operations programmatically. This is early infrastructure — expect agentic advertising tools to mature quickly.

---

## PPC — Advanced Framework: Budget vs. TACoS Mode

Each client account should run in ONE of two modes — not both simultaneously. This removes team confusion when clients request pushes.

### Budget Mode
- Client has a fixed monthly spend cap
- PPC team optimizes spend allocation within that cap
- TACoS is a reporting metric, not a constraint
- Use when: client is budget-constrained or in a scaling phase where spend is pre-approved

### TACoS Mode
- Client has a TACoS ceiling (e.g., "stay under 12%")
- PPC team adjusts spend to hit the TACoS target — budget flexes
- Use when: client is margin-focused or managing profitability tightly

### When a Client Says "Push"
Push = a temporary override on the TACoS ceiling for specific ASINs or product families (launch, overstock, velocity recovery). Process:
1. Brand manager identifies the push ASINs and rationale
2. Get explicit client confirmation on acceptable spend increase
3. Formally update the account mode or TACoS range in Asana/AdLabs
4. PPC team executes; BM monitors weekly

Never treat "push" as implied permission to ignore the account-level TACoS without formal documentation.

### PPC Cleanup Criteria
When auditing and pausing non-converting targets:
- **High-ticket accounts:** use 90-day lookback window
- **Mid/low-ticket accounts:** use 60-day lookback window
- **Skip campaigns created in the last 30 days** — not mature enough to evaluate
- Paused targets are not deleted — they can be reactivated via SQP research, DataDive/Helium10, or search term report harvest

---

## Auto Campaign Segmentation

Split auto campaigns by targeting type for cleaner data and tighter bid control:

| Auto Targeting Type | Description | Bid behavior |
|---|---|---|
| Close Match | Keywords closely related to product | Highest bid — most relevant |
| Loose Match | Broader related keywords | Lower bid — discovery |
| Substitutes | Competitor or substitute products | Mid bid — conquest testing |
| Complements | Products bought alongside yours | Lower bid — cross-sell |

Mixing all four types in one auto campaign hides performance data. Split them into separate campaigns or ad groups so bids and ACOS can be managed independently.

---

## Video — Amazon Specs and Strategy

### Format Requirements
- **Aspect ratio:** 16:9 landscape only — no vertical, no square
- **Resolution:** 1920x1080 preferred
- **Length:** 15–45 seconds performs best; under 2 minutes required for most placements
- Vertical content shot for Meta/Reels/TikTok does NOT transfer to Amazon — you need separate horizontal cuts
- Two vertical clips side-by-side (split screen) can be used as a workaround but Amazon sometimes blocks it

### Video Placement Types
- **Sponsored Brand Video (SBV):** Auto-play in search results. High CTR when video is strong and on-brand. Requires Brand Registry.
- **SP Video Tiles:** 1–5 short clips per ASIN in the SP ad tray below the image carousel. Separate bid controls. New as of late 2025.
- **A+ Content video:** Appears on the listing detail page via the A+ module. Brand Registry required.
- **Brand Store video:** Embedded in the Brand Store pages.

### Video Strategy
- Lead with the product solving the problem — first 3 seconds decide whether someone watches
- No sound assumed — motion and text overlays must carry the message
- High-AOV products benefit most: more information needed = video has higher impact on purchase decision
- For new brands with no reviews: video can partially compensate for social proof gap

---

## Reviews — Strategy and Management

### Why Reviews Are Critical
- 4.2 stars is a conversion cliff — listings below 4.2 stars convert materially worse
- Review count matters for trust: under 20 reviews = low confidence for most buyers
- Star rating affects organic rank and ad CTR

### Vine Program
- Amazon invites Vine Voices (trusted reviewers) to review free products
- Enroll per ASIN — 30 Vine reviews max per enrollment
- Best used at launch: get 20–30 reviews fast before spending on ads
- Vine reviews are honest — if the product is bad, Vine will tell you so

### Review Removal
Review removal services exist and are legitimate — they flag reviews that violate Amazon's review policies (incentivized, fake, competitor-placed, etc.). Worth engaging if listings are at or near 4.2 stars with suspicious negative review patterns.

### Asking for Reviews
Amazon's "Request a Review" button in Seller Central sends a compliant review request. Only use the official tool — third-party email sequences that explicitly ask for positive reviews violate policy.

---

## FBA Reimbursements — Unclaimed Revenue

Amazon loses and damages FBA inventory regularly. They owe reimbursements for units lost in transit, damaged at the warehouse, or destroyed without authorization. Most sellers never claim all of it.

### How to Claim
- Go to Seller Central → Reports → Fulfillment → Inventory Adjustments
- Cross-reference against shipment receipts and inventory data
- File reimbursement cases manually, or use a reimbursement service
- Typical recovery: 1–3% of FBA revenue annually for active accounts

### Third-Party Services
Reimbursement services (GETIDA, Helium 10 Refund Genie, etc.) work on a percentage-of-recovery model — no upfront cost. Worth running on any account with significant FBA volume.

---

## LTV and Customer Retention on Amazon

### Why This Is Hard
Amazon does not give sellers customer contact info. The relationship belongs to Amazon, not the brand. Sellers cannot remarket to Amazon customers through email or ads directly.

### What Is Available
- **Masked email addresses:** Amazon provides the same masked email per customer per account — consistent across all their orders. Can be used as a unique customer identifier for repeat purchase analysis.
- **Brand Analytics — Repeat Purchase Rate:** Shows what % of orders come from repeat buyers, per ASIN
- **B2B Central:** Shows B2B repeat order patterns
- **Brand Tailored Promotions:** Can target lapsed purchasers, repeat buyers, and brand followers with coupons — the closest thing to a re-engagement campaign on Amazon

### CAC Measurement on Amazon
True CAC on Amazon is hard to isolate when the brand also runs off-Amazon media. Key issue: off-Amazon ad spend (Meta, TV, Google) drives demand that converts on Amazon, but Amazon attributes the sale to its own traffic. Framework:
- Measure TACoS as the Amazon-native ad efficiency proxy
- Get off-Amazon CAC from DTC Shopify data separately
- Compare: if Amazon CPA < DTC CAC, Amazon ads are efficient; if not, reallocate
- When a client says their Google CPA is $600/sale, benchmark Amazon allowable CPC against it (a $15 CPC at 4% CVR = $375 CPA — that beats Google)

---

## Pricing Strategy — Advanced

### Amazon's Pricing Enforcement (2026)
Amazon's algorithm monitors your prices across channels. If your listing price on Amazon is higher than your own DTC site or other major marketplaces, Amazon may:
- Remove the buy box (effectively killing sales)
- Suppress the listing
- Show a "High Price" warning badge in search results

**Practical rule:** Never price Amazon higher than DTC. Parity or lower is safest.

### Gold and Precious Metal Pricing (Jewelry)
Gold prices are commodity-linked and change daily. Jewelry listings tied to gold content need to be repriced regularly — failing to do so results in listing suppression. A dormant account with 5-year-old pricing will have widespread suppression because gold prices have drastically increased. Recovery requires bulk repricing updates via flat file before any other work.

### Strike-Through (Was/Now) Pricing
Amazon only shows the strike-through price if the product was previously sold at the higher price on Amazon. You cannot set an artificial "list price" and get the badge. Amazon verifies against sales history. To legitimately earn a strike-through: sell at the full price for a period, then run a sale below it.

### Coupons and Promotions
- Coupons show as green badge in search results — visible before the click, which improves CTR
- Lightning Deals require eligibility and submission 4–6 weeks before event
- Prime Exclusive Discounts require Prime membership — only Prime members see the discount
- Deal Badges (e.g., "Limited Time Deal") show in search at no extra cost during promotion periods
