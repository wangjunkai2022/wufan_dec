package com.mob.apc;
/* loaded from: classes4.dex */
public class APCException extends Exception {
    public int errorCode;

    public APCException(String str) {
        super(str);
        this.errorCode = 0;
    }

    public APCException(int i2, String str) {
        super(str);
        this.errorCode = 0;
        this.errorCode = i2;
    }

    public APCException(Throwable th) {
        super(th);
        this.errorCode = 0;
    }
}
