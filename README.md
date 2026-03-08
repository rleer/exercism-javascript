# Exercism Javascript Practice Exercises

https://exercism.org/tracks/javascript

## Initial Setup

Install Node.js and enable/install corepack (no longer available by default in newer Node.js versions)

```sh
brew install node

npm uninstall -g yarn pnpm
npm install -g corepack
```

https://exercism.org/docs/tracks/javascript/installation
https://github.com/nodejs/corepack?tab=readme-ov-file#manual-installs

## Download exercise

```sh
exercism download --exercise=hello-world --track=javascript
cd hello-world
corepack pnpm install
```

## Run tests and submit solution

```sh
corepack pnpm test
exercism submit hello-world.js
```

https://exercism.org/docs/tracks/javascript/tests

## Helper script

This repository includes `exercise.sh` to automate exercise setup and submission.

Run it from inside an exercise directory (for example `captains-log`):

```sh
../exercise.sh init
../exercise.sh submit
```

`init` runs:

```sh
corepack pnpm install
git add . && git commit -m "add <exercise-directory-name> exercise"
```

`submit` runs:

```sh
git add . && git commit --amend --no-edit
exercism submit <exercise-directory-name>.js
```
