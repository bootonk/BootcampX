SELECT sum(duration) as total_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';
-- assignment_submissions.duration,, students.id = assignment_submissions.student_id