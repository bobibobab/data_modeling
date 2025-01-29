# Dog Show

My project models data that someone running a work-out planner. Includes contact information about users and relevant information about the exercises.



<img src="schema.png">



## Query I thought it did well on

**Question**: What are the most popular exercises among users?

**GPT SQL Response**:
```sql
SELECT e.name, 
COUNT(ue.exercise_id) AS user_count 
FROM exercises e 
JOIN userExercises ue 
ON e.exercise_id = ue.exercise_id 
GROUP BY e.exercise_id 
ORDER BY user_count DESC;
```

**Friendly Response**: The most popular exercises are Squats with 3 users, Bench Press with 2 users, and Deadlifts with 1 user.




## Question that it tripped up on
The result of a question produced the wrong result. The SQL gave the wrong data set even though there is no user who exercises more than five.



Question: Which users perform more than 5 exercises?

**GPT SQL Response**:
```sql
SELECT u.user_id, u.name 
FROM users u 
JOIN userExercises ue ON u.user_id = ue.user_id 
GROUP BY u.user_id 
HAVING COUNT(ue.exercise_id) > 5;
```

SQL Result is just "IDs": [(1, 'Jisu Song'), (2, 'Tom Kim')]

**Friendly response**: The result is supoosed to be none because there is no user who work out more than 5. I wouled have preferred it to say something like, "we cannot find the user who has exercises more than 5."

## Conclusion
It was hard for me to understand how this code works. I tried to understand the answers that gpt provided. It was fun to create my own data model and consider how to create table to make better data tables. 
```


