package com.sdk.q;

import com.sdk.f.g;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56687a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f56688b = Boolean.valueOf(g.f56647b);

    public static PublicKey a(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(new com.sdk.h.a().a(str)));
        } catch (Exception e4) {
            com.sdk.o.b.a(f56687a, e4.toString(), f56688b);
            return null;
        }
    }
}
