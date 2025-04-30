package com.alipay.security.mobile.module.deviceinfo;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f9901a = new a();

    private a() {
    }

    private static a a() {
        return f9901a;
    }

    private static byte[] b(Context context, String str) {
        try {
            for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(64)) {
                if (packageInfo.packageName.equals(str)) {
                    return packageInfo.signatures[0].toByteArray();
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static byte[] c(Context context, String str) {
        try {
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(b(context, str)))).getPublicKey().getEncoded();
        } catch (Exception unused) {
            return null;
        }
    }
}
