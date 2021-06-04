---
---

# Wikilinks
Double bracketed links are converted to Jekyll-ingestible Markdown formatting by the `bidirectional_links_generator.rb` plugin. However, Obsidian's Wikilink setting also applies to a proprietary image embed format with double brackets. 

I'm working on another plugin to complement the bidirectional link generator and resolve Obsidian image embeds automatically. This page is for testing the efficacy of the script and the regex I'm using.

This is a useful reference for [Regex in Ruby](https://ruby-doc.org/core-3.0.1/doc/regexp_rdoc.html) and this is a good [Ruby Regex Tester](https://rubular.com/).

# Version 1
- Will not support `"title"` Markdown links yet
	- Example:  `![Alt text](tom-wheatley-HdIb-5gRv7U-unsplash 1.jpg "a title")`
	- If you use these, the image will break



# Testing
![[tom-wheatley-HdIb-5gRv7U-unsplash 1.jpg]]

[[Page]]

[[Link|Different Title]]

[Link](http://URL)

[![Image alt text](tom-wheatley-HdIb-5gRv7U-unsplash 1.jpg)](https://URL)

Using the note `title` variable: [[a note about cats]]. Using the note's filename: [[cats]]. Using the note's title, with a label: [[cats|link to the note about cats using the note title]]. Using the note's filename, with a label: [[cats|link to the note about cats using the note's filename]]. In all cases, if the double-bracket link does not point to a valid note, the double brackets will still be shown, like this: [[there is no note that matches this link]]. This is an Obsidian Image. ![[tom-wheatley-HdIb-5gRv7U-unsplash 1.jpg]]. This is a Markdown image with alt text only. ![Alt text](tom-wheatley-HdIb-5gRv7U-unsplash 1.jpg). This is a Markdown image without alt text. ![](tom-wheatley-HdIb-5gRv7U-unsplash 1.jpg). This is an Obsidian image that links to the assets folder. ![[assets/images/tom-wheatley-HdIb-5gRv7U-unsplash 1.jpg]]. And another with a slash. ![[/assets/images/tom-wheatley-HdIb-5gRv7U-unsplash 1.jpg]]