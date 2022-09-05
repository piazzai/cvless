---
layout: post
title: On the use of icons
lead: A very quick guide
---

The icons used throughout this theme come from the [Iconoir](https://iconoir.com/) library. They can be downloaded from the Iconoir website as svg files and saved in `assets/svg` for use in your website.

A small selection of icons already ships with the theme.

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
      <td>{% include svg/arrow-left-circled.svg %} {% include svg/arrow-right-circled.svg %} {% include svg/nav-arrow-left.svg %} {% include svg/nav-arrow-right.svg %}</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>{% include svg/download-circled-outline.svg %} {% include svg/download-square-outline.svg %} {% include svg/open-in-browser.svg %} {% include svg/open-in-window.svg %} {% include svg/open-new-window.svg %}</td>
    </tr>
    <tr>
      <td>Communication</td>
      <td>{% include svg/phone.svg %} {% include svg/mail.svg %} {% include svg/internet.svg %}</td>
    </tr>
    <tr>
      <td>Maps</td>
      <td>{% include svg/pin-alt.svg %}</td>
    </tr>
    <tr>
      <td>Git</td>
      <td>{% include svg/github-outline.svg %}</td>
    </tr>
  </tbody>
</table>

They can be used in two ways through Liquid tags. The first is as simple glyphs for decorative purposes, as in the table above or in the [contact](/cv) section of the CV. To do so, just write:

{% highlight text %}
{% raw %}{% include svg/github-outline.svg %}{% endraw %}
{% endhighlight %}

Second, they can be as links by writing:

{% highlight text %}
{% raw %}{% include iconlink.html icon="svg/github-outline.svg" href="https://github.com/" %}{% endraw %}
{% endhighlight %}

In this case, the icon shows up with link formatting and its stroke width slightly increases on hovering. Check it out! {% include iconlink.html icon="svg/github-outline.svg" href="https://github.com/" %}

## Note

Each icon available from Iconoir is essentially a text file:

{% highlight text %}
<?xml version="1.0" encoding="UTF-8"?><svg width="24px" height="24px" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" color="#000000"><path d="M16 22.027v-2.87a3.37 3.37 0 00-.94-2.61c3.14-.35 6.44-1.54 6.44-7a5.44 5.44 0 00-1.5-3.75 5.07 5.07 0 00-.09-3.77s-1.18-.35-3.91 1.48a13.38 13.38 0 00-7 0c-2.73-1.83-3.91-1.48-3.91-1.48A5.07 5.07 0 005 5.797a5.44 5.44 0 00-1.5 3.78c0 5.42 3.3 6.61 6.44 7a3.37 3.37 0 00-.94 2.58v2.87M9 20.027c-3 .973-5.5 0-7-3" stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg>
{% endhighlight %}

The `<?...?>` tag at the beginning is useful for Google apps but not for a Jekyll website, and will actually show up as a string of text when the icon is used, so it needs to be deleted. I already did this for the default icons. Remember to do this for every new icon you download.
