SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02' 
ORDER BY teacher;

-- teachers.id, teachers.name
-- assistance_requests.student_id, assistance_requests.teacher_id
-- students.id, students.cohort_id
-- cohorts.id, cohorts.name