package com.efs.sdk.base.core.f;

import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class d extends a {

    /* renamed from: c  reason: collision with root package name */
    private AtomicInteger f11372c = new AtomicInteger(0);

    /* renamed from: d  reason: collision with root package name */
    private AtomicInteger f11373d = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    public AtomicInteger f11371b = new AtomicInteger(0);

    /* renamed from: e  reason: collision with root package name */
    private AtomicInteger f11374e = new AtomicInteger(0);

    /* renamed from: f  reason: collision with root package name */
    private AtomicInteger f11375f = new AtomicInteger(0);

    @Override // com.efs.sdk.base.core.f.a
    public final void a() {
        f fVar;
        if ((this.f11372c.get() == 0 && this.f11373d.get() == 0 && this.f11371b.get() == 0 && this.f11375f.get() == 0 && this.f11374e.get() == 0) || this.f11363a == null || !ControllerCenter.getGlobalEnvStruct().isEnableWaStat()) {
            return;
        }
        ControllerCenter controllerCenter = this.f11363a;
        int i2 = this.f11372c.get();
        int i4 = this.f11373d.get();
        int i5 = this.f11371b.get();
        int i6 = this.f11375f.get();
        int i7 = this.f11374e.get();
        fVar = f.a.f11380a;
        b bVar = new b("efs_core", "lf_st", fVar.f11376a.f11370c);
        bVar.put("create_cnt", Integer.valueOf(i2));
        bVar.put("cache_cnt", Integer.valueOf(i4));
        bVar.put("req_cnt", Integer.valueOf(i5));
        bVar.put("err_cnt", Integer.valueOf(i6));
        bVar.put("expire_cnt", Integer.valueOf(i7));
        this.f11372c.addAndGet(i2 * (-1));
        this.f11373d.addAndGet(i4 * (-1));
        this.f11371b.addAndGet(i5 * (-1));
        this.f11375f.addAndGet(i6 * (-1));
        this.f11374e.addAndGet(i7 * (-1));
        controllerCenter.send(bVar);
    }

    public final void b() {
        this.f11372c.incrementAndGet();
    }

    public final void c() {
        this.f11373d.incrementAndGet();
    }

    public final void d() {
        this.f11374e.incrementAndGet();
    }

    public final void e() {
        this.f11375f.incrementAndGet();
    }
}
