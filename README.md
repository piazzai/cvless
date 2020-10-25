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

The three steps above will create a basic website structure in your local folder. For a fully functioning website, you should at least update `_config.yml` and `index.md` with your data. If you wish, you can also edit `assets/style.css` to change the accent color.

### Config

Most of the site's configuration happens in the `_config.yml` file. Below is a list of variables you can set within this file. The website's HTML uses these variables and changing them will alter the site's appearance and behavior.

Most variables are mandatory, and omitting them will break parts of the website. However, some are optional and can be omitted without consequence. To omit a variable, you can either delete the line or comment it out by writing `#` at the beginning. For example:

```yaml
organization: University of Git
#department:   Department of Jekyll
address:      123 Main St, Anytown
```

| Variable                                        | Description                                                                                                                                                 |
| ----------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `title`                                         | The title of your website, which appears in the tab of your browser and in search engine results.                                                           |
| `description`                                   | A short description of your website as it appears in search engine results. Please be aware that descriptions longer than 160 characters will be truncated. |
| `firstname`<br />`lastname`                     | Your first and last name, which appear in the website's header and copyright notice.                                                                        |
| `organization`<br />`department`<br />`address` | Three lines of contact details that appear at the top of your CV and in the website's footer. The middle one (`department`) is optional and can be omitted. |
| `office`                                        | Your office number (optional) for visiting or mailing purposes. This appears among your contact details.                                                    |
| `phone`                                         | Your phone number (optional), which also appears among your contact details                                                                                 |

### Index

### Favicon

### Printing

You can print the CV through your browser, as you would for any web page, but also through the print button that appears in the theme's footer. Depending on your browser, using this button may be the only way to access layout options, where you can remove the metadata (page title, URL, timestamp, etc.) that by default appear along the borders of the printed page.
