package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.demo.actions.beans.AlumnoBean;
import java.util.ArrayList;
import java.util.List;
import static sun.util.locale.LocaleUtils.isEmpty;

public class InvoiceAction extends ActionSupport  {
    private String dataToSave;
    private List<String> dataList = new ArrayList<>();

    public String getDataToSave() {
        return dataToSave;
    }

    public void setDataToSave(String dataToSave) {
        this.dataToSave = dataToSave;
    }

    public List<String> getDataList() {
        return dataList;
    }

    public void setDataList(List<String> dataList) {
        this.dataList = dataList;
    }

    AlumnoBean alumnoBean;

    @Override
    public String execute() throws Exception {
        dataList.add(dataToSave); // Agregar los datos a la lista en memoria
        System.out.println("execute!!");
        return SUCCESS;
    }

    public AlumnoBean getAlumnoBean() {
        return alumnoBean;
    }

    public void setAlumnoBean(AlumnoBean alumnoBean) {
        this.alumnoBean = alumnoBean;
    }
    @Override
    public void validate() {
        if (alumnoBean.getDni().isEmpty()) {
            addFieldError("alumnoBean.dni", "El dni es obligatorio.");
        }
        if (alumnoBean.getNombre().isEmpty()) {
            addFieldError("alumnoBean.nombre", "El nombre es obligatorio.");
        }
        if (alumnoBean.getApellido1().isEmpty()) {
            addFieldError("alumnoBean.apellido1", "El primer apellido es obligatorio.");
        }
        if (alumnoBean.getApellido2().isEmpty()) {
            addFieldError("alumnoBean.apellido2", "El segundo apellido es obligatorio.");
        }
        if (alumnoBean.getDireccion().isEmpty()) {
            addFieldError("alumnoBean.direccion", "La dirección es obligatoria.");
        }
        if (alumnoBean.getCodigoPostal() <= 0.0) {
            addFieldError("alumnoBean.codigoPostal", "El código postal es obligatorio.");
        }
        if (alumnoBean.getPoblacion().isEmpty()) {
            addFieldError("alumnoBean.poblacion", "La población es obligatoria.");
        }
        if (alumnoBean.getTelefono() <= 0.0) {
            addFieldError("alumnoBean.telefono", "El telefono es obligatorio.");
        }
        if (alumnoBean.getCurso() <= 0.0) {
            addFieldError("alumnoBean.curso", "El curso es obligatorio.");
        }
        if (alumnoBean.getClase().isEmpty()) {
            addFieldError("alumnoBean.clase", "La clase es obligatoria.");
        }

    }
}
