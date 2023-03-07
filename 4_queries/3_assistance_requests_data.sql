SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, assistance_requests.completed_at - assistance_requests.started_at as duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY duration;

-- teachers.id, teachers.name
-- students.id, students.name
-- assignment.id, assignment.name
-- assistance_requests.id, assistance_requests.student_id, assistance_requests.teacher_id, assistance_requests.assignment_id, assistance_requests.completed_at, assistance_requests.started_at