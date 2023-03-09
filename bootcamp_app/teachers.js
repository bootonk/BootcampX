const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const values = [`%${cohortName}%`];

pool.query(`
  SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort_name
  FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  WHERE cohorts.name LIKE $1 
  ORDER BY teacher;
`, values)
.then(res => {
  res.rows.forEach(result => {
    console.log(`${result.cohort_name}: ${result.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));