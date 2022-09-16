# cvless

Cvless is a theme for static websites built with Jekyll. It aims for simplicity and readability by following best practices of graphic design, such as the use of [high contrast](https://www.contrastrebellion.com), [law of proximity](https://lawsofux.com/law-of-proximity), and of course, responsive layout. Its typography is based on the [Piazzolla type system](https://piazzolla.huertatipografica.com/), which performs extremely well over a wide range of font sizes.

The main aesthetic feature of the theme is the use of [particles.js](https://vincentgarreau.com/particles.js/) to decorate the home page and the 404 page. In addition to these pages, the theme includes a well-designed CV page. Printing the CV page from browser automatically adapts the layout for a more traditional appearance. This means you no longer have to maintain a separate CV for offline distribution. Finally, the theme offers a simple and easily extensible blog.

See the [demo](https://cvless.netlify.app) to get a better sense of what the theme looks like.

![](https://github.com/piazzai/cvless/blob/master/assets/screenshot.jpg)

## Installation

1.  Clone this repository.
2.  Rename it to `[username].github.io`.
3.  Start editing!

## Usage

Configuration primarily occurs in four files. First, `_config.yml`, which contains site variables such as title, tagline, url, and repository address, as well as the author's name and email address for inclusion in blog posts. There is also a variable that specifies a photo for inclusion in the homepage. This is optional and can be removed.

Second, you should update icon links in `_includes/particles-home.html` and add/remove icons as needed. You might want to add icons that are not included by default. For more information on how to do this, see [this blog post](https://cvless.netlify.app/2022/08/01/on-the-use-of-icons/).

Third, you should customize the file `_includes/contact.html` by inputting your contact details and adding/removing lines as needed. This information is prepended to your CV. It is possible to customize the icons that appear in this file: for more information, see the blog post above.

Fourth, you might want to edit the style variables specified in `_sass/_variables.scss`. These allow you to customize the theme's color scheme and typefaces. There are many resources on the web to learn the principles of good web design. I personally recommend Matthew Butterick's [Practical Typography](https://practicaltypography.com/), which also covers [websites](https://practicaltypography.com/websites.html).

In addition to these files, you can customize favicons in the `assets` folder. For that, [favicon.io](https://favicon.io/) is an excellent tool. You can also change the particles.js configuration in `assets/json/particles-home.json`. The [particles.js homepage](https://vincentgarreau.com/particles.js/) features an interactive tool from which you can export a new configuration.

## Credits

The theme draws in one way or another from the following projects:

-   [Bootstrap](https://getbootstrap.com/)
-   [Hack](https://sourcefoundry.org/hack/)
-   [Iconoir](https://iconoir.com/)
-   [Open color](https://yeun.github.io/open-color/)
-   [Particles.js](https://vincentgarreau.com/particles.js/)
-   [Piazzolla](https://piazzolla.huertatipografica.com/)
-   [Poole](https://getpoole.com/)

## Bugs

If you find any problem using this theme, please [open an issue](https://github.com/piazzai/cvless/issues).
