-- ============================================================================
-- 10_ALERTS_NOTIFICATIONS.SQL — Alerts for Nickel Trading & Market Intelligence
-- ============================================================================
USE DATABASE NICKEL_TRADING;
USE SCHEMA APP;

-- Notification integration (email)
CREATE OR REPLACE NOTIFICATION INTEGRATION aws_indonesia_mining_nickel_trading_EMAIL_INT
  TYPE = EMAIL
  ENABLED = TRUE
  ALLOWED_RECIPIENTS = ('<YOUR_EMAIL>');

-- Alert: POSITION_LIMIT_ALERT
CREATE OR REPLACE ALERT APP.POSITION_LIMIT_ALERT
  WAREHOUSE = NI_TRADING_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'Nickel position exceeds approved risk limit'
IF (EXISTS (
  SELECT 1 FROM CURATED.POSITION_BOOK
  WHERE 1=1 -- Condition: Net position exceeds approved risk limit
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_indonesia_mining_nickel_trading_EMAIL_INT',
    '<YOUR_EMAIL>',
    '[ALERT] Nickel Trading & Market Intelligence: Nickel position exceeds approved risk limit',
    'Nickel position exceeds approved risk limit'
  );

ALTER ALERT APP.POSITION_LIMIT_ALERT RESUME;

-- Alert: PRICE_THRESHOLD_ALERT
CREATE OR REPLACE ALERT APP.PRICE_THRESHOLD_ALERT
  WAREHOUSE = NI_TRADING_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'LME nickel price at extreme threshold — review hedges'
IF (EXISTS (
  SELECT 1 FROM CURATED.POSITION_BOOK
  WHERE 1=1 -- Condition: LME 3-month nickel drops below US$15,000/t or rises above US$22,000/t
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_indonesia_mining_nickel_trading_EMAIL_INT',
    '<YOUR_EMAIL>',
    '[ALERT] Nickel Trading & Market Intelligence: LME nickel price at extreme threshold — review hedges',
    'LME nickel price at extreme threshold — review hedges'
  );

ALTER ALERT APP.PRICE_THRESHOLD_ALERT RESUME;

