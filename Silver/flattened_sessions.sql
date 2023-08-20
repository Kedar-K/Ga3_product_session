SELECT
  date,
  "" AS channel,
  COALESCE(totals.newVisits, 0) AS is_new_visitor,
  ga.visitNumber AS visitNumber,
  trafficSource.source AS utm_source,
  trafficSource.medium AS utm_medium,
  trafficSource.campaign AS utm_campaign,
  trafficSource.adContent AS utm_content,
  trafficSource.keyword AS utm_term,
  LOWER(device.operatingSystem) AS platform,
  LOWER(device.operatingSystem) AS operatingSystem,
  device.deviceCategory AS deviceCategory,
  ga.fullVisitorId AS fullVisitorId,
  visitStartTime,
  COALESCE(totals.visits, 0) AS visits,
  COALESCE(totals.transactions, 0) AS transactions,
  COALESCE(totals.screenviews, 0) AS screenviews,
  COALESCE(totals.timeOnScreen, 0) AS timeOnScreen,
  h.page.pageTitle,
  h.page.pagePath,
  h.page.pagePathLevel1,
  h.page.pagePathLevel2,
  h.page.pagePathLevel3,
  h.page.pagePathLevel4,
  geoNetwork.country,
  MAX(h.time)/1000 SessionTime
FROM
  `burger-builder-39571.GA3_sessions.ga_raw_sessions` ga,
  UNNEST(hits) h
GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25
ORDER BY
  26 DESC
  -- limit 10