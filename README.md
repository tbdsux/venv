# venv

Simple `.env` parser and loader for VLang projects.

## Install

```
v install TheBoringDude.venv
```

## What it does?

Loads the variables configured from your `.env` file in your root project and adds them to the `os.environ`

## Usage

```v
import theboringdude.venv

import os

fn main() {
    // run first the function
    // if you want to have some configurations, use `venv.load_env_conf(LoaderConfig)`
    venv.load_env()
    // if you want to overwrite the variables
    // use `venv.load_env(overwrite: true)`
    // you can also just use `venv.load_env({})`
    //  this will default to true

    // you can now access your variables
    // from the `.env` file
    println(os.getenv('My_VARIABLE'))
}
```

### Functions

#### `venv.load_env`

- Loads `.env` file using the default configurations.

#### `venv.load_env_conf(LoaderConfig)`

- Loads `.env` file with configurations.

  **LoaderConfig**

  ```
  pub struct LoaderConfig {
      overwrite bool = true // custom default to true
      uppercase bool = true // convert env keys to uppercase
  }
  ```

### Custom `getenv`

```v
// you can use venv's custom getenv to automatically convert vars
//  to their respective vars

println(venv.getenv_bool("BOOL")) // bool env var value
println(venv.getenv_int("NUM")) // int env var value
println(venv.getenv_float("FLOAT")) // float env var value
```

## `.env` Structure

I do not want to complicate a simple utility. It just parses the common `.env` structure like, ..

```
# this is some comment
// you can do anything
#### but if `=` is detected, the line will be parsed
HELLO=WORLD
```

#### &copy; TheBoringDude
