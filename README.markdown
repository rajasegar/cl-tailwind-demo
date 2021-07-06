# tailwind-demo

Common Lisp web application using [Tailwind CSS](https://tailwindcss.com) for styles bootstraped with [Caveman](https://github.com/fukamachi/caveman)

## Pre-requisites
You need [Node.js](https://nodejs.org) installed in your machine, since the build scripts for Tailwind CSS require the `npx` program.

## Usage
```lisp
(ql:quickload :tailwind-demo)
(tailwind-demo:start :port 3000)
```

## Installation
```
git clone https://github.com/rajasegar/cl-tailwind-demo
```

## Building CSS
There are two script files `build-css.sh` and `build-prod-css.sh` for building dev and prod env CSS assets.
Just run the respective scripts as per your env.

For development environment
```
./build-css.sh
```

For production environment
```
./build-prod-css.sh
```

## Adding custom css
Since you are using Tailwind CSS you most probably don't need any custom css, because Tailwind has got a ton of utility classes
you can directly use. But if you feel the need to add custom css, just append them to the file `src/tailwind.css`.

The build scripts will take this file, compile and produce the output css into `static/css/main.css`.


## Author

* Rajasegar Chandran

## Copyright

Copyright (c) 2021 Rajasegar Chandran

