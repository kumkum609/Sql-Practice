-- HackerRank: Contest Leaderboard

SELECT h.hacker_id, h.name, SUM(best_score) as total_score
FROM Hackers h 
JOIN 
    (SELECT hacker_id, challenge_id,
    MAX(score) as best_score
    FROM  Submissions 
    GROUP BY hacker_id, challenge_id) s 
ON h.hacker_id = s.hacker_id
GROUP BY h.hacker_id,h.name
HAVING SUM(best_score) > 0
ORDER BY total_score DESC, h.hacker_id ASC;
