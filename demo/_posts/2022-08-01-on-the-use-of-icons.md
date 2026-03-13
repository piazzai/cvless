---
layout: post
title: On the use of icons
lead: A very quick guide.
---

The icons used in this theme are partly custom-made, and partly come from the [Iconoir](https://iconoir.com/) library. More can be downloaded from the Iconoir website as svg files and saved in `_includes/svg` for use in your website.

Here's an overview of icons that already ship with the theme.

<table class="table">
  <thead>
    <tr>
      <th>Category</th>
      <th>Icons</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Navigation</td>
      <td>
      {% include svg/arrow-left-circled.svg %}
      {% include svg/arrow-right-circled.svg %}
      {% include svg/nav-arrow-down.svg %}
      {% include svg/nav-arrow-left.svg %}
      {% include svg/nav-arrow-right.svg %}
      </td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>
      {% include svg/download-circled-outline.svg %}
      {% include svg/download-square-outline.svg %}
      {% include svg/open-in-browser.svg %}
      {% include svg/open-in-window.svg %}
      {% include svg/open-new-window.svg %}
      </td>
    </tr>
    <tr>
      <td>Communication</td>
      <td>
      {% include svg/internet.svg %}
      {% include svg/mail.svg %}
      {% include svg/phone.svg %}
      {% include svg/send-mail-circled.svg %}
      </td>
    </tr>
    <tr>
      <td>Maps</td>
      <td>
      {% include svg/pin-alt.svg %}
      </td>
    </tr>
    <tr>
      <td>Social</td>
      <td>
      {% include svg/bluesky.svg %}
      {% include svg/facebook.svg %}
      {% include svg/google-circled.svg %}
      {% include svg/instagram.svg %}
      {% include svg/linkedin.svg %}
      {% include svg/mastodon.svg %}
      {% include svg/medium.svg %}
      {% include svg/stackoverflow.svg %}
      {% include svg/twitter.svg %}
      {% include svg/x.svg %}
      {% include svg/xing.svg %}
      </td>
    </tr>
    <tr>
      <td>Git</td>
      <td>
      {% include svg/github-outline.svg %}
      {% include svg/github.svg %}
      </td>
    </tr>
    <tr>
      <td>Security</td>
      <td>
      {% include svg/key-alt-circled.svg %}
      </td>
    </tr>
    <tr>
      <td>Users</td>
      <td>
      {% include svg/user-circle-alt.svg %}
      </td>
    </tr>
    <tr>
      <td>CV</td>
      <td>
      {% include svg/cv-circled.svg %}
      </td>
    </tr>
    <tr>
      <td>Academic</td>
      <td>
      {% include svg/clarivate-circled.svg %}
      {% include svg/orcid.svg %}
      {% include svg/scopus-circled.svg %}
      </td>
    </tr>
    <tr>
      <td>Chess</td>
      <td>
      {% include svg/lichess-circled.svg %}
      </td>
    </tr>
  </tbody>
</table>

They can be used in two ways through Liquid tags. First, as simple glyphs for decorative purposes, as in the table above or in the [contact](/cv) section of the CV:

{% highlight text %}
{% raw %}{% include svg/github.svg %}{% endraw %}
{% endhighlight %}

Second, as links:

{% highlight text %}
{% raw %}{% include iconlink.html icon="svg/github.svg" href="https://github.com/" %}{% endraw %}
{% endhighlight %}

In this case, the icon shows up with link formatting and its stroke width slightly increases on hovering. Here is an example: {% include iconlink.html icon="svg/github.svg" href="https://github.com/" %}

Simple CSS allows you to modify many aspects of the icon's appearance, including stroke width, color (with the `stroke` property), and size (with `transform`). Here is a usage example:

{% highlight css %}
svg {
  /* 250% of its original size */
  transform: scale(2.5);
  }
svg path {
    /* red color */
    stroke: red;
    /* thinner line */
    stroke-width: 1.25;
  }
{% endhighlight %}
