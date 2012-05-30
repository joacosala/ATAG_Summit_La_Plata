module ApplicationHelper


def log_autor?
    @log_autor = Autor.find(session[:autor_id]) if session[:autor_id]
    not @log_autor.nil?
end

end
