#!/usr/bin/env bash

set -euo pipefail

usage() {
	cat <<'EOF'
Usage: exercise.sh <init|submit|test>

Commands:
	init    Install dependencies and create the initial commit for this exercise.
	submit  Amend the last commit and submit the current exercise to Exercism.
	test    Run the exercise test suite.
EOF
}

if [[ $# -ne 1 ]]; then
	usage
	exit 1
fi

get_exercise_file() {
	if [[ ! -f "HELP.md" ]]; then
		echo "Error: HELP.md not found in $PWD" >&2
		exit 1
	fi

	local file_name
	file_name="$(sed -nE 's/.*`exercism submit ([^`]+\.js)` command\..*/\1/p' HELP.md | head -n 1)"

	if [[ -z "$file_name" ]]; then
		echo "Error: Could not find submit filename in HELP.md" >&2
		exit 1
	fi

	echo "$file_name"
}

case "$1" in
	init)
		exercise_file="$(get_exercise_file)"
		exercise_name="$(basename "$PWD")"
		corepack pnpm install
		git add . && git commit -m "add ${exercise_name} exercise"
		;;
	submit)
		exercise_file="$(get_exercise_file)"
		git add . && git commit --amend --no-edit
		exercism submit "$exercise_file"
		;;
	test)
		corepack pnpm test
		;;
	*)
		usage
		exit 1
		;;
esac
