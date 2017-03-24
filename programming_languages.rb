require 'pry'

def languages_by_style
  hash = {
    oo: {
      ruby: {type: "interpreted"},
      javascript: {type: "interpreted"},
      python: {type: "interpreted"},
      java: {type: "compiled"}
    },

    functional: {
      clojure: {type: "compiled"},
      erlang: {type: "compiled"},
      scala: {type: "compiled"},
      javascript: {type: "interpreted"}
    }
  }
end

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, languages|
    languages.each do |language, type|
      if new_hash[language] == nil
        new_hash[language] = {type: type[:type], style: [style]}
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end

# puts reformat_languages
