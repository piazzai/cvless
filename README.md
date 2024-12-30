# cvless

Cvless is a theme for static websites built with Jekyll. It aims for simplicity and readability by following best practices of graphic design, like the use of [high contrast](https://www.contrastrebellion.com), [law of proximity](https://lawsofux.com/law-of-proximity), and responsive layout. Its typography is based on the [Piazzolla system](https://piazzolla.huertatipografica.com/), which performs extremely well over a wide range of font sizes.

The main aesthetic feature of the theme is the use of [particles.js](https://vincentgarreau.com/particles.js/) in the home and the 404 pages. In addition, the theme includes a well-designed CV page. Printing this from browser automatically adapts the layout for a more traditional appearance, so you no longer have to maintain a separate CV for offline distribution. Finally, the theme offers a simple and easily extensible blog.

Light and dark modes are available. The theme initializes based on system preferences and stores the user's preference for the duration of the session.

See the [demo](https://piazzai.github.io/cvless) to get a better sense of what the theme looks like.

![](https://github.com/piazzai/cvless/blob/master/screenshot.png)

## Installation

The theme can be installed as usual by cloning this repository and editing the files. However, it is far more convenient to install it as a gem, in which case all the files you do not want or need to customize remain hidden from view, but will still be read and processed during build.

If you choose to install the theme as a gem, your site should include at a minimum the following files:

```bash
.
├── 404.md
├── _config.yml
├── Gemfile
├── cv.md
└── index.md
```

To install the theme, you can then add this line to your `Gemfile`:

```ruby
gem "cvless"
```

And this line to `_config.yml`:

```yaml
theme: cvless
```

The easiest way to set up a new website in this way is to clone the contents of the `demo` folder. This provides a working set of files to get you started. You can remove what you will not use, such as the contents of the `_posts` folder.

After you are done creating the basic files, run bundler:

    $ bundle

Or install the gem yourself as:

    $ gem install cvless

To customize hidden files, you can create new files with the same names and paths. For example, to change the layout of the index page, you can create a `_layouts` folder and a file `index.html` within this folder that contains your custom code. During build, Jekyll will give priority to your files over the theme's.

## Usage

Basic configuration occurs in `_config.yml`. This contains site variables such as title, tagline, url, and repository address, as well as the author's name and email address for inclusion in blog posts. You can specify the path to an avatar for inclusion in the home (optional).

More advanced configuration requires altering some files that are not included in the `demo` template and are hidden in the original theme. There are three files you might want to customize. First, you could change icon links in `_includes/particles-home.html` and add/remove icons as needed. You may add icons that are not included in the theme by default. For more information on how to do this, see [this post](https://piazzai.github.io/cvless/2022/08/01/on-the-use-of-icons/).

Second, you might want to edit the style variables specified in `_sass/_variables.scss`. These allow you to customize the theme's color scheme and typefaces. There are many resources on the web to learn the principles of good web design. I personally recommend Matthew Butterick's [Practical Typography](https://practicaltypography.com/websites.html).

In addition to these files, you can customize favicons in the `assets` folder. For that, [favicon.io](https://favicon.io/) is an excellent tool. You can also change the particles.js configurations in `assets/js/particles.json`. The [library homepage](https://vincentgarreau.com/particles.js/) features an interactive tool from which you can export a new configuration.

## Local development

The `demo` folder includes a `docker-compose.yml` file that allows you to quickly setup a container running Jekyll. If you don't already have Docker and Docker Compose installed, you can install them using the following guides:

* [Docker](https://docs.docker.com/get-docker/)
* [Docker Compose](https://docs.docker.com/compose/install/)

To start the container simply run:

```
docker-compose up
```

Alternatively, you can run the container without Docker Compose using this command on iOS/Linux:

```
docker run -p 4000:4000 -v $(pwd):/site bretfisher/jekyll-serve
```

## Credits

The theme draws in one way or another from the following projects:

-   [Bootstrap](https://getbootstrap.com/)
-   [Hack](https://sourcefoundry.org/hack/)
-   [Iconoir](https://iconoir.com/)
-   [Open Color](https://yeun.github.io/open-color/)
-   [Particles.js](https://vincentgarreau.com/particles.js/)
-   [Piazzolla](https://piazzolla.huertatipografica.com/)
-   [Poole](https://getpoole.com/)

## Bugs

If you find any problem using this theme, please [open an issue](https://github.com/piazzai/cvless/issues).
