def reformat_languages(languages)
  # your code here
  ref = {}
  languages.each { |style, names|
    names.each{ |name, properties|

      if !ref[name]
        ref[name] = properties
        ref[name][:style] = [style]
      else
        ref[name][:style] << style
      end
      
    }
  }
  ref
end



languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

pp reformat_languages(languages)