#!/bin/bash

git init
echo "*.pyc" >> .gitignore
git add .
git commit -m "first commit"

mkdir -p .vscode/

vscode_debug_python_script=$(
cat <<EOF
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python: Attach",
            "type": "python",
            "request": "attach",
            "connect": {
                "host": "localhost",
                "port": 5678,
            }
        }
    ]
}

EOF
)

echo "$vscode_debug_python_script" > .vscode/launch.json