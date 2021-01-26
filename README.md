# genv
Simple `.env` parser and loader for VLang projects.

## What it does?
Loads the variables configured from your `.env` file in your root project and adds them to the `os.environ`

## Usage
```v
import genv

import os

fn main() {
    // run first the function
    genv.load_env()

    // you can now access your variables
    // from the `.env` file
    println(os.getenv('My_VARIABLE'))
}
```

#### &copy; TheBoringDude