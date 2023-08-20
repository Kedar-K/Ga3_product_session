CREATE OR REPLACE TABLE
  `burger-builder-39571.GA3_sessions.popular_pages` AS
SELECT
  fullVisitorId,
  pagePath,
  pageTitle,
  deviceCategory,
  country,
  SUM(visits) visits
FROM
  `burger-builder-39571.GA3_sessions.ga_flattened_sessions`
GROUP BY
  1,
  2,
  3,
  4,
  5
ORDER BY
  6 desc