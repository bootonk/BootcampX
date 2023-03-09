const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2];

pool.query(`
  SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort_name
  FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  WHERE cohorts.name LIKE '%${cohort}%' 
  ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(result => {
    console.log(`${result.cohort_name}: ${result.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));