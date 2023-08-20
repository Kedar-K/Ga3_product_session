CREATE OR REPLACE TABLE
  `burger-builder-39571.GA3_sessions.ga_raw_sessions` AS
SELECT
  *
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_20170314`
  -- where fullVisitorId="7008752300953945943"