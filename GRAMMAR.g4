# Parcel Language Grammar

program: statement*

statement: code_block
         | interpreter_command
         | comment

code_block: "PY{" python_code_body "}"
          | "CPP{" cpp_code_body "}"
          | "LIAR{" liar_code_body "}"

python_code_body: STRING
               | CNAME
               | NUMBER
               | python_code_body python_code_body

cpp_code_body: STRING
            | CNAME
            | NUMBER
            | cpp_code_body cpp_code_body

liar_code_body: STRING
              | CNAME
              | NUMBER
              | liar_code_body liar_code_body

interpreter_command: "CMD{" STRING "}"

comment: "#" STRING

# Example Parcel-Lang Program

let greeting be "Hello, Parcel-Lang!"

fun main() {
    print(greeting)
    
    let sum be the result of adding 5 and 10
    print("The sum is: \(sum)")
}

LIAR{
    let x be the result of multiplying 3 and 4
    print("The LIAR result is: \(x)")
}
