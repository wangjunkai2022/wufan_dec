package com.efs.sdk.base.core.config.a;

import com.efs.sdk.base.IConfigRefreshAction;
/* loaded from: classes2.dex */
public final class a implements IConfigRefreshAction {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.efs.sdk.base.core.config.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0054a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f11309a = new a();
    }

    public static a a() {
        return C0054a.f11309a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a1, code lost:
        com.efs.sdk.base.core.util.d.a("efs.config", "config request succ, config is:\n ".concat(java.lang.String.valueOf(r2)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ae, code lost:
        return r2;
     */
    @Override // com.efs.sdk.base.IConfigRefreshAction
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String refresh() {
        /*
            r10 = this;
            com.efs.sdk.base.core.config.GlobalEnvStruct r0 = com.efs.sdk.base.core.controller.ControllerCenter.getGlobalEnvStruct()
            android.content.Context r0 = r0.mAppContext
            boolean r0 = com.efs.sdk.base.core.util.NetworkUtil.isConnected(r0)
            java.lang.String r1 = "efs.config"
            java.lang.String r2 = ""
            if (r0 != 0) goto L16
            java.lang.String r0 = "Config refresh fail, network is disconnected."
            com.efs.sdk.base.core.util.d.a(r1, r0)
            return r2
        L16:
            com.efs.sdk.base.core.config.a.c r0 = com.efs.sdk.base.core.config.a.c.a()
            r3 = 1
            java.lang.String r0 = r0.a(r3)
            com.efs.sdk.base.core.a.c r4 = com.efs.sdk.base.core.a.c.a()
            r5 = 0
        L24:
            r6 = 3
            if (r5 >= r6) goto La1
            com.efs.sdk.base.core.a.a r6 = com.efs.sdk.base.core.a.a.a()
            java.lang.String r7 = r4.b()
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r0)
            java.lang.String r9 = "/apm_cc"
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            boolean r6 = r6.f11241a
            if (r6 == 0) goto L53
            java.lang.String r6 = java.lang.String.valueOf(r8)
            java.lang.String r9 = "get config from server, url is "
            java.lang.String r6 = r9.concat(r6)
            java.lang.String r9 = "efs.px.api"
            com.efs.sdk.base.core.util.d.a(r9, r6)
        L53:
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>(r3)
            java.lang.String r9 = "wpk-header"
            r6.put(r9, r7)
            com.efs.sdk.base.core.util.b.d r7 = new com.efs.sdk.base.core.util.b.d
            r7.<init>(r8)
            com.efs.sdk.base.core.util.b.d r6 = r7.a(r6)
            com.efs.sdk.base.core.a.b r7 = com.efs.sdk.base.core.a.b.a()
            com.efs.sdk.base.core.util.b.d r6 = r6.a(r7)
            com.efs.sdk.base.core.util.b.c r6 = r6.a()
            com.efs.sdk.base.core.util.b.b r7 = r6.f11401a
            java.lang.String r8 = "get"
            r7.f11398e = r8
            java.lang.Object r6 = r6.a()
            com.efs.sdk.base.http.HttpResponse r6 = (com.efs.sdk.base.http.HttpResponse) r6
            boolean r7 = r6.succ
            if (r7 == 0) goto L86
            java.lang.String r2 = r6.data
            goto La1
        L86:
            java.lang.String r7 = r6.getBizCode()
            boolean r7 = android.text.TextUtils.isEmpty(r7)
            if (r7 != 0) goto La0
            java.lang.String r6 = r6.getBizCode()
            java.lang.String r7 = "1000"
            boolean r6 = r7.equals(r6)
            if (r6 != 0) goto L9d
            goto La0
        L9d:
            int r5 = r5 + 1
            goto L24
        La0:
            return r2
        La1:
            java.lang.String r0 = java.lang.String.valueOf(r2)
            java.lang.String r3 = "config request succ, config is:\n "
            java.lang.String r0 = r3.concat(r0)
            com.efs.sdk.base.core.util.d.a(r1, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.efs.sdk.base.core.config.a.a.refresh():java.lang.String");
    }
}
