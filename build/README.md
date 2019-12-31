# build dependencies

This is a very basic implementation (read: rudimentary) of npm and gulp to build and install the required packages.

## Running the build

With `npm` and `gulp` installed, this will build and install the `bootstrap` css with the the theme applied, install
the `bootstrap` bundled javascript, install the `fontawesome` icons and install `chosen.js`.

```bash
cd build
npm install
gulp
```

## TODO

* figure out `jquery`
* combine css and js into one big ugly file for each
