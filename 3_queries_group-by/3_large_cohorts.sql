SELECT cohorts.name, count(students.cohort_id) as student_count
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.id
HAVING count(students.cohort_id) >= 18
ORDER BY student_count;

-- students.cohort_id
-- cohorts.id, cohorts.name