module JbboisseauViewTool
  class Renderer
    def self.copyright name, msg
      "<kbd> &copy; #{Time.now.year} | <b>#{name}</b> #{msg} </kbd>".html_safe
    end
  end
end
