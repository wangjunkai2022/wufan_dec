package com.bytedance.pangle.f;

import android.content.pm.Signature;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.bytedance.pangle.f.c;
import java.io.RandomAccessFile;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.Certificate;
@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public final class d {
    public static o a(String str) {
        int[] iArr;
        RandomAccessFile randomAccessFile = null;
        Signature[] signatureArr = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, net.lingala.zip4j.util.e.f73017f0);
                try {
                    try {
                        f.a(str, randomAccessFile2, -262969152, com.meituan.android.walle.a.f52604d);
                        try {
                            try {
                                try {
                                    m mVar = f.f10223a.get(str).get(-262969152);
                                    if (mVar != null) {
                                        c.C0038c a4 = c.a(randomAccessFile2, mVar);
                                        Signature[] a5 = a(new Certificate[][]{a4.f10220a});
                                        c.b bVar = a4.f10221b;
                                        if (bVar != null) {
                                            int size = bVar.f10218a.size();
                                            Signature[] signatureArr2 = new Signature[size];
                                            iArr = new int[a4.f10221b.f10219b.size()];
                                            for (int i2 = 0; i2 < size; i2++) {
                                                signatureArr2[i2] = new Signature(a4.f10221b.f10218a.get(i2).getEncoded());
                                                iArr[i2] = a4.f10221b.f10219b.get(i2).intValue();
                                            }
                                            signatureArr = signatureArr2;
                                        } else {
                                            iArr = null;
                                        }
                                        o oVar = new o(a5, 3, signatureArr, iArr);
                                        try {
                                            randomAccessFile2.close();
                                        } catch (Exception unused) {
                                        }
                                        return oVar;
                                    }
                                    throw new n("findVerifiedSigner, No APK Signature Scheme v3 signature in package");
                                } catch (Exception e4) {
                                    throw new q(4, "Failed to collect certificates from " + str + " using APK Signature Scheme v2", e4);
                                }
                            } catch (n unused2) {
                                o a6 = a.a(str);
                                try {
                                    randomAccessFile2.close();
                                } catch (Exception unused3) {
                                }
                                return a6;
                            }
                        } catch (n unused4) {
                            m mVar2 = f.f10223a.get(str).get(com.meituan.android.walle.a.f52604d);
                            if (mVar2 != null) {
                                o oVar2 = new o(a(b.a(randomAccessFile2, mVar2).f10216a));
                                try {
                                    randomAccessFile2.close();
                                } catch (Exception unused5) {
                                }
                                return oVar2;
                            }
                            throw new n("findVerifiedSigner, No APK Signature Scheme v2 signature in package");
                        } catch (Exception e5) {
                            throw new q(4, "Failed to collect certificates from " + str + " using APK Signature Scheme v3", e5);
                        }
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile = randomAccessFile2;
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Exception unused6) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e6) {
                    throw new q(4, "Failed to collect certificates from " + str + " when findSignatureInfo at once", e6);
                }
            } catch (Exception unused7) {
                throw new q(6, "failed to read apk file, minSignatureSchemeVersion : 1, apkPath : ".concat(String.valueOf(str)));
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Signature[] a(Certificate[][] certificateArr) {
        Signature[] signatureArr = new Signature[certificateArr.length];
        for (int i2 = 0; i2 < certificateArr.length; i2++) {
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 21 && i4 <= 28) {
                Constructor a4 = com.bytedance.pangle.a.b.a.a(Signature.class, Certificate[].class);
                if (a4 != null) {
                    a4.setAccessible(true);
                }
                if (a4 != null && a4.isAccessible()) {
                    try {
                        signatureArr[i2] = (Signature) a4.newInstance(certificateArr[i2]);
                    } catch (IllegalAccessException e4) {
                        e4.printStackTrace();
                    } catch (InstantiationException e5) {
                        e5.printStackTrace();
                    } catch (InvocationTargetException e6) {
                        e6.printStackTrace();
                    }
                }
            } else {
                signatureArr[i2] = new Signature(certificateArr[i2][0].getEncoded());
            }
        }
        return signatureArr;
    }
}
