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

    <h1>El alumno ha sido dado de alta: </h1>
    <p>${alumnoBean.getNombre()}
    ${alumnoBean.getApellido1()}
    ${alumnoBean.getApellido2()}
</body>
</html>