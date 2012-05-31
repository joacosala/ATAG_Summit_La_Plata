module HomeHelper

def get_formato_autor articulo
  @autor = Autor.find(articulo.autor_id) if articulo.autor_id
	"por #{@autor.nombre} #{@autor.apellido}"
end
			

end
