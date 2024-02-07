package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
/**
 * <code>Set welcome message.</code>
 */
public class RegistryAction extends ActionSupport {

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

    @Override
    public String execute() throws Exception {
        dataList.add(dataToSave); // Agregar los datos a la lista en memoria
        setMessage(getText(MESSAGE));
        setFormTittleMessage(getText(TITTLE_FORM_MESSAGE));
        return SUCCESS;
    }

    public String findStudentByDni(String dni) {
        for (String data : dataList) {
            // Supongamos que los datos están separados por comas y el DNI es el primer elemento
            String[] parts = data.split(",");
            if (parts.length > 0 && parts[0].equals(dni)) {
                // Si se encuentra el DNI, lo mostramos
                dataToSave = data;
                return SUCCESS;
            }
        }
        // Si no se encuentra el DNI, devolvemos un error
        return ERROR;
    }
    /**
     * Provide default valuie for Message property.
     */
    public static final String MESSAGE = "hello.message";
    public static final String TITTLE_FORM_MESSAGE = "form.tittle.message";

    /**
     * Field for Message property.
     */
    private String message;
    private String formTittleMessage;

    public String getFormTittleMessage() {
        return formTittleMessage;
    }

    public void setFormTittleMessage(String formTittleMessage) {
        this.formTittleMessage = formTittleMessage;
    }

    /**
     * Return Message property.
     *
     * @return Message property
     */
    public String getMessage() {
        return message;
    }

    /**
     * Set Message property.
     *
     * @param message Text to display on HelloWorld page.
     */
    public void setMessage(String message) {
        this.message = message;
    }
}
