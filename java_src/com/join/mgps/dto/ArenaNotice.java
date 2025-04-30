package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ArenaNotice {
    private String message1;
    private String message2;
    private String message3;

    public String getMessage1() {
        return this.message1;
    }

    public String getMessage2() {
        return this.message2;
    }

    public String getMessage3() {
        return this.message3;
    }

    public void setMessage1(String str) {
        this.message1 = str;
    }

    public void setMessage2(String str) {
        this.message2 = str;
    }

    public void setMessage3(String str) {
        this.message3 = str;
    }

    public String toString() {
        return "ArenaNotice{message1='" + this.message1 + "', message2='" + this.message2 + "', message3='" + this.message3 + "'}";
    }
}
