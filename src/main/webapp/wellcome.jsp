<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>

    <h1>Resumen del alumno: ${alumnoBean.getdni()}</h1>
    <p>${dataToSave}</p>

    <p><s:text name="form.nombre.message"/> ${alumnoBean.getnombre()}</p>
    <p><s:text name="form.apellido1.message"/> ${alumnoBean.getapelliod1()}</p>
    <p><s:text name="form.apellido2.message"/> ${alumnoBean.getapellido2()}</p>
    <p><s:text name="form.direccion.message"/> ${alumnoBean.getnombre()}</p>
    <p><s:text name="form.codigoPostal.message"/> ${alumnoBean.getnombre()}</p>
    <p><s:text name="form.poblacion.message"/> ${alumnoBean.getnombre()}</p>
    <p><s:text name="form.telefono.message"/> ${alumnoBean.getnombre()}</p>
    <p><s:text name="form.curso.message"/> ${alumnoBean.getnombre()}</p>
    <p><s:text name="form.clase.message"/> ${alumnoBean.getnombre()}</p>




</body>
</html>