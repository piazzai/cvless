# CVLess v1.0.0

CVLess is a minimalist theme for static websites built with Jekyll, loosely based on the [Academic](https://github.com/gaalcaras/academic) theme developed by Gabriel Alcaras. The theme strives for simplicity and readability by following best practices of web design, including the use of [high contrast](https://www.contrastrebellion.com), [law of proximity](https://lawsofux.com/law-of-proximity), and [responsive layout](https://responsivedesign.is). Its typography is based on the Alegreya typeface, one of the 53 Fonts of the Decade selected by the Association Typographique Internationale (2011).

Placing a CV with picture directly on the homepage, CVLess aims to discourage wordy introductions and highlight professional achievements. If you print the homepage, the layout automatically changes to give the CV a more traditional appearance. This means you no longer have to maintain a separate CV for offline distribution.

See [my personal website](https://piazzai.github.io) to get a better sense of what the theme looks like.

![](https://github.com/piazzai/cvless/blob/master/assets/demo.jpg)

## Installation

1.  Clone this repository.
2.  Rename it to `[username].github.io`.
3.  Start editing!

## Configuration

Most of the site's configuration happens in `_config.yml`. The website's HTML uses variables set within this file, so that changing things here will affect the site's appearance and behavior.

Many variables are mandatory and failing to set them will break parts of the HTML. Some variables are optional and can be omitted without consequence. This can be done by either deleting the line or commenting it out with `#`, as in the following example:

```yaml
organization: University of Git
#department:   Department of Jekyll
address:      123 Main St, Anytown, USA
```

Below is a list of all the variables and their descriptions.

| Variable                                        | Description                                                                                                                                                                                                                                                                   |
| ----------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `title`                                         | The title of your website, as it appears in browser tabs and search engine results.                                                                                                                                                                                           |
| `description`                                   | A short description of your website, as it appears in search engine results. Please be aware that descriptions longer than 160 characters will be truncated by most engines.                                                                                                  |
| `firstname`<br />`lastname`                     | Your first and last name, which appear in the website's header and copyright notice.                                                                                                                                                                                          |
| `photo`                                         | Optional path to a personal picture that appears at the top of your CV. If omitted, the CV picture defaults to the avatar of your GitHub account.                                                                                                                             |
| `organization`<br />`department`<br />`address` | Three lines of contact details that appear at the top of your CV and in the website's footer. The `department` variable is optional and can be omitted.                                                                                                                       |
| `office`<br />`phone`                           | Your office and phone numbers (optional), which appear in your contact details.                                                                                                                                                                                               |
| `navtext`                                       | A short text that links to an external or internal web page. If included, this appears at the right end of the website's header. If a link to another page is not needed, `navtext` can be used as a short tagline that describes your job or interests, or omitted entirely. |
| `navlink`                                       | The (optional) URL to which `navtext` should redirect in case you wish to use it as a link. If this is omitted but `navtext` is not, `navtext` is rendered as plain text.                                                                                                     |
| `cv`                                            | Optional path to a PDF version of your CV. If included, the button in the footer changes from "Print CV" to "Download CV" and features a download icon.                                                                                                                       |
| `email`                                         | Your email address, which appears in your contact details and is linked by an envelope icon in the website's footer.                                                                                                                                                          |
| `scholar`                                       | Optional URL of your profile on [Google Scholar](https://scholar.google.com). If included, this is linked by a Google Scholar icon in the website's footer.                                                                                                                   |
| `orcid`                                         | Optional URL of your profile on [ORCID](https://orcid.org). If included, this is linked by an ORCID icon in the website's footer.                                                                                                                                             |
| `lichess`                                       | Your username on [Lichess](https://lichess.org) (optional). If included, this is linked by a Lichess icon in the website's footer. It is unlikely you will need this, but I include it to demonstrate that you can link pretty much anything through a footer icon.           |
| `github`                                        | Your username on GitHub. This is linked by a GitHub icon in the website's footer and used to source your CV picture unless `photo` is specified.                                                                                                                              |
| `analytics`                                     | Your [Google Analytics](https://analytics.google.com) Tracking ID (optional). You can find this on the dashboard of your Analytics account after adding your website to the list of tracked sites. If included, this automatically enables tracking.                          |
| `repo`                                          | The URL of your website's repository, which is linked in the website's footer.                                                                                                                                                                                                |

The final lines of `_config.yml` list some Jekyll plugins needed for search engine optimization and to help crawlers index your site. In the interest of having your site place well in search results, do not change these lines.

## Usage

The file `index.md` should be edited to include the body of your CV. Whatever you write here will be shown below your contact details and photo on the home.

You can print the CV to PDF through your browser, as you would for any web page, but also through the print button that appears in the footer. Alternatively, you can specify the path to a CV using the site variable `cv` in `_config.yml`. If you do so, the print icon in the button will change to a download icon.

You can use the usual [Markdown syntax](https://www.markdownguide.org/basic-syntax) to edit your CV. [Font Awesome](https://fontawesome.com), [Academicons](https://github.com/jpswalsh/academicons), and [Nonacademicons](https://github.com/piazzai/nonacademicons) are loaded automatically and offer a wide selection of icons to enhance the layout. For example, the following code outputs one icon from each pack, in different sizes:

```html
<i class="fab fa-github"></i>
<i class="ai ai-repec ai-lg"></i>
<i class="nai nai-lichess nai-4x"></i>
```

See the icon packs' documentation for more detailed instructions.

## Customization

### Accent color

By default, the accent color is set to a blue shade called [cobalt](https://encycolorpedia.com/0047ab). To change this to a color of your choosing, you need to follow two steps. First, open `assets/style.css` and look for the lines:

```css
a:link, a:visited, #icon:hover, #icon:active {
  color: #0047ab;
  text-decoration: none;
}
```

```css
#titlebar:hover {
  border-bottom: .4em solid #0047ab;
  text-decoration: none;
}

#navbar:hover {
  border-bottom: .55em solid #0047ab;
  text-decoration: none;
}
```

```css
#titlebar:hover, #navbar:hover {
  border-bottom: 0;
  color: #f5f5f5;
  background-color: #0047ab;
}
```

You should change the hex `0047ab` in these settings to the one corresponding to your chosen color. You can use [an online tool](https://colorpicker.me) to convert colors into hex codes. You can also write the name of any [HTML color](https://www.htmlcsscolor.com/html-color-names) instead of the hex code.

The second step is minifying the CSS. You can do this easily with [CSS Minifier](https://cssminifier.com). Just copy the full content of `assets/style.css` into the input field and paste the content of the output field into `assets/style.min.css`. Do not skip this step or your changes to the CSS will be ignored.

### Favicon

The theme ships with a favicon consisting of the letters CV in lowercase Alegreya serif against a round white background. You can substitute this for any icon of your choosing by replacing `favicon.ico` in the site's root folder. [This website](https://favicon.io) is very helpful to create your own favicon from an image, text, or emoji.

## Extensions

### Adding a page

One additional page can be added to your website with minimal effort. For example, if you are an academic, you might want to add a page about your research interests. In order to do this, you should first create a new text file called `research.md` and give it the front matter:

```yml
---
layout: default
title: Research
---
```

Then, open `_config.yml` and change the values of `navtext` and `navlink`:

```yml
navtext:      Research
navlink:      research.md
```

Done! Your new page will now appear in the navigation menu. Like the home, you can write it in [Markdown](https://www.markdownguide.org/basic-syntax).

### Adding one more page

Perhaps you want to add two extra pages instead of one. For example, you might want to have pages for your research and teaching interests. In the case of a second additional page, the procedure is slightly more involved as it requires editing the header.

First, create a new text file called `teaching.md` and specify the default layout in the front matter, as previously did for `research.md`. Then, open `_config.yml` and add to the list of variables:

```yml
navtext2:     Teaching
navlink2:     teaching.md
```

Next, open the file `_includes/header.html` and look for the code:

```html
{% if site.navtext %}
{% if site.navlink %}
<div class="right column menu">
  <a href="{{ site.navlink }}" id="navbar">{{ site.navtext }}</a>
</div>
{% else %}
<div class="right column menu">
  {{ site.navtext }}
</div>
{% endif %}
{% endif %}
```

Change it to:

```html
{% if site.navtext %}
{% if site.navlink %}
<div class="right column menu">
  <a href="{{ site.navlink }}" id="navbar">{{ site.navtext }}</a>
  {% if site.navlink2 %}
  &nbsp;·
  <a href="{{ site.navlink2 }}" id="navbar" style="margin-left: .25em;">{{ site.navtext2 }}</a>
  {% endif %}
</div>
{% else %}
<div class="right column menu">
  {{ site.navtext }}
</div>
{% endif %}
{% endif %}
```

Now the navigation menu will display both extra pages, but only if the values of `navtext2` and `navlink2` are set in `_config.yml`. The use of [Liquid control flow](https://shopify.github.io/liquid/tags/control-flow) ensures that you can remove the second extra page by deleting or commenting out the new variables in `_config.yml`, without further changing `_includes/header.html`.

You could, in principle, repeat this procedure to add as many pages as you want, but you are likely to run out of space in the navigation menu. The theme is intended for a simple website that focuses on your CV.

### Adding footer icons

Depending on your job and interests, you might want to change the icons linking to external sites that appear in the footer. Google Scholar, ORCID, and Lichess icons are supported by default (in addition to GitHub, which is mandatory). To include these in the footer, you only have to set the relevant variables in `_config.yml`.

You can easily add other icons. For example, you might want to have a link to your Twitter account. Font Awesome provides a Twitter icon, with name `fab fa-twitter-square`. To include this in the footer, first create a variable with your username in the configuration file:

```yml
twitter:      username
```

Open `_includes/footer.html` and look for the lines:

```html
{% if site.github %}
<a href="https://github.com/{{ site.github }}" class="fab fa-2x fa-github-square" title="GitHub" id="icon"></a>
{% endif %}
```

Right after, insert the following:

```html
{% if site.twitter %}
<a href="https://twitter.com/{{ site.twitter }}" class="fab fa-2x fa-twitter-square" title="Twitter" id="icon"></a>
{% endif %}
```

Done! Now the footer will display the Twitter icon. Like before, [Liquid code](https://shopify.github.io/liquid) ensures that if you later change your mind later you can simply delete or comment out the Twitter variable in `_config.yml` without further hassle.

Take a look at the [Font Awesome icon pack](https://fontawesome.com/icons?d=gallery) for an overview of all the icons you can use. If you are an academic, chances are you will not find some of the icons you need, but you could find them in the [Academicons pack](http://jpswalsh.github.io/academicons). If they are not there either, or if you are looking for icons unrelated to academia, please consider making a request for new icons to be added to [Nonacademicons](https://github.com/piazzai/nonacademicons).

## Bugs

If you find any problem using this theme, please [create an issue](https://github.com/piazzai/cvless/issues).
