SELECT students.name as student, avg(assignment_submissions.duration) as averate_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date is NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;

-- students.name, students.id
-- assignment_submissions.duration, assignment_submissions.student_id, assignment_submissions.assignment_id
-- assignments.duration, assignments.id
