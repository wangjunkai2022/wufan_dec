package com.tencent.cos.exception;
/* loaded from: classes4.dex */
public class COSClientException extends Exception {
    public COSClientException() {
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (getCause() == null) {
            return message;
        }
        return getCause().getMessage() + "\n" + message;
    }

    public COSClientException(String str) {
        super(str);
    }

    public COSClientException(String str, Throwable th) {
        super(str, th);
    }

    public COSClientException(Throwable th) {
        super(th);
    }
}
