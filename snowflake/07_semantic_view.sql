-- ============================================================================
-- 07_SEMANTIC_VIEW.SQL — Semantic View for Nickel Trading & Market Intelligence
-- ============================================================================
USE DATABASE NICKEL_TRADING;
USE SCHEMA APP;

CREATE OR REPLACE SEMANTIC VIEW APP.NICKEL_TRADING_ANALYTICS
  COMMENT = 'Nickel trading positions, pricing, supply-demand, and market intelligence analytics'
AS
  TABLES (
    CURATED.POSITION_BOOK AS position_book,CURATED.FORWARD_CURVE AS forward_curve,CURATED.SUPPLY_DEMAND_BALANCE AS supply_demand_balance,CURATED.CONTRACT_EXPOSURE AS contract_exposure
  );
