# GitHub Education Student URL Generator (with OpenSSL)

If your school is part of [GitHub Education](https://education.github.com/), you will need to generate URLs for them to access benefits.

[@damaneice](https://github.com/damaneice) has provided [a Gist](https://gist.github.com/damaneice/a2aa8b19e698876ed37626a6b7b861ff) how to generate these URLs, but unfortunately, the code examples are only in Ruby, Java and Python.

In case you have `openssl` installed and would like to generate the URL from the command line, here's a shell script that will take a `student_id` as an argument.

## Usage

1. Clone this repository
2. Copy `.env.example` to a new file called `.env` and fill in the values
3. Run `./generate.sh STUDENT_ID` with your student ID

You will receive a string in the following format:

```
https://education.github.com/student/verify?school_id=YOUR_SCHOOL_ID&student_id=STUDENT_ID&signature=GENERATED_SIGNATURE
```

## Screenshot

<img src="https://raw.githubusercontent.com/upleveled/github-education-student-url-openssl/master/screenshot.png" alt="Screenshot showing usage of the tool" />
