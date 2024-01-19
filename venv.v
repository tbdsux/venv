module venv

import os

const (
	w_dir    = os.getwd()
	env_main = '.env'
)

// Main Config the parser function
pub struct LoaderConfig {
	overwrite bool = true // custom default to true
	uppercase bool = true // convert env keys to uppercase
}

// load_env is a simple loader
pub fn load_env() {
	loader(LoaderConfig{})
}

// load_env_conf loads .env with defined configurations
pub fn load_env_conf(config LoaderConfig) {
	loader(config)
}

// loader is the main .env loader / parser
fn loader(config LoaderConfig) {
	env_path := os.join_path(venv.w_dir, venv.env_main)

	// check if .env exists in the working_dir
	if os.is_file(env_path) {
		// read each line of its content
		env_lines := os.read_lines(env_path) or { return }

		// parse each variables
		for i in env_lines {
			// defined variables should
			// be in the form VAR=value
			if i.contains('=') {
				var, value := split_slash(i)

				// set each env variable
				// .. -> get the values of `LoaderConfig`
				// .. -> automatically trim all spaces
				os.setenv(set_upper(var, config.uppercase).trim_space(), value.trim_space(),
					config.overwrite)
			}
		}
	}
}

// splites the defined variable
fn split_slash(variable string) (string, string) {
	x := variable.split('=')
	return x[0], x[1]
}

// return uppercase if upper is true
fn set_upper(x string, upper bool) string {
	if upper {
		return x.to_upper()
	}

	return x
}
