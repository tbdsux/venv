# venv
Simple `.env` parser and loader for VLang projects.

## What it does?
Loads the variables configured from your `.env` file in your root project and adds them to the `os.environ`

## Usage
```v
import venv

import os

fn main() {
    // run first the function (overwrite should be set)
    venv.load_env(overwrite: false)
    // if you want to overwrite the variables
    // use `venv.load_env(overwrite: true)`
    // you can also just use `venv.load_env({})`
    //  this will default to true

    // you can now access your variables
    // from the `.env` file
    println(os.getenv('My_VARIABLE'))
}
```

#### &copy; TheBoringDude