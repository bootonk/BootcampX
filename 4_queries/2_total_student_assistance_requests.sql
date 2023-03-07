SELECT COUNT(assistance_requests.*) as total_assistances, name
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;
-- students.id, students.name
-- assistance_requests.student_id
