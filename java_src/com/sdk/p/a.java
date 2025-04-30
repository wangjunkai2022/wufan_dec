package com.sdk.p;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.sdk.p.f;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56677a = "com.sdk.p.a";

    /* renamed from: b  reason: collision with root package name */
    public static final Boolean f56678b = Boolean.valueOf(com.sdk.f.g.f56647b);

    public static f.a a(Context context) {
        f.a aVar;
        f.a aVar2 = f.a.f56681c;
        if (context == null) {
            return aVar2;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return aVar2;
            }
            String typeName = activeNetworkInfo.getTypeName();
            if ("MOBILE".equalsIgnoreCase(typeName)) {
                aVar = f.a.f56680b;
            } else if (!"WIFI".equalsIgnoreCase(typeName)) {
                return aVar2;
            } else {
                aVar = f.a.f56679a;
            }
            return aVar;
        } catch (Throwable th) {
            com.sdk.o.b.a(f56677a, th.getMessage(), f56678b);
            return aVar2;
        }
    }
}
