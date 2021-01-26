module venv

import os

// this should be first
// since the test below, loads the .env
fn test_without_load_env() {
	// .env is not loaded

	assert(os.getenv('TEST_VAR') != 'my value')
}

// do not overwrite files
fn test_load_env() {
	// load .env from included file
	load_env(overwrite: false)

	assert(os.getenv('TEST_VAR') == 'my value')
}

// overwrite vars
fn test_overoverwrite_load_env() {
	// set overwrite to true
	load_env(overwrite: true)

	assert(os.getenv('TEST_VAR') == 'another test var')
}