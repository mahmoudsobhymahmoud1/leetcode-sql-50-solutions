/*
Problem: 610_Triangle_Judgement
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select x,y,z,
x<y+z and y<x+z and z<x+y,'Yes','No')as triangle
from Triangle