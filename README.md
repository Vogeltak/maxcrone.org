# Maxcrone.org

My truly personal space on the internet.

See https://maxcrone.org

## What is this about?

I am exploring ways to create and publish more of my own work.
This includes writing, photography, software development, and possibly some art projects too.

## How is this built?

This website is built on the static site generator [Zola](https://www.getzola.org/).
All content lives in the `content/` directory, with the exception of some single-use templates in `templates/` (`about.html`, ...)

Most of my writing is done in Markdown files that I edit in [Helix](https://helix-editor.com/).

## Future work

- [x] It would be cool to include a dark mode, based on the `prefers-color-scheme` CSS media feature. See [MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-color-scheme).
- [x] Separate page for books I have read and reviews I have written
- [x] Host binary content (i.e., images, documents) on a separate CDN (Backblaze B2)
- [x] Add social meta tags (twitter, schema, opengraph)
- [x] Refactor Photos to use three-column gallery (see [LogRocket blog](https://blog.logrocket.com/responsive-image-gallery-css-flexbox/) and [Sydney Hough's website](https://shough.me/photos/))
  - Instead split photos into different albums that have a linear gallery
- [x] Refactor to use Zola instead of Jekyll
- [ ] Maybe look into the use of Adobe's open-source font family [Source](https://en.wikipedia.org/wiki/Source_Serif), including *Source Sans Pro* and *Source Serif Pro* (also used at [Gwern.net](https://gwern.net))
- [ ] Find a way to incorporate link dumps (I like the idea of small screenshot thumbnails of websites, e.g., see [this](https://web.archive.org/web/20220519092446/https://www.endriarichardson.com/nonfic))
- [ ] Add a section with TIL's (Today I Learned)
- [ ] Start a solarpunk series (photography and cuisine!)

## License

All content is licensed under the [Creative Commons Attribution 4.0 International license](https://creativecommons.org/licenses/by/4.0/). The website's source code is licensed under the MIT license.
