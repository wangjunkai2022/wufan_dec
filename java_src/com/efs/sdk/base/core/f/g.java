package com.efs.sdk.base.core.f;

import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class g extends com.efs.sdk.base.core.f.a {

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentHashMap<String, a> f11381b = new ConcurrentHashMap<>(10);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f11382a;

        /* renamed from: b  reason: collision with root package name */
        String f11383b;

        /* renamed from: c  reason: collision with root package name */
        String f11384c;

        /* renamed from: d  reason: collision with root package name */
        AtomicInteger f11385d = new AtomicInteger(0);

        a(String str, String str2, String str3) {
            this.f11382a = str;
            this.f11383b = str2;
            this.f11384c = str3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2, String str3) {
        String str4 = str + "_" + str2 + "_" + str3.trim();
        if (!this.f11381b.containsKey(str4) || this.f11381b.get(str4) == null) {
            this.f11381b.putIfAbsent(str4, new a(str, str2, str3));
        }
        this.f11381b.get(str4).f11385d.incrementAndGet();
    }

    @Override // com.efs.sdk.base.core.f.a
    public final void a() {
        f fVar;
        try {
            if (this.f11363a != null) {
                for (Map.Entry<String, a> entry : this.f11381b.entrySet()) {
                    a value = entry.getValue();
                    int i2 = value.f11385d.get();
                    if (i2 > 0) {
                        ControllerCenter controllerCenter = this.f11363a;
                        String str = value.f11382a;
                        String str2 = value.f11383b;
                        String str3 = value.f11384c;
                        fVar = f.a.f11380a;
                        b bVar = new b("efs_core", "req_succ_rate", fVar.f11376a.f11370c);
                        bVar.put("rep_code", str);
                        bVar.put("px_code", str2);
                        bVar.put("path", str3);
                        bVar.put("cnt", Integer.valueOf(i2));
                        controllerCenter.send(bVar);
                        value.f11385d.addAndGet(i2 * (-1));
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
