# reveal-highlight-themes

Version: 8.4.0

Bundles the [Highlight.js](http://highlightjs.org/) syntax themes in a form that allows easy integration in [Reveal.js](http://lab.hakim.se/reveal-js).

Reveal.js internally uses Highlight.js for syntax highlighting in code blocks, but uses a slightly different format for the CSS. This project provides the original Highlight.js themes adapted to the Reveal.js format.

## Installation

If you are using Reveal.js to create a presentation, you can include the highlight themes by running the following:

```
bower install --save reveal-highlight-themes
```

This will download the themes to your local `bower_components` directory (the default location).

You can now change the default syntax highlighting theme by adding or changing the following line in your presentation's `index.html` file:

```html
<!-- For syntax highlighting -->
<link rel="stylesheet" href="bower_components/reveal-highlight-themes/styles/monokai_sublime.css" id="highlight-theme">
```

Simply put in the name of the desired stylesheet and your presentation should now use that instead of the default *Zenburn* syntax theme.

**Note**: If you are using the [Yeoman generator for Reveal.js](https://github.com/slara/generator-reveal), you need to change the stylesheet reference in the `templates/_index.html`.

## Credits

* Highlight.js: The original syntax themes are part of the [Highlight.js](http://highlightjs.org/) project. Please see the project's [license file](https://github.com/isagalaev/highlight.js/blob/master/LICENSE) for licensing information.

## License
Copyright (c) 2014 Nils Winkler. Licensed under the MIT license.
