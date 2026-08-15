-- ============================================================================
-- 05_SEARCH.SQL — Cortex Search for Nickel Trading & Market Intelligence
-- ============================================================================
USE DATABASE NICKEL_TRADING;
USE SCHEMA SEARCH;

CREATE OR REPLACE CORTEX SEARCH SERVICE SEARCH.MARKET_RESEARCH_SEARCH
  ON CONTENT
  ATTRIBUTES SOURCE, DOC_TYPE, REGION
  WAREHOUSE = NI_TRADING_WH
  TARGET_LAG = '1 hour'
AS (
  SELECT * FROM RAW.MARKET_RESEARCH
);
