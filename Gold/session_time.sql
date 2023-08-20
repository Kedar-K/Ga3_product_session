CREATE OR REPLACE TABLE
  `burger-builder-39571.GA3_sessions.session_time` AS
SELECT
  fullVisitorId,
  pagePath,
  deviceCategory,
  country,
  SessionTime
FROM
  `burger-builder-39571.GA3_sessions.ga_flattened_sessions`
