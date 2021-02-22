require 'pry'

def reformat_languages(languages)
    new_hash = {}
    current_style = ""
    languages.each_pair do |style, details|
        details.each_pair do |language, type|
            if new_hash[language]
                new_hash[language][:style] << style
            else
                new_hash[language] = {type:type.values[0], style:[style]}
            end
        end
    end
    return new_hash
end
