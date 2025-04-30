package com.efs.sdk.base.core.f;

import com.efs.sdk.base.core.controller.ControllerCenter;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public c f11376a;

    /* renamed from: b  reason: collision with root package name */
    public ControllerCenter f11377b;

    /* renamed from: c  reason: collision with root package name */
    public d f11378c;

    /* renamed from: d  reason: collision with root package name */
    public g f11379d;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final f f11380a = new f((byte) 0);

        public static /* synthetic */ f a() {
            return f11380a;
        }
    }

    /* synthetic */ f(byte b4) {
        this();
    }

    public final void a(String str, String str2, String str3) {
        this.f11379d.a(str, str2, str3);
    }

    private f() {
        this.f11376a = new c();
        this.f11378c = new d();
        this.f11379d = new g();
    }

    public final void a(int i2) {
        ControllerCenter controllerCenter = this.f11377b;
        if (controllerCenter != null) {
            controllerCenter.send(a("flow_limit", i2));
        }
    }

    public final void a(int i2, String str) {
        if (this.f11377b != null || ControllerCenter.getGlobalEnvStruct().isEnableWaStat()) {
            b a4 = a("flow_limit_type", i2);
            a4.put("code", str);
            this.f11377b.send(a4);
        }
    }

    public final b a(String str, int i2) {
        b bVar = new b("efs_core", str, this.f11376a.f11370c);
        bVar.put("cver", Integer.valueOf(i2));
        return bVar;
    }
}
