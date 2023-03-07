SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
ORDER BY count(assignment_submissions.*) DESC;

-- assignment_submissions.student_id
-- cohorts.name, cohorts.id
-- students.id, students.cohort_id