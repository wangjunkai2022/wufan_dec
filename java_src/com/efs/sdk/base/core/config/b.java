package com.efs.sdk.base.core.config;

import android.content.Context;
import com.alipay.sdk.app.statistic.c;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.NetworkUtil;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public com.efs.sdk.base.core.config.a f11328a;

    /* renamed from: b  reason: collision with root package name */
    public Context f11329b;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final b f11330a = new b((byte) 0);

        public static /* synthetic */ b a() {
            return f11330a;
        }
    }

    /* synthetic */ b(byte b4) {
        this();
    }

    public final String a() {
        return this.f11328a.b(c.f9616k, NetworkUtil.NETWORK_CLASS_DISCONNECTED).toString();
    }

    private b() {
        this.f11329b = ControllerCenter.getGlobalEnvStruct().mAppContext;
    }
}
