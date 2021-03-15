module venv

import os

// this should be first
// since the test below, loads the .env
fn test_without_load_env() {
	// .env is not loaded

	assert(os.getenv('TEST_VAR') != 'my value')
}

// load env vars w/ config
// NOTE: load_env_conf tests should be first
fn test_load_env_conf() {
	// load env
	load_env_conf(overwrite: false)

	assert(os.getenv('TEST_VAR') == 'my value')
}

// do not overwrite files
fn test_load_env() {
	// load env
	load_env()

	assert(os.getenv('TEST_VAR') == 'another test var')
}