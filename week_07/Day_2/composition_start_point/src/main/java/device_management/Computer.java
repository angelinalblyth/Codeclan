package device_management;

import Behaviours.IOutput;

public class Computer {
    private int ram;
    private int hddSize;

    private Monitor monitor;
    private IOutput outputDevice;

    public Computer(int ram, int hddSize, IOutput outputDevice) {
        this.ram = ram;
        this.hddSize = hddSize;
        this.outputDevice = outputDevice;

    }

    public int getRam() {
        return this.ram;
    }

    public int getHddSize() {
        return this.hddSize;
    }

    public IOutput getOutputDevice() {
        return outputDevice;
    }

    public String outputData(String data) {
        return this.outputDevice.outputData(data);
    }

    public void setOutputDevice(IOutput outputDevice) {
        this.outputDevice = outputDevice;
    }
}
