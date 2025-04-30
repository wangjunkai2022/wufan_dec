package net.lingala.zip4j.crypto.PBKDF2;
/* compiled from: PBKDF2Parameters.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    protected byte[] f72886a;

    /* renamed from: b  reason: collision with root package name */
    protected int f72887b;

    /* renamed from: c  reason: collision with root package name */
    protected String f72888c;

    /* renamed from: d  reason: collision with root package name */
    protected String f72889d;

    /* renamed from: e  reason: collision with root package name */
    protected byte[] f72890e;

    public e() {
        this.f72888c = null;
        this.f72889d = "UTF-8";
        this.f72886a = null;
        this.f72887b = 1000;
        this.f72890e = null;
    }

    public byte[] a() {
        return this.f72890e;
    }

    public String b() {
        return this.f72888c;
    }

    public String c() {
        return this.f72889d;
    }

    public int d() {
        return this.f72887b;
    }

    public byte[] e() {
        return this.f72886a;
    }

    public void f(byte[] bArr) {
        this.f72890e = bArr;
    }

    public void g(String str) {
        this.f72888c = str;
    }

    public void h(String str) {
        this.f72889d = str;
    }

    public void i(int i2) {
        this.f72887b = i2;
    }

    public void j(byte[] bArr) {
        this.f72886a = bArr;
    }

    public e(String str, String str2, byte[] bArr, int i2) {
        this.f72888c = str;
        this.f72889d = str2;
        this.f72886a = bArr;
        this.f72887b = i2;
        this.f72890e = null;
    }

    public e(String str, String str2, byte[] bArr, int i2, byte[] bArr2) {
        this.f72888c = str;
        this.f72889d = str2;
        this.f72886a = bArr;
        this.f72887b = i2;
        this.f72890e = bArr2;
    }
}
