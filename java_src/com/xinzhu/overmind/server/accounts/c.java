package com.xinzhu.overmind.server.accounts;

import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
/* compiled from: CryptoHelper.java */
/* loaded from: classes3.dex */
class c {

    /* renamed from: c  reason: collision with root package name */
    private static final String f64385c = "Account";

    /* renamed from: d  reason: collision with root package name */
    private static final String f64386d = "cipher";

    /* renamed from: e  reason: collision with root package name */
    private static final String f64387e = "mac";

    /* renamed from: f  reason: collision with root package name */
    private static final String f64388f = "AES";

    /* renamed from: g  reason: collision with root package name */
    private static final String f64389g = "iv";

    /* renamed from: h  reason: collision with root package name */
    private static final String f64390h = "AES/CBC/PKCS5Padding";

    /* renamed from: i  reason: collision with root package name */
    private static final String f64391i = "HMACSHA256";

    /* renamed from: j  reason: collision with root package name */
    private static final int f64392j = 16;

    /* renamed from: k  reason: collision with root package name */
    private static c f64393k;

    /* renamed from: a  reason: collision with root package name */
    private final SecretKey f64394a = KeyGenerator.getInstance(f64388f).generateKey();

    /* renamed from: b  reason: collision with root package name */
    private final SecretKey f64395b = KeyGenerator.getInstance(f64391i).generateKey();

    private c() throws NoSuchAlgorithmException {
    }

    private static boolean a(byte[] a4, byte[] b4) {
        if (a4 == null || b4 == null) {
            return a4 == b4;
        } else if (a4.length != b4.length) {
            return false;
        } else {
            boolean z3 = true;
            for (int i2 = 0; i2 < b4.length; i2++) {
                z3 &= a4[i2] == b4[i2];
            }
            return z3;
        }
    }

    private byte[] b(byte[] cipher, byte[] iv) throws GeneralSecurityException {
        Mac mac = Mac.getInstance(f64391i);
        mac.init(this.f64395b);
        mac.update(cipher);
        mac.update(iv);
        return mac.doFinal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized c e() throws NoSuchAlgorithmException {
        c cVar;
        synchronized (c.class) {
            if (f64393k == null) {
                f64393k = new c();
            }
            cVar = f64393k;
        }
        return cVar;
    }

    private boolean f(byte[] cipherArray, byte[] iv, byte[] macArray) throws GeneralSecurityException {
        if (cipherArray != null && cipherArray.length != 0 && macArray != null && macArray.length != 0) {
            return a(macArray, b(cipherArray, iv));
        }
        Log.isLoggable(f64385c, 2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle c(Bundle bundle) throws GeneralSecurityException {
        Objects.requireNonNull(bundle, "Cannot decrypt null bundle.");
        byte[] byteArray = bundle.getByteArray(f64389g);
        byte[] byteArray2 = bundle.getByteArray(f64386d);
        if (f(byteArray2, byteArray, bundle.getByteArray(f64387e))) {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(byteArray);
            Cipher cipher = Cipher.getInstance(f64390h);
            cipher.init(2, this.f64394a, ivParameterSpec);
            byte[] doFinal = cipher.doFinal(byteArray2);
            Parcel obtain = Parcel.obtain();
            obtain.unmarshall(doFinal, 0, doFinal.length);
            obtain.setDataPosition(0);
            Bundle bundle2 = new Bundle();
            bundle2.readFromParcel(obtain);
            obtain.recycle();
            return bundle2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle d(Bundle bundle) throws GeneralSecurityException {
        Objects.requireNonNull(bundle, "Cannot encrypt null bundle.");
        Parcel obtain = Parcel.obtain();
        bundle.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        Cipher cipher = Cipher.getInstance(f64390h);
        cipher.init(1, this.f64394a);
        byte[] doFinal = cipher.doFinal(marshall);
        byte[] iv = cipher.getIV();
        byte[] b4 = b(doFinal, iv);
        Bundle bundle2 = new Bundle();
        bundle2.putByteArray(f64386d, doFinal);
        bundle2.putByteArray(f64387e, b4);
        bundle2.putByteArray(f64389g, iv);
        return bundle2;
    }
}
