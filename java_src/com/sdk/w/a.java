package com.sdk.w;

import android.content.Context;
import com.sdk.Unicorn.base.module.manager.SDKManager;
import com.sdk.f.c;
import com.sdk.f.g;
import com.sdk.g.b;
/* loaded from: classes4.dex */
public class a<T> extends b<T> {
    public a(Context context, com.sdk.e.a<T> aVar, c cVar) {
        super(context, aVar, cVar);
        if (!g.f56649d) {
            this.f56663i = g.a.f56652b.a();
            g.a.f56651a.a();
            return;
        }
        String str = SDKManager.testHost;
        if (!com.sdk.o.b.b(SDKManager.statisticalTestHost).booleanValue()) {
            g.a.f56651a.a();
        }
        this.f56663i = com.sdk.o.b.b(str).booleanValue() ? str : g.a.f56652b.a();
    }
}
