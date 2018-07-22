import os
import json
# welcome message
echo ""
echo "Welcome to Bluffy"
echo "A CLI for generating fake JSON data"
echo ""

# writeFile("meow.json", $(%* {"foo": "bar"}))
var
    jsonSchema: string = ""
    jsonFields: string = ""
    fieldsMatchSchema: bool = false



while not fieldsMatchSchema:
    echo "On a single line, define a JSON schema for your data (default is {}):"
    jsonSchema = readLine(stdin)
    while jsonSchema == "":
        # default to empty JSON object
        jsonSchema = $(%*"{}")


    echo "On a single line, define JSON fields based on schema (default is {}):"
    jsonFields = readLine(stdin)
    while jsonFields == "":
        # default to empty JSON object
        jsonFields = $(%*"{}")
    #[
        This is where JSON schema validation will take place
        Refer: https://github.com/PMunch/jsonschema
        if jsonSchema == jsonFields:
            echo "JSON fields match the schema"
            fieldsMatchSchema = true
        else:
            echo "JSON fields did not match the schema"
    ]#
    fieldsMatchSchema = true

echo "Choose a file name:"
var filename = readLine(stdin)
while filename == "":
    echo "You must choose a file name"
    filename = readLine(stdin)

filename.add(".json")

# write JSON to file
writeFile(filename, $(pretty(%* parseJSON(jsonFields), 2)))


#[
    Todos:
        create styledEcho for errors, info/notifaction/ success message
        (stdout.write for all other interactions)
        add json schema validator
]#