-- ============================================================================
-- 03_STAGING.SQL — Generate synthetic data for Nickel Trading & Market Intelligence
-- Country: INDONESIA | Currency: IDR
-- ============================================================================
USE DATABASE NICKEL_TRADING;
USE SCHEMA RAW;

-- Data generation scripts are demo-specific.
-- See the handcrafted SQL in the aws-malaysia-semiconductor-yield demo for
-- the full pattern: GENERATOR + UNIFORM + LATERAL for distribution,
-- Cortex Complete for text generation, engineered key demo numbers.

-- Target row counts:
-- TRADES: 8,000 rows — Physical and LME derivative nickel trades with counterparty and pricing
-- MARKET_PRICES: 300,000 rows — LME 3-month nickel, cash settlement, and physical premiums globally
-- SUPPLY_DEMAND: 5,000 rows — Global nickel supply-demand balance by region and end-use sector
-- POSITIONS: 3,000 rows — Net position by product, delivery month, and counterparty
-- MARKET_RESEARCH: 250 rows — Broker reports, analyst notes, government policy papers, and industry research
-- BUYER_CONTRACTS: 100 rows — Long-term offtake agreements with pricing formulas and volume commitments
