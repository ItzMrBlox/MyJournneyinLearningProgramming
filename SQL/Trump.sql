SELECT 
	COUNT(CASE WHEN software LIKE '%iPhone%' THEN 1 END) "Tweets from iPhone",
	COUNT(CASE WHEN software LIKE '%Android%' THEN 1 END) "Tweets from Android",
	COUNT(CASE WHEN software LIKE '%Web Client%' THEN 1 END) "Tweets from Web Client",
	COUNT(CASE WHEN software NOT LIKE '%Web Client%' AND software NOT LIKE '%iPhone%' AND software NOT LIKE '%Android%' THEN 1 END) "Tweets from other Platforms"
FROM tt2