package device_management;

import Behaviours.IInput;

public class Keyboard implements IInput {

    private String type;

    public Keyboard(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public String sendData(String data){
        return "typing: " + data;
    }

    String outputData(String data){

    }
}
