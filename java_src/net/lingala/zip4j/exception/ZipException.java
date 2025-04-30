package net.lingala.zip4j.exception;
/* loaded from: classes5.dex */
public class ZipException extends Exception {
    private static final long serialVersionUID = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f72939a;

    public ZipException() {
        this.f72939a = -1;
    }

    public int a() {
        return this.f72939a;
    }

    public ZipException(String str) {
        super(str);
        this.f72939a = -1;
    }

    public ZipException(String str, Throwable th) {
        super(str, th);
        this.f72939a = -1;
    }

    public ZipException(String str, int i2) {
        super(str);
        this.f72939a = -1;
        this.f72939a = i2;
    }

    public ZipException(String str, Throwable th, int i2) {
        super(str, th);
        this.f72939a = -1;
        this.f72939a = i2;
    }

    public ZipException(Throwable th) {
        super(th);
        this.f72939a = -1;
    }

    public ZipException(Throwable th, int i2) {
        super(th);
        this.f72939a = -1;
        this.f72939a = i2;
    }
}
