---
category: Getting Started
favicon: 💎
---
## Vault
Open new folder as vault and select the main digital garden folder.

## Settings
`.gitignore` is set to ignore Obsidian system files, so you need to customize the settings from scratch.

### Files & Links
- Set default location for new notes to `_notes`
- Set default location for attachments to `assets/images`
	- Be careful not to select `_site/assets`. Instead, select the folder in your root directory.

Make sure you're working on notes in the `_notes` directory, not `_site`. Unfortunately, you'll just have to put up with all the extra files in your Obsidian view since we can't [ignore Obsidian folders yet](https://forum.obsidian.md/t/ignore-a-folder-of-temporary-notes/4473/8).

## Wikilinks
By default, Obsidian uses wikilinks[^1] (double bracketed links). If you turn this off by default, you might get errors with bidirectional page links. However, you'll also get errors with wikilink image embeds. Here's my solution:

- Use Wikilinks for all links and embeds
- Convert embeds to standard Markdown with [Wikilinks to MDLinks Plugin](https://github.com/agathauy/wikilinks-to-mdlinks-obsidian)

For now, you'll have to do this manually for each image embed.

Here's a test image to make sure my plugin is working:
![[tom-wheatley-HdIb-5gRv7U-unsplash 1.jpg]]

Wait, disregard this, apparently it's not working because of the assets folder. Will work on a fix for this soon.

## Suggested Plugins
### Core Plugins - Templates
1. Under Core Plugins, enable "Templates"
2. Select `obsidian-templates` as the template folder
3. Set a hotkey for inserting a template to a file
4. Select note or page templates to insert front matter and variables

### Community Plugins
- [Wikilinks to MDLinks](https://github.com/agathauy/wikilinks-to-mdlinks-obsidian)
- [Paste URL Into Selection](https://github.com/denolehov/obsidian-url-into-selection)
- [Emoji Toolbar](https://github.com/oliveryh/obsidian-emoji-toolbar)
- [Advanced Tables](https://github.com/tgrosinger/advanced-tables-obsidian)

## Footnotes
[^1]: I couldn't demonstrate what a wikilink looks like because if you type the double bracket wikilink syntax within a code block, the bidirectional link generator renders it as an invalid link. Please refrain from using double brackets unless you're actually trying to link to a page.