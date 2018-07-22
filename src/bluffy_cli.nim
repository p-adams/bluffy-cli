
# welcome message
echo ""
echo "Welcome to Bluffy"
echo "A CLI for generating fake JSON data"
echo ""

echo "Define a JSON schema for your data"
var jsonScheme = readLine(stdin)
while jsonScheme == "":
    echo "You must define a JSON schema"
    jsonScheme = readLine(stdin)


echo "Define JSON fields based on schema"
var jsonFields = readLine(stdin)
while jsonFields == "":
    echo "You must define JSON fields"
    jsonFields = readLine(stdin)

echo "Choose a file name"
var filename = readLine(stdin)
while filename == "":
    echo "You must choose a file name"
    filename = readLine(stdin)


#[
    Todos:
        create styledEcho for errors, info/notifaction/ success message
        (stdout.write for all other interactions)
]#