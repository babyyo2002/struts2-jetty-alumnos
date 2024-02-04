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

    <h1>Resumen de factura: ${invoiceBean.getSubject()}</h1>
    <p><s:text name="form.amount.message"/> ${invoiceBean.getAmount()}</p>
    <p>IVA (21%): ${(invoiceBean.getAmount() * 0.21)} €</p>
    <p><strong>Total con IVA:</strong> ${(invoiceBean.getAmount() * 0.21)+invoiceBean.getAmount()} €</p>
    <p><s:text name="form.fromDate.message"/> ${invoiceBean.getDateFrom()}</p>
    <p><s:text name="form.toDate.message"/> ${invoiceBean.getDateTo()}</p>
</body>
</html>