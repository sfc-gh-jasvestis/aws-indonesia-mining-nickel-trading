-- ============================================================================
-- 08_AGENT.SQL — Cortex Agent for Nickel Trading & Market Intelligence
-- ============================================================================
USE DATABASE NICKEL_TRADING;
USE SCHEMA APP;

CREATE OR REPLACE CORTEX AGENT APP.NICKEL_TRADING_AGENT
  COMMENT = 'Nickel Trading & Market Intelligence AI Assistant'
  MODEL = 'claude-opus-4-8'
  TOOLS = (
    SEMANTIC_VIEW_TOOL(SEMANTIC_VIEW => 'NICKEL_TRADING.APP.NICKEL_TRADING_ANALYTICS'),    CORTEX_SEARCH_TOOL(CORTEX_SEARCH_SERVICE => 'NICKEL_TRADING.SEARCH.MARKET_RESEARCH_SEARCH', TOOL_DESCRIPTION => 'Search documents for Mining & Nickel Processing information')
  )
  SYSTEM_PROMPT = 'You are the Nickel Trading Intelligence Agent for an Indonesian nickel producer managing physical and derivative positions across LME and bilateral contracts, with US$4.2B annual sales revenue.';
