# Digital Garden Template
This template is a way to organize and publish your thoughts from Obsidian to the web, complete with backlinks, notes graph, and wikilink support. This version of the template was modified by [Megumi Tanaka](https://megumi.co) in 2021. Installation instructions <a href="https://garden.megu.space/your-first-note.html#installation">here</a>.

Based on the Jekyll digital garden template by [Maxime Vaillancourt](https://github.com/maximevaillancourt/digital-garden-jekyll-template).

## How is this different?
### New Features
- Categories! (not clickable yet)
- Emoji favicons! Configure at site level or page level with `favicon:` variable
- Archive Page! Shows an index of all notes, month updated, category, and excerpt.
- Tables! [Commonmark Github Flavored Markdown](<[Commonmark Github Flavored Markdown](https://github.com/github/jekyll-commonmark-ghpages)>)! Table syntax matches Obsidian and Github.
- Obsidian Templates! Easily create a new note or page with the proper front matter variables.
- Automatic Title Generation from `title:` variable! Renders as `<h1>` heading at the top of the page, so you don't need to type it manually for `_pages` anymore.
- Permalink `/:slug` by default for all notes and pages, so you don't need to specify `permalink:` anymore! By default, all pages will be built in the root directory.
- Responsive code blocks! Enabled horizontal scroll for codeblocks on narrow browsers.
- Updated metadata in `head.html` with way more conditional logic based on site configuration, stripped extra whitespace from descriptions, and made sure absolute URLs for OpenGraph are rendering properly
- Renamed some components of `notes-graph` based on errors I was getting on non-Netlify servers

### PHP/Python Server Support
Powered by: Github --> [DeployHQ](https://www.deployhq.com/r/nx7qct) --> Dreamhost

You can use this with any cheap Shared Hosting plan, since they mostly use LAMP servers (Linux, Apache, MySQL, PHP/Python/Perl).

DeployHQ (free for 1 project) builds and serves this Jekyll site to the server via `ssh` or `ftp`. You can replace the server with whatever LAMP setup you want. I've configured `.htaccess` so that this template will work without the need for any extra configuration.

Here are the nerdy details:
- Created `.htaccess` file for custom 404 page routing
- Enabled `.html` extension by default and added throughout site with conditional statements
	- If you want to disable this, you can do so in `_config.yml`, but you should also set your `.htaccess` to allow your server to recognize pages without the extension. I've set up a `link rel="canonical"` to show once you disable this feature
- Timezones in `_config.yml` so the remote build process adds the right timestamp for the Last Modified plugin

## Why not Netlify?
I'm on a mission to build **carbon-neutral websites**, and unfortunately Netlify hasn't made any statements on this front. I'm in the process of switching all my web projects to [Krystal UK](https://krystal.uk/green). Even though Netlify is really easy to use and I love their mission to make a faster, flat-file web, I'm going to go about it in a different way.

### Green Web Hosting
[Krystal UK](https://krystal.uk/green) is powered by 100% renewables, meaning 🌊 hydro, 😎 solar, and 🍃 wind powered energy. On top of that, they invest in tree replanting and other environmental campaigns.

[DeployHQ](https://www.deployhq.com/r/nx7qct) is owned by Krystal UK and runs on the same 100% renewable cloud services. It's very easy to connect Github Repositories to FTP servers and automatically deploy. Read their guide on [Jekyll Build Commands](https://www.deployhq.com/guides/jekyll) and `vendor` caching.

My existing host, Dreamhost, is technically [carbon neutral](https://www.dreamhost.com/company/we-are-green/) through purchasing carbon credits and using partial renewable energy sources.

### But you can still use Netlify
If you want to use this template on Netlify, just remove `.htaccess` and delete it from `_config.yml`

## Why not Wordpress?
You might be wondering why I'm so committed to using a Jekyll flat file system on a PHP/Python server. It's mostly because I enjoy writing Markdown files in Obsidian. It's so easy to update multiple files at once, something that Wordpress makes absurdly difficult.

Wordpress seriously hinders my ability to write—not only in the loading speed of the editor, but also the feeling I get when I log in to the admin panel. I'm teaching myself Jekyll, Ruby, and Liquid to modify this digital garden template because I believe it's the best organization system for the way my mind works. And it makes me excited to open Obsidian and write things!

Read more about digital gardening on [Maggie Appleton's repo](https://github.com/MaggieAppleton/digital-gardeners).

# Template Quirks
Interesting errors I've encountered:
- Your file path must not have any spaces in it or your `bundle` command will fail!
- Plugins are not compatible with Github Pages instance of Jekyll, so you have to build your site locally and reconfigure output to `docs` folder. I have a similar setup in [this github pages repository](https://github.com/meewgumi/digital-garden-ghpages-template)
- This template only works for apex and subdomains. If you build your site in a `/directory`, you may have to reconfigure the relative links throughout the template.

# License
[Original Jekyll template](https://github.com/maximevaillancourt/digital-garden-jekyll-template) by Maxime Vaillancourt is available under the [MIT license](LICENSE.md). [Buy Maxime a coffee](https://ko-fi.com/maximevaillancourt)! ☕️

This modified version by Megumi Tanaka is also publicly available and you are free to edit as you wish!
