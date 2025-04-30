package com.join.mgps.Util;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
/* compiled from: SignUtils.java */
/* loaded from: classes3.dex */
public class v1 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27869a = "RSA";

    /* renamed from: b  reason: collision with root package name */
    private static final String f27870b = "SHA1WithRSA";

    /* renamed from: c  reason: collision with root package name */
    private static final String f27871c = "UTF-8";

    public static String a(String str, String str2) {
        try {
            PrivateKey generatePrivate = KeyFactory.getInstance(f27869a).generatePrivate(new PKCS8EncodedKeySpec(k.a(str2)));
            Signature signature = Signature.getInstance("SHA1WithRSA");
            signature.initSign(generatePrivate);
            signature.update(str.getBytes("UTF-8"));
            return k.b(signature.sign());
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
