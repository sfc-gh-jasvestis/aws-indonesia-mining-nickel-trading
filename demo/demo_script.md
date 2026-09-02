# Nickel Trading & Market Intelligence

**Indonesia - Mining & Nickel Processing**
Use case: Commodity Trading & Market Intelligence

> Nickel commodity trading intelligence for Indonesia's US$33B nickel sector — ML.FORECAST projects LME nickel prices, Dynamic Tables maintain position books, and Cortex AI synthesizes market research.

## Why Snowflake

Snowflake delivers nickel trading intelligence — Dynamic Tables maintain real-time position books, ML.FORECAST projects LME prices, and Cortex AI synthesizes global market intelligence from 250+ reports

- **ML.FORECAST on LME nickel prices** - Only demo using ML.FORECAST for base metal commodity price prediction
- **Real-time position book via Dynamic Tables** - Only demo maintaining live nickel trading positions with mark-to-market
- **250 market research documents searchable** - Cortex Search on broker reports and policy papers for instant market intelligence
- **Indonesian export policy scenario analysis** - Models impact of Indonesian nickel export policies on contract exposure
- **Indonesian nickel trading context** - US$33B industry with LME hedging, HPM reference pricing, and policy uncertainty

## What is deployed

| | |
|---|---|
| Database | `ID_MINING_NICKEL_TRADING` |
| Service | `ID_MINING_NICKEL_TRADING_APP` |
| Compute pool | `SEA_DEMOS_INDONESIA_POOL` |
| Dimension table | `RAW.BUYER_CONTRACTS` (20 rows) |
| Fact table | `RAW.MARKET_PRICES` (250,000 rows, 90 days) |
| Curated layer | `CURATED.PERFORMANCE_SUMMARY`, `CURATED.TREND_ANALYSIS`, `CURATED.KPI_SUMMARY` |
| Currency | IDR (Rp) |

Regions in play: Jakarta, North Sumatra, Riau, East Kalimantan, Sulawesi
Segments: LME 3-Month, Cash Settlement, Physical Premium, Offtake Contract

Dynamic tables are created suspended and refreshed on demand:

```bash
./refresh_demo_data.sh ID_MINING_NICKEL_TRADING
```

## KPI cards

Every card below is served live from `CURATED.KPI_SUMMARY`. The app keeps the
original literal as a fallback, so it still renders if Snowflake is unreachable.

| Card | Value | Backed by |
|---|---|---|
| Revenue (MTD) | `US$420M` | total across Buyer Contracts |
| Avg Ni Price | `$16,840/t` | average per event |
| Contracts Active | `87` | total across Buyer Contracts |
| HPM Compliance | `100%` | average per event |
| LME Forecast (30d) | `$17,200` | average per event |
| China Premium | `+$340` | average per event |
| EV Demand Index | `↑ 12%` | average per event |


## Demo flow

1. Trading Overview
2. Market Intelligence
3. Contract Risk
4. Ask AI
5. Architecture & Data

## Talking points

- **8,500t net long** - nickel position across LME and physical
- **Rp 42B MTM** - mark-to-market gain on current positions
- **US$4.2B** - annual trading revenue
- **300,000 prices** - LME and physical market data points
- **250 reports** - broker and policy research documents searchable
- **100 contracts** - buyer offtake agreements with price formulas

## Business impact

- Indonesia's nickel exports were valued at US$33B in 2023 — largest globally (BPS Indonesia)
- LME nickel price volatility averaged 32% in 2023 — requiring sophisticated risk management (LME)
- Indonesian export policy changes have moved LME nickel by 10-15% in past episodes (Reuters)
- AI-driven commodity trading reduces position management latency by 60-80% (McKinsey Commodities)

---
Generated from `generator/demo_specs/aws-indonesia-mining-nickel-trading.json`. Do not hand-edit: run
`python3 generator/gen_repo_docs.py aws-indonesia-mining-nickel-trading` instead.
