module genv

import os

// this should be first
// since the test below, loads the .env
fn test_without_load_env() {
	// .env is not loaded

	assert(os.getenv('TEST_VAR') != 'my value')
}

fn test_load_env() {
	// load .env from included file
	load_env()

	assert(os.getenv('TEST_VAR') == 'my value')
}