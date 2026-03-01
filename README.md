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
