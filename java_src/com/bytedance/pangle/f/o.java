package com.bytedance.pangle.f;

import android.content.pm.Signature;
import android.util.ArraySet;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.PublicKey;
import java.util.Arrays;
/* loaded from: classes2.dex */
final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final o f10243a = new o(null, 0, null, null, null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Signature[] f10244b;

    /* renamed from: c  reason: collision with root package name */
    public final int f10245c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final ArraySet<PublicKey> f10246d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Signature[] f10247e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final int[] f10248f;

    public o(Signature[] signatureArr, int i2, ArraySet<PublicKey> arraySet, Signature[] signatureArr2, int[] iArr) {
        this.f10244b = signatureArr;
        this.f10245c = i2;
        this.f10246d = arraySet;
        this.f10247e = signatureArr2;
        this.f10248f = iArr;
    }

    private static ArraySet<PublicKey> a(Signature[] signatureArr) {
        ArraySet<PublicKey> arraySet = new ArraySet<>(signatureArr.length);
        for (Signature signature : signatureArr) {
            Method a4 = com.bytedance.pangle.a.a.a.a(Signature.class, "getPublicKey", new Class[0]);
            if (a4 != null && a4.isAccessible()) {
                try {
                    arraySet.add((PublicKey) a4.invoke(signature, new Object[0]));
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                } catch (InvocationTargetException e5) {
                    e5.printStackTrace();
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
        }
        return arraySet;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.f10245c == oVar.f10245c && a(this.f10244b, oVar.f10244b)) {
                ArraySet<PublicKey> arraySet = this.f10246d;
                if (arraySet != null) {
                    if (!arraySet.equals(oVar.f10246d)) {
                        return false;
                    }
                } else if (oVar.f10246d != null) {
                    return false;
                }
                return Arrays.equals(this.f10247e, oVar.f10247e) && Arrays.equals(this.f10248f, oVar.f10248f);
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = ((Arrays.hashCode(this.f10244b) * 31) + this.f10245c) * 31;
        ArraySet<PublicKey> arraySet = this.f10246d;
        return ((((hashCode + (arraySet != null ? arraySet.hashCode() : 0)) * 31) + Arrays.hashCode(this.f10247e)) * 31) + Arrays.hashCode(this.f10248f);
    }

    public o(Signature[] signatureArr, int i2, Signature[] signatureArr2, int[] iArr) {
        this(signatureArr, i2, a(signatureArr), signatureArr2, iArr);
    }

    public o(Signature[] signatureArr) {
        this(signatureArr, 2, null, null);
    }

    public static boolean a(Signature[] signatureArr, Signature[] signatureArr2) {
        return signatureArr.length == signatureArr2.length && com.bytedance.pangle.util.c.a((Object[]) signatureArr, (Object[]) signatureArr2) && com.bytedance.pangle.util.c.a((Object[]) signatureArr2, (Object[]) signatureArr);
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }
}
