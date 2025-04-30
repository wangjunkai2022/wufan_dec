package com.efs.sdk.base.core.c;

import android.os.Handler;
import android.os.Message;
import com.efs.sdk.base.core.b.a;
import com.efs.sdk.base.core.b.h;
import com.efs.sdk.base.core.c.f;
import com.efs.sdk.base.core.config.b;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class d extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public int f11278a;

    /* renamed from: b  reason: collision with root package name */
    public c f11279b;

    /* renamed from: c  reason: collision with root package name */
    private c f11280c;

    /* renamed from: d  reason: collision with root package name */
    private List<String> f11281d;

    /* renamed from: e  reason: collision with root package name */
    private AtomicInteger f11282e;

    /* renamed from: f  reason: collision with root package name */
    private com.efs.sdk.base.core.b.f f11283f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final d f11284a = new d((byte) 0);
    }

    /* synthetic */ d(byte b4) {
        this();
    }

    public static d a() {
        return a.f11284a;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        f fVar;
        com.efs.sdk.base.core.config.b bVar;
        com.efs.sdk.base.core.b.a aVar;
        List<File> list;
        com.efs.sdk.base.core.f.f fVar2;
        super.handleMessage(message);
        fVar = f.a.f11292a;
        if (fVar.a()) {
            int i2 = message.what;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                Object obj = message.obj;
                if (obj != null) {
                    this.f11281d.remove(obj.toString());
                }
                int incrementAndGet = message.arg1 != 0 ? this.f11282e.incrementAndGet() : 0;
                if (this.f11281d.isEmpty()) {
                    if (incrementAndGet < 5) {
                        sendEmptyMessage(0);
                        return;
                    }
                    this.f11282e.set(0);
                    sendEmptyMessageDelayed(0, ControllerCenter.getGlobalEnvStruct().getLogSendDelayMills());
                    com.efs.sdk.base.core.util.d.a("efs.send_log", "request error cnt gt 5, next request delay 10s");
                    return;
                }
                return;
            }
            bVar = b.a.f11330a;
            String a4 = bVar.a();
            if (!NetworkUtil.NETWORK_CLASS_DENIED.equalsIgnoreCase(a4) && !NetworkUtil.NETWORK_CLASS_DISCONNECTED.equalsIgnoreCase(a4)) {
                List<com.efs.sdk.base.core.d.b> emptyList = Collections.emptyList();
                try {
                    aVar = a.b.f11261a;
                    int i4 = this.f11278a;
                    com.efs.sdk.base.core.b.f fVar3 = this.f11283f;
                    aVar.a();
                    aVar.a();
                    File f4 = com.efs.sdk.base.core.util.a.f(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid());
                    if (!f4.exists()) {
                        list = Collections.emptyList();
                    } else {
                        List<File> d4 = com.efs.sdk.base.core.util.b.d(f4);
                        if (aVar.f11258b) {
                            fVar2 = f.a.f11380a;
                            int size = d4.size();
                            if (fVar2.f11377b != null && ControllerCenter.getGlobalEnvStruct().isEnableWaStat()) {
                                com.efs.sdk.base.core.f.b bVar2 = new com.efs.sdk.base.core.f.b("efs_core", "log_lag", fVar2.f11376a.f11370c);
                                bVar2.put("cnt", Integer.valueOf(size));
                                fVar2.f11377b.send(bVar2);
                            }
                            aVar.f11258b = false;
                        }
                        Collections.sort(d4, aVar.f11260d);
                        ArrayList arrayList = new ArrayList(i4);
                        for (int size2 = d4.size() - 1; size2 >= 0 && arrayList.size() < i4; size2--) {
                            File file = d4.get(size2);
                            if (file.exists() && (fVar3 == null || !fVar3.a(file))) {
                                arrayList.add(file);
                            }
                        }
                        list = arrayList;
                    }
                    ArrayList arrayList2 = new ArrayList(i4);
                    for (File file2 : list) {
                        com.efs.sdk.base.core.d.b a5 = aVar.a(file2);
                        if (a5 == null) {
                            com.efs.sdk.base.core.util.d.a("efs.cache", "file upload error, name is " + file2.getName(), null);
                        } else {
                            arrayList2.add(a5);
                        }
                    }
                    emptyList = arrayList2;
                } catch (Throwable unused) {
                }
                for (com.efs.sdk.base.core.d.b bVar3 : emptyList) {
                    if ("wa".equals(bVar3.f11349a.f11342a) || b.a().a(bVar3.f11349a.f11342a, bVar3.a())) {
                        c cVar = this.f11279b;
                        if ("wa".equals(bVar3.f11349a.f11342a)) {
                            cVar = this.f11280c;
                        }
                        String uuid = UUID.randomUUID().toString();
                        this.f11281d.add(uuid);
                        if (com.efs.sdk.base.core.util.a.d.a(new e(bVar3, cVar, uuid)) == null) {
                            a(uuid, -1);
                        }
                    }
                }
                if (this.f11281d.size() <= 0) {
                    sendEmptyMessageDelayed(0, ControllerCenter.getGlobalEnvStruct().getLogSendIntervalMills());
                    return;
                }
                return;
            }
            com.efs.sdk.base.core.util.d.a("efs.send_log", "log cann't be send because net status is ".concat(String.valueOf(a4)));
            sendEmptyMessageDelayed(0, ControllerCenter.getGlobalEnvStruct().getLogSendIntervalMills());
        }
    }

    private d() {
        super(com.efs.sdk.base.core.util.a.a.f11388a.getLooper());
        this.f11278a = 5;
        this.f11281d = new ArrayList();
        this.f11282e = new AtomicInteger(0);
        this.f11279b = new com.efs.sdk.base.core.c.a();
        this.f11280c = new com.efs.sdk.base.core.f.e();
        this.f11283f = new h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Object obj, int i2) {
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = obj;
        obtain.arg1 = i2;
        sendMessage(obtain);
    }
}
