module venv

import os

// getenv_string returns the env var as string
pub fn getenv_string(key string) string {
	return os.getenv(key)
}

// getenv_int returns the env var as int
pub fn getenv_int(key string) int {
	return os.getenv(key).int()
}

// getenv_bool returns the env var as bool
pub fn getenv_bool(key string) bool {
	return os.getenv(key).bool()
}

// getenv_float returns the env var as float
pub fn getenv_float(key string) f64 {
	return os.getenv(key).f64()
}
