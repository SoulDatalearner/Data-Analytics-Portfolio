-- SQL Portfolio Project: Behavioral Analysis of User Mental Health Inputs
-- Target: Extract key metrics from the flattened user text data

-- TASK 1: Calculate the average word count for each emotional tag to see which users explain their feelings in more detail.
SELECT 
    User_Emotion_Tag, 
    COUNT(User_Text) AS total_user_inputs,
    ROUND(AVG(Text_Word_Count), 2) AS avg_words_per_input
FROM mental_health_metrics
GROUP BY User_Emotion_Tag
ORDER BY avg_words_per_input DESC;


-- TASK 2: Identify high-intensity users who use more than 3 words to express a specific emotional tag.
SELECT 
    User_Emotion_Tag, 
    User_Text,
    Text_Word_Count
FROM mental_health_metrics
WHERE Text_Word_Count > 3
ORDER BY Text_Word_Count DESC;