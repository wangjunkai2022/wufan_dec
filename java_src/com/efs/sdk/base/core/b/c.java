package com.efs.sdk.base.core.b;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.efs.sdk.base.core.b.a;
import com.efs.sdk.base.core.controller.ControllerCenter;
import java.io.File;
/* loaded from: classes2.dex */
public final class c extends Handler implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11263a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final c f11264a = new c((byte) 0);
    }

    /* synthetic */ c(byte b4) {
        this();
    }

    public static c a() {
        return a.f11264a;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 2) {
            com.efs.sdk.base.core.util.d.a("efs.cache", "disk listener not support command: " + message.what, null);
            return;
        }
        com.efs.sdk.base.core.util.a.d.a(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.efs.sdk.base.core.b.a unused;
        unused = a.b.f11261a;
        File f4 = com.efs.sdk.base.core.util.a.f(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid());
        if (f4.exists()) {
            for (File file : com.efs.sdk.base.core.util.b.d(f4)) {
                if (com.efs.sdk.base.core.b.a.a(file.getName())) {
                    com.efs.sdk.base.core.b.a.c(file);
                }
            }
        }
        com.efs.sdk.base.core.config.a.c a4 = com.efs.sdk.base.core.config.a.c.a();
        String str = a4.f11319d.f11314e.containsKey("disk_bytes") ? a4.f11319d.f11314e.get("disk_bytes") : "4194304";
        long parseLong = Long.parseLong(TextUtils.isEmpty(str) ? "4194304" : str);
        long c4 = com.efs.sdk.base.core.util.b.c(com.efs.sdk.base.core.util.a.f(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid())) + com.efs.sdk.base.core.util.b.c(com.efs.sdk.base.core.util.a.d(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid()));
        boolean z3 = c4 < parseLong;
        this.f11263a = z3;
        if (!z3) {
            com.efs.sdk.base.core.util.d.a("efs.cache", "Cache Limited! curr " + c4 + "byte, max " + parseLong + " byte.", null);
        }
        sendEmptyMessageDelayed(2, TTAdConstant.AD_MAX_EVENT_TIME);
    }

    private c() {
        super(com.efs.sdk.base.core.util.a.a.f11388a.getLooper());
        this.f11263a = true;
        sendEmptyMessageDelayed(2, 60000L);
    }
}
