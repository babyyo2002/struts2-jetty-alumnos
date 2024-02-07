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



<s:form theme="simple" id="itemAdd" name="itemAdd" action="invoice" method="post" validate="true">
  <h1><s:text name="form.tittle.message"/></h1>
  <table>

  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.dni" />
        <s:text name="form.dni.message"/>
        <s:textfield id="dni" name="alumnoBean.dni"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.nombre" />
        <s:text name="form.nombre.message"/>
        <s:textfield id="nombre" name="alumnoBean.nombre"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.apellido1" />
        <s:text name="form.apellido1.message"/>
        <s:textfield id="apellido1" name="alumnoBean.apellido1"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.apellido2" />
        <s:text name="form.apellido2.message"/>
        <s:textfield id="apellido2" name="alumnoBean.apellido2"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.direccion" />
        <s:text name="form.direccion.message"/>
        <s:textfield id="direccion" name="alumnoBean.direccion"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.codigoPostal" />
        <s:text name="form.codigoPostal.message"/>
        <s:textfield id="codigoPostal" name="alumnoBean.codigoPostal"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.poblacion" />
        <s:text name="form.poblacion.message"/>
        <s:textfield id="poblacion" name="alumnoBean.poblacion"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.telefono" />
        <s:text name="form.telefono.message"/>
        <s:textfield id="telefono" name="alumnoBean.telefono"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.curso" />
        <s:text name="form.curso.message"/>
        <s:textfield id="curso" name="alumnoBean.curso"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumnoBean.clase" />
        <s:text name="form.clase.message"/>
        <s:textfield id="clase" name="alumnoBean.clase"/>
      </td>
    </tr>

<tr>

    <td class="evenRow">
        <s:submit align="left" value="Alta" action="registerStudent"/>
    </td>
</tr>

  <form action="findStudentByDni">
      <label for="dni">DNI:</label>
      <input type="text" id="dni" name="dni" />
      <button type="submit">Buscar</button>
      <input type="hidden" name="studentDni" id="studentDni" />
  </form>


  </table>
</s:form>


</body>
</html>
