# cvless (under construction)

Cvless is a minimalist theme for static websites built with Jekyll. The theme strives for simplicity and readability by following best practices of web design, including the use of [high contrast](https://www.contrastrebellion.com), [law of proximity](https://lawsofux.com/law-of-proximity), and [responsive layout](https://responsivedesign.is). Its typography is based on the Alegreya font family, one of the 53 Fonts of the Decade selected by the _Association Typographique Internationale_ (2011).

Placing a CV with picture directly on the homepage, cvless aims to discourage wordy introductions and highlight professional achievements. Printing the homepage automatically removes some design elements in order to give the CV a more traditional (paperlike) feel. This means you no longer have to maintain a separate CV for PDF distribution.

See [my personal website](https://piazzai.github.io) to get a better sense of what the theme looks like.

### Main features

-   Alegreya superfamily (regular, italic, small caps), courtesy of [Google Fonts](https://fonts.google.com).
-   Hundreds of icons sourced from [Font Awesome](https://fontawesome.com), [Academicons](https://github.com/jpswalsh/academicons), and [Nonacademicons](https://github.com/piazzai/nonacademicons).
-   Responsive design for comfortable view on smartphones and small screens.
-   Automatic search engine optimization, including metadata and sitemap.
-   Optional integration of Google Analytics for monitoring website traffic.
-   Icon links to external profiles and social media in the footer.

## Installation

1.  Clone this repository.
2.  Rename it to `[username].github.io`.
3.  Start editing!

## Usage

The three steps above will create a basic website structure in your local folder. The file `index.md` should be edited with the content of your CV. This will be shown along with your contact details and photo on the homepage. The CV can be written in [Markdown](https://www.markdownguide.org/basic-syntax), possibly with the inclusion of HTML elements.

### Configuration

Most of the site's configuration happens in `_config.yml`. The website's HTML uses variables set within this file, so that changing these variables will affect the site's appearance and behavior.

Most variables are mandatory, and omitting them will break parts of the HTML. However, some are optional and can be omitted without consequence. This can be done by either deleting the line with the variable or commenting it out. To comment out a line, you need to write `#` at the beginning, as in the following example:

```yaml
organization: University of Git
#department:   Department of Jekyll
address:      123 Main St, Anytown
```

| Variable                                        | Description                                                                                                                                                                                                                                                                 |
| ----------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `title`                                         | The title of your website, which appears in the tab of your browser and in search engine results.                                                                                                                                                                           |
| `description`                                   | A short description of your website as it appears in search engine results. Please be aware that descriptions longer than 160 characters will be truncated.                                                                                                                 |
| `firstname`<br />`lastname`                     | Your first and last name, which appear in the website's header and copyright notice.                                                                                                                                                                                        |
| `photo`                                         | A personal picture (optional) that appears at the top of your CV. If omitted, the photo defaults to the avatar of your GitHub account.                                                                                                                                      |
| `organization`<br />`department`<br />`address` | Three lines of contact details that appear at the top of your CV and in the website's footer. The middle one (`department`) is optional and can be omitted.                                                                                                                 |
| `office`<br />`phone`                           | Your office and phone numbers (optional) for visiting or calling purposes. These appear among your contact details.                                                                                                                                                         |
| `navtext`                                       | A short text (optional) that links to an external website, or to another page of your site, and that appears in the website's header. If a link is not needed, `navtext` can be used as a short tagline that describes your job or interests, or omitted entirely.          |
| `navlink`                                       | The (optional) URL to which `navtext` should redirect in case it is a link. If this is omitted but `navtext` is not, `navtext` behaves as plain text.                                                                                                                       |
| `email`                                         | Your email address, which appears among the contact details and is linked by an envelope icon in the website's footer.                                                                                                                                                      |
| `scholar`                                       | The (optional) URL of your profile on [Google Scholar](https://scholar.google.com). If included, this is linked by a Google Scholar icon in the website's footer.                                                                                                           |
| `orcid`                                         | The (optional) URL of your profile on [ORCID](https://orcid.org). If included, this is linked by an ORCID icon in the website's footer.                                                                                                                                     |
| `lichess`                                       | Your username on [Lichess](https://lichess.org) (optional). If included, this is linked by a Lichess icon in the website's footer. Unless you are a chess nerd you will not need this, but it is there to demonstrate that you can link pretty much anything in the footer. |
| `github`                                        | Your username on GitHub. This is linked by a GitHub icon in the website's footer, and it is also used to source your CV picture. This will be the avatar of your GitHub account, unless `photo` is specified.                                                               |
| `analytics`                                     | Your [Google Analytics](https://analytics.google.com) Tracking ID (optionla). If you have an Analytics account, you can find this on the dashboard after adding your website to the list of tracked sites. If included, it will automatically enable tracking.              |
| `repo`                                          | The URL of your website's repository, which is linked in the website's footer.                                                                                                                                                                                              |

The final lines of `_config.yml` list some Jekyll plugins needed for search engine optimization. Do not modify or remove these lines.

### Accent color

By default, the accent color is set to a dark blue with HEX code `#001489`. To change this to a color of your choosing, you need to follow two steps. First, open `assets/style.css` and look for the following code chunks:

```css
a:link, a:visited {
  color: #001489;
  text-decoration: none;
}
```

```css
#titlebar:hover {
  border-bottom: .4em solid #001489;
  text-decoration: none;
}

#navbar {
  color: #001489;
  font-family: "Alegreya SC", serif;
  font-size: 1.5em;
  font-weight: 400;
  text-transform: lowercase;
}
```

You should change the HEX code in these chunks to the one corresponding to your color. You can use an [online tool](https://colorpicker.me) to find the HEX code of any color. In place of this code you can also use the name of an [HTML color](https://www.htmlcsscolor.com/html-color-names). For example:

```css
a:link, a:visited {
  color: firebrick;
  text-decoration: none;
}
```

```css
#titlebar:hover {
  border-bottom: .4em solid firebrick;
  text-decoration: none;
}

#navbar {
  color: firebrick;
  font-family: "Alegreya SC", serif;
  font-size: 1.5em;
  font-weight: 400;
  text-transform: lowercase;
}
```

### Favicon

The theme ships with a favicon consisting of the letters CV in Alegreya serif against a white square with rounded corners. This icon can be substitute for any other of your choosing by replacing `favicon.ico` in the site's root folder. [Here](https://favicon.io) is a helpful tool to create your favicon from a PNG image, from text (as in the default icon), or from an emoji. The tool delivers an icon of appropriate size.

### Icon packs

The [Font Awesome](https://fontawesome.com), [Academicons](https://github.com/jpswalsh/academicons), and [Nonacademicons](https://github.com/piazzai/nonacademicons) packs are automatically sourced by the theme. This means you can use any icon in these packs using the syntax prescribed by their documentation. For example, the following code outputs one icon from each pack, in varying sizes:

```html
<i class="fas fa-gears"></i>
<i class="ai ai-4x ai-repec"></i>
<i class="nai nai-lg nai-lichess"></i>
```

See the icon packs' instructions for full details on their usage.

### Printing

You can print the CV through your browser, as you would for any web page, but also through the print button that appears in the theme's footer. Depending on your browser, using this button may be the only way to access layout options, where you can remove the metadata (page title, URL, timestamp, etc.) that by default appear along the borders of the printed page.
