CREATE OR REPLACE TABLE
  `burger-builder-39571.GA3_sessions.page_levels` AS
SELECT
  fullVisitorId,
  pagePath,
  pagePathLevel1,
  pagePathLevel2,
  pagePathLevel3,
  pagePathLevel4,
  CASE
    WHEN LENGTH(pagePathLevel1)>0 THEN 1
  ELSE
  0
END
  AS level1_visit,
  CASE
    WHEN LENGTH(pagePathLevel2)>0 THEN 1
  ELSE
  0
END
  AS level2_visit,
  CASE
    WHEN LENGTH(pagePathLevel3)>0 THEN 1
  ELSE
  0
END
  AS level3_visit,
  CASE
    WHEN LENGTH(pagePathLevel4)>0 THEN 1
  ELSE
  0
END
  AS level4_visit,
  deviceCategory,
  country,
  SUM(visits) visits
FROM
  `burger-builder-39571.GA3_sessions.ga_flattened_sessions`
GROUP BY
  1,2,3,4,5,6,7,8,9,10,11,12
ORDER BY
  13 desc