-- ============================================================================
-- 04_DYNAMIC_TABLES.SQL — Curated layer for Nickel Trading & Market Intelligence
-- ============================================================================
USE DATABASE NICKEL_TRADING;
USE SCHEMA CURATED;

-- POSITION_BOOK: Real-time net nickel position with mark-to-market P&L
-- Source: TRADES, POSITIONS, MARKET_PRICES
CREATE OR REPLACE DYNAMIC TABLE CURATED.POSITION_BOOK
  TARGET_LAG = '5 minutes'
  WAREHOUSE = NI_TRADING_WH
AS
SELECT * FROM RAW.TRADES;
-- TODO: Replace with actual join/aggregation logic per demo

-- FORWARD_CURVE: LME nickel forward curve construction from futures and premiums
-- Source: MARKET_PRICES
CREATE OR REPLACE DYNAMIC TABLE CURATED.FORWARD_CURVE
  TARGET_LAG = '5 minutes'
  WAREHOUSE = NI_TRADING_WH
AS
SELECT * FROM RAW.MARKET_PRICES;
-- TODO: Replace with actual join/aggregation logic per demo

-- SUPPLY_DEMAND_BALANCE: Global nickel supply-demand aggregation by region and sector
-- Source: SUPPLY_DEMAND
CREATE OR REPLACE DYNAMIC TABLE CURATED.SUPPLY_DEMAND_BALANCE
  TARGET_LAG = '5 minutes'
  WAREHOUSE = NI_TRADING_WH
AS
SELECT * FROM RAW.SUPPLY_DEMAND;
-- TODO: Replace with actual join/aggregation logic per demo

-- CONTRACT_EXPOSURE: Buyer contract price exposure under different LME scenarios
-- Source: BUYER_CONTRACTS, MARKET_PRICES
CREATE OR REPLACE DYNAMIC TABLE CURATED.CONTRACT_EXPOSURE
  TARGET_LAG = '5 minutes'
  WAREHOUSE = NI_TRADING_WH
AS
SELECT * FROM RAW.BUYER_CONTRACTS;
-- TODO: Replace with actual join/aggregation logic per demo

