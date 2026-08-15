-- ============================================================================
-- Nickel Trading & Market Intelligence
-- Nickel commodity trading intelligence for Indonesia's US$33B nickel sector — ML.FORECAST projects LME nickel prices, Dynamic Tables maintain position books, and Cortex AI synthesizes market research.
-- ============================================================================
USE ROLE ACCOUNTADMIN;
CREATE DATABASE IF NOT EXISTS NICKEL_TRADING;
CREATE WAREHOUSE IF NOT EXISTS NI_TRADING_WH WAREHOUSE_SIZE = 'MEDIUM' AUTO_SUSPEND = 120 AUTO_RESUME = TRUE;
USE DATABASE NICKEL_TRADING;
CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS CURATED;
CREATE SCHEMA IF NOT EXISTS ML;
CREATE SCHEMA IF NOT EXISTS AI;
CREATE SCHEMA IF NOT EXISTS SEARCH;
CREATE SCHEMA IF NOT EXISTS APP;

USE WAREHOUSE NI_TRADING_WH;
