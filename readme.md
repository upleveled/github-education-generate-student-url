# GitHub Education Student URL Generator (with OpenSSL)

If your school is part of [GitHub Education](https://education.github.com/), you will need to generate URLs for them to access benefits.

[@damaneice](https://github.com/damaneice) has provided [a Gist](https://gist.github.com/damaneice/a2aa8b19e698876ed37626a6b7b861ff) how to generate these URLs, but the scripts are scattered through the comments and in some cases don't work out of the box.

This repository provides scripts in three languages:

1. Shell: Requires `openssl`
2. JavaScript
3. Ruby

## Usage

1. Clone this repository
2. Copy `.env.example` to a new file called `.env` and fill in the values
3. Follow the instructions for either the [shell script](#shell-script), the [JavaScript script](#javascript) or the [Ruby script](#ruby)

You will receive a string in the following format:

```
https://education.github.com/student/verify?school_id=YOUR_SCHOOL_ID&student_id=STUDENT_ID&signature=GENERATED_SIGNATURE
```

### Shell Script

Run `./generate.sh STUDENT_ID` with your student ID.

### JavaScript

Run `node index.js STUDENT_ID` with your student ID.

### Ruby

Run `ruby index.rb STUDENT_ID` with your student ID.

## Screenshot

<img src="https://raw.githubusercontent.com/upleveled/github-education-student-url-openssl/master/screenshot.png" alt="Screenshot showing usage of the tool" />
