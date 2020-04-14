const fs = require('fs');
const crypto = require('crypto');

let studentId = process.argv[2];
let schoolId;
let secretKey;

const env = fs.readFileSync('./.env', 'utf8');

env.split('\n').forEach((line) => {
  const [key, value] = line.split('=');
  if (key === 'school_id') {
    schoolId = value;
  } else if (key === 'secret_key') {
    secretKey = value;
  }
});

const signature = crypto
  .createHmac('sha256', secretKey)
  .update(`${schoolId}${studentId}`)
  .digest('hex');

console.log(
  `https://education.github.com/student/verify?school_id=${schoolId}&student_id=${studentId}&signature=${signature}`,
);
