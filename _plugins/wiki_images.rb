class WikiImages < Jekyll::Generator
  def generate(site)

    all_notes = site.collections['notes'].docs
    all_pages = site.collections['pages'].docs

    all_docs = all_notes + all_pages

    all_docs.each do |current_note|

      image_path = "/assets/images/"

      # Replace assets path for Markdown local images. Doesn't work with "title" yet
      current_note.content = current_note.content.gsub(
        /
        (?:!\[{1}) # One match of ![
        ([^\]]*) # Alt Text between []
        (?:\]) # Ending alt text bracket ]
        (?:\() # Starting Parenthesis
        (?!assets)(?!\/assets)(?!http) # Negative lookahead
        ([^\)]+) # Select all filename except closing parenthesis
        (?:\){1}) # One match of )
        (?!`$) # Exclude codeblocks ending in `
        /x,
        '<img src="' + image_path + '\2" alt="\1">'
      )

    end
  end
end
