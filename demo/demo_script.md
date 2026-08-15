# Demo Script: Nickel Trading & Market Intelligence
## ~4-Minute Recorded Walkthrough
**Format**: Screen recording with voiceover
**Target**: Customer meeting / booth loop / social share
**Narrative**: "Snowflake delivers nickel trading intelligence — Dynamic Tables maintain real-time position books, ML.FORECAST projects LME prices, and Cortex AI synthesizes global market intelligence from 250+ reports"
**Demo Mode**: Open app with `?demo=true` for presenter notes

---

## Two Personas

| Persona | Role | Tool | What they care about |
|---|---|---|---|
| **Ricky Tan** | Head of Nickel Trading | React App (SPCS) | LME price risk, position exposure, hedging strategy, buyer contracts, export policy changes |
| **Amelia Tanoto** | Market Research Analyst | Amazon QuickSight | Supply-demand balance, Chinese demand signals, battery sector growth, competitor capacity additions |

---

## What's Built

| Layer | Component | Detail |
|---|---|---|
| **RAW** | 6 tables | TRADES (8000), MARKET_PRICES (300000), SUPPLY_DEMAND (5000), POSITIONS (3000), MARKET_RESEARCH (250), BUYER_CONTRACTS (100) |
| **CURATED** | 4 Dynamic Tables | POSITION_BOOK, FORWARD_CURVE, SUPPLY_DEMAND_BALANCE, CONTRACT_EXPOSURE |
| **ML** | ML.FORECAST | Forecasting + anomaly detection |
| **AI** | COMPLETE, SUMMARIZE, AI_EXTRACT | Classification + extraction |
| **Search** | Cortex Search | 250 documents indexed |
| **Agent** | NICKEL_TRADING_AGENT | Semantic View + Search tools |


---

## The Story

An Indonesian nickel producer manages US$4.2 billion in annual sales across physical offtake and LME derivative positions. With 8,500 tonnes net long, volatile LME prices, and Indonesian export policy uncertainty, the Head of Trading needs real-time position visibility and AI-synthesized market intelligence — not end-of-day spreadsheets and PDF broker reports.

---

## Script

### [0:00–0:45] TRADING OVERVIEW

**Show**: Trading Overview tab

> "Net long 8,500 tonnes nickel — mark-to-market gain of Rp 42 billion at current LME prices."

**Action**: Point at net position and MTM KPI

### [0:45–1:30] MARKET INTELLIGENCE

**Show**: Market Intelligence tab

> "ML.FORECAST projects LME nickel rising to US$18,200/t in Q2 — demand from EV battery sector."

**Action**: Show ML price forecast with confidence bands

### [1:30–2:15] CONTRACT RISK

**Show**: Contract Risk tab

> "100 buyer contracts with pricing formulas linked to LME, premiums, and Indonesian HPM reference."

**Action**: Show contract exposure by price scenario

### [2:15–3:00] ASK AI

**Show**: Ask AI tab

> "Ricky asks: 'What's the LME nickel price forecast for next quarter?'"

**Action**: Type price forecast question

### [3:00–3:45] ARCHITECTURE & DATA

**Show**: Architecture & Data tab

> "Six Snowflake capabilities, six AWS services in the dual-build architecture."

**Action**: Walk through architecture diagram


---

## Key Demo Differentiators

1. **ML.FORECAST on LME nickel prices** — Only demo using ML.FORECAST for base metal commodity price prediction
2. **Real-time position book via Dynamic Tables** — Only demo maintaining live nickel trading positions with mark-to-market
3. **250 market research documents searchable** — Cortex Search on broker reports and policy papers for instant market intelligence
4. **Indonesian export policy scenario analysis** — Models impact of Indonesian nickel export policies on contract exposure
5. **Indonesian nickel trading context** — US$33B industry with LME hedging, HPM reference pricing, and policy uncertainty


---

## Demo Prep Checklist

### Data Verification
- [ ] `SELECT COUNT(*) FROM NICKEL_TRADING.RAW.TRADES` → 8000
- [ ] `SELECT COUNT(*) FROM NICKEL_TRADING.RAW.MARKET_PRICES` → 300000
- [ ] `SELECT COUNT(*) FROM NICKEL_TRADING.RAW.SUPPLY_DEMAND` → 5000

### ML Model Verification
- [ ] `SELECT COUNT(*) FROM NICKEL_TRADING.ML.LME_NICKEL_FORECAST_RESULTS` → >0

### AI/Agent Verification
- [ ] `SELECT COUNT(*) FROM NICKEL_TRADING.AI.DOC_EXTRACT_RESULTS` → 250
- [ ] `SELECT COUNT(*) FROM NICKEL_TRADING.AI.MARKET_COMMENTARY` → >0

