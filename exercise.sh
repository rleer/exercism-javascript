#!/usr/bin/env bash

set -euo pipefail

usage() {
	cat <<'EOF'
Usage: exercise.sh <init|submit>

Commands:
	init    Install dependencies and create the initial commit for this exercise.
	submit  Amend the last commit and submit the current exercise to Exercism.
EOF
}

if [[ $# -ne 1 ]]; then
	usage
	exit 1
fi

exercise_name="$(basename "$PWD")"

case "$1" in
	init)
		corepack pnpm install
		git add . && git commit -m "add ${exercise_name} exercise"
		;;
	submit)
		git add . && git commit --amend --no-edit
		exercism submit "${exercise_name}.js"
		;;
	*)
		usage
		exit 1
		;;
esac
