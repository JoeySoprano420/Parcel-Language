# Parcel Language Grammar

program: statement*

statement: python_code
         | cpp_code
         | interpreter_command
         | comment

python_code: "PY{" python_code_body "}"

python_code_body: STRING
               | CNAME
               | NUMBER
               | python_code_body python_code_body

cpp_code: "CPP{" cpp_code_body "}"

cpp_code_body: STRING
            | CNAME
            | NUMBER
            | cpp_code_body cpp_code_body

interpreter_command: "CMD{" STRING "}"

comment: "#" STRING

