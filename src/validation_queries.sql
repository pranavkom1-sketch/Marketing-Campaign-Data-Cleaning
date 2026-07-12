SELECT TOP (1000) [ Campaign ID ]
      ,[Campaign Name]
      ,[Start Date]
      ,[End Date]
      ,[Channel]
      ,[Impressions]
      ,[Clicks ]
      ,[Spend]
      ,[Conversions]
      ,[Active]
      ,[Campaign Tag]
FROM [PROJECT1].[dbo].[marketing_campaign_cleaned]

SELECT COUNT(*) AS Total_Records            -- Total records
FROM marketing_campaign_cleaned;

SELECT * FROM marketing_campaign_cleaned    -- No Income Column. Also, don't know why there's NULL values here. 
WHERE [Start Date] IS NULL;                 -- Filled them in PANDAS.

UPDATE marketing_campaign_cleaned           -- Decided to fill them here.
SET [Start Date] = '2024-01-01'
WHERE [Start Date] IS NULL;

SELECT * FROM marketing_campaign_cleaned    -- Again, no Income column. So going with Impressions column.
WHERE Impressions>50000;

SELECT AVG(Impressions) AS Average_Impressions   -- No Income column. So going with Impressions column.
FROM marketing_campaign_cleaned;

SELECT Channel,                                  -- No Education. Going with Channel
COUNT(*) AS Total_Channel
FROM marketing_campaign_cleaned
GROUP BY Channel;

SELECT TOP 10 * FROM marketing_campaign_cleaned   -- No Income. Using Channel
ORDER BY Channel DESC;