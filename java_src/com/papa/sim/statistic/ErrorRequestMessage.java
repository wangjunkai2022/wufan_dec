package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class ErrorRequestMessage {
    private EmuErrorDto args;
    private String modeltype;

    public ErrorRequestMessage(String str, EmuErrorDto emuErrorDto) {
        this.modeltype = str;
        this.args = emuErrorDto;
    }

    public EmuErrorDto getArgs() {
        return this.args;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setArgs(EmuErrorDto emuErrorDto) {
        this.args = emuErrorDto;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }
}
