-- Generated from generator/demo_specs/aws-indonesia-mining-nickel-trading.json
-- Regenerate with: python3 generator/gen_repo_docs.py aws-indonesia-mining-nickel-trading
-- This is the schema that is actually deployed for ID_MINING_NICKEL_TRADING.

-- ID_MINING_NICKEL_TRADING  (Nickel Trading & Market Intelligence)
-- generated from generator/demo_specs/aws-indonesia-mining-nickel-trading.json - do not hand-edit
CREATE DATABASE IF NOT EXISTS ID_MINING_NICKEL_TRADING;
CREATE SCHEMA IF NOT EXISTS ID_MINING_NICKEL_TRADING.RAW;
CREATE SCHEMA IF NOT EXISTS ID_MINING_NICKEL_TRADING.CURATED;
CREATE SCHEMA IF NOT EXISTS ID_MINING_NICKEL_TRADING.APP;
USE DATABASE ID_MINING_NICKEL_TRADING;

-- 5 real regions; entity names carry their region so the two always agree
