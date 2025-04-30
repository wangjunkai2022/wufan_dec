package net.lingala.zip4j.crypto.PBKDF2;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: MacBasedPRF.java */
/* loaded from: classes5.dex */
public class b implements f {

    /* renamed from: a  reason: collision with root package name */
    protected Mac f72881a;

    /* renamed from: b  reason: collision with root package name */
    protected int f72882b;

    /* renamed from: c  reason: collision with root package name */
    protected String f72883c;

    public b(String str) {
        this.f72883c = str;
        try {
            Mac mac = Mac.getInstance(str);
            this.f72881a = mac;
            this.f72882b = mac.getMacLength();
        } catch (NoSuchAlgorithmException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.f
    public int a() {
        return this.f72882b;
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.f
    public void b(byte[] bArr) {
        try {
            this.f72881a.init(new SecretKeySpec(bArr, this.f72883c));
        } catch (InvalidKeyException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.f
    public byte[] c(byte[] bArr) {
        return this.f72881a.doFinal(bArr);
    }

    public byte[] d() {
        return this.f72881a.doFinal();
    }

    public void update(byte[] bArr) {
        try {
            this.f72881a.update(bArr);
        } catch (IllegalStateException e4) {
            throw new RuntimeException(e4);
        }
    }

    public void update(byte[] bArr, int i2, int i4) {
        try {
            this.f72881a.update(bArr, i2, i4);
        } catch (IllegalStateException e4) {
            throw new RuntimeException(e4);
        }
    }

    public b(String str, String str2) {
        this.f72883c = str;
        try {
            Mac mac = Mac.getInstance(str, str2);
            this.f72881a = mac;
            this.f72882b = mac.getMacLength();
        } catch (NoSuchAlgorithmException e4) {
            throw new RuntimeException(e4);
        } catch (NoSuchProviderException e5) {
            throw new RuntimeException(e5);
        }
    }
}
