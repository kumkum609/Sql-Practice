-- HackerRank: Placements solutions

SELECT Students.Name
FROM Students
INNER JOIN Friends ON Students.ID = Friends.ID
INNER JOIN Packages AS StudentPackages ON Students.ID = StudentPackages.ID
INNER JOIN Packages AS FriendPackages ON Friends.Friend_ID = FriendPackages.ID
WHERE FriendPackages.Salary > StudentPackages.Salary
ORDER BY FriendPackages.Salary;
