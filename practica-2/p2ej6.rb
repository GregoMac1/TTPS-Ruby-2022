class Documento
  attr_accessor :creador, :contenido, :publico, :borrado

  def initialize(usuario, publico = true, contenido = '')
    self.creador = usuario
    self.publico = publico
    self.contenido = contenido
    self.borrado = false
  end

  def borrar
    self.borrado = true
  end

  def puede_ser_visto_por?(usuario)
    usuario.puede_ver? self
  end

  def puede_ser_modificado_por?(usuario)
    usuario.puede_modificar? self
  end

  def puede_ser_borrado_por?(usuario)
    usuario.puede_borrar? self
  end
end

class Lector
  attr_accessor :usuario, :mail, :clave

  def initialize(usuario, mail, clave)
    self.usuario = usuario
    self.mail = mail
    self.clave = clave
  end

  def puede_ver?(documento)
    documento.publico
  end

  def puede_modificar?(documento)
    false
  end

  def puede_borrar?(documento)
    false
  end
end

class Redactor < Lector
  def puede_modificar?(documento)
    documento.creador == self
  end
end

class Director < Lector
  def puede_ver?(documento)
    !documento.borrado
  end

  def puede_modificar?(documento)
    !documento.borrado
  end
end

class Administrador < Director
  def puede_borrar?(documento)
    true
  end
end
