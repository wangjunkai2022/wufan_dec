package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class CheckFileBean implements Serializable {
    private String check;
    private String file;
    private String preCalcBak;
    private String preCalcCheck;

    public String getCheck() {
        return this.check;
    }

    public String getFile() {
        return this.file;
    }

    public String getPreCalcBak() {
        return this.preCalcBak;
    }

    public String getPreCalcCheck() {
        return this.preCalcCheck;
    }

    public void setCheck(String str) {
        this.check = str;
    }

    public void setFile(String str) {
        this.file = str;
    }

    public void setPreCalcBak(String str) {
        this.preCalcBak = str;
    }

    public void setPreCalcCheck(String str) {
        this.preCalcCheck = str;
    }

    public String toString() {
        return "CheckFileBean{file='" + this.file + "', check='" + this.check + "', preCalcCheck='" + this.preCalcCheck + "', preCalcBak='" + this.preCalcBak + "'}";
    }
}
