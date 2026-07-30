SELECT tweets_per_user AS tweet_bucket,
COUNT(user_id) AS user_num
FROM(
  SELECT user_id, COUNT(tweet_id) AS tweets_per_user
  FROM tweets
  WHERE DATE_PART('year', tweet_date) = '2022'
  GROUP BY user_id) AS total_tweets
GROUP BY tweets_per_user;