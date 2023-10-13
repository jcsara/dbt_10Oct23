WITH analyses_full_moon_reviews_sentiment AS ( 
    SELECT * FROM {{ ref('full_moon_reviews') }} )
SELECT
 is_full_moon,
 review_sentiment,
 COUNT(*) as reviews
FROM
 analyses_full_moon_reviews_sentiment
 GROUP BY
 is_full_moon,
 review_sentiment
ORDER BY
 is_full_moon,
 review_sentiment