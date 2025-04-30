package com.join.mgps.ptr;
/* compiled from: PtrUIHandlerHolder.java */
/* loaded from: classes4.dex */
class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private c f51167a;

    /* renamed from: b  reason: collision with root package name */
    private d f51168b;

    private d() {
    }

    public static void f(d dVar, c cVar) {
        if (cVar == null || dVar == null) {
            return;
        }
        if (dVar.f51167a == null) {
            dVar.f51167a = cVar;
            return;
        }
        while (!dVar.g(cVar)) {
            d dVar2 = dVar.f51168b;
            if (dVar2 == null) {
                d dVar3 = new d();
                dVar3.f51167a = cVar;
                dVar.f51168b = dVar3;
                return;
            }
            dVar = dVar2;
        }
    }

    private boolean g(c cVar) {
        c cVar2 = this.f51167a;
        return cVar2 != null && cVar2 == cVar;
    }

    public static d h() {
        return new d();
    }

    private c i() {
        return this.f51167a;
    }

    public static d k(d dVar, c cVar) {
        if (dVar == null || cVar == null || dVar.f51167a == null) {
            return dVar;
        }
        d dVar2 = dVar;
        d dVar3 = null;
        do {
            if (!dVar.g(cVar)) {
                dVar3 = dVar;
                dVar = dVar.f51168b;
                continue;
            } else if (dVar3 == null) {
                dVar2 = dVar.f51168b;
                dVar.f51168b = null;
                dVar = dVar2;
                continue;
            } else {
                dVar3.f51168b = dVar.f51168b;
                dVar.f51168b = null;
                dVar = dVar3.f51168b;
                continue;
            }
        } while (dVar != null);
        return dVar2 == null ? new d() : dVar2;
    }

    @Override // com.join.mgps.ptr.c
    public void a(PtrFrameLayout ptrFrameLayout) {
        d dVar = this;
        do {
            c i2 = dVar.i();
            if (i2 != null) {
                i2.a(ptrFrameLayout);
            }
            dVar = dVar.f51168b;
        } while (dVar != null);
    }

    @Override // com.join.mgps.ptr.c
    public void b(PtrFrameLayout ptrFrameLayout, boolean z3, byte b4, com.join.mgps.ptr.indicator.a aVar) {
        d dVar = this;
        do {
            c i2 = dVar.i();
            if (i2 != null) {
                i2.b(ptrFrameLayout, z3, b4, aVar);
            }
            dVar = dVar.f51168b;
        } while (dVar != null);
    }

    @Override // com.join.mgps.ptr.c
    public void c(PtrFrameLayout ptrFrameLayout) {
        d dVar = this;
        do {
            c i2 = dVar.i();
            if (i2 != null) {
                i2.c(ptrFrameLayout);
            }
            dVar = dVar.f51168b;
        } while (dVar != null);
    }

    @Override // com.join.mgps.ptr.c
    public void d(PtrFrameLayout ptrFrameLayout) {
        if (j()) {
            d dVar = this;
            do {
                c i2 = dVar.i();
                if (i2 != null) {
                    i2.d(ptrFrameLayout);
                }
                dVar = dVar.f51168b;
            } while (dVar != null);
        }
    }

    @Override // com.join.mgps.ptr.c
    public void e(PtrFrameLayout ptrFrameLayout) {
        d dVar = this;
        do {
            c i2 = dVar.i();
            if (i2 != null) {
                i2.e(ptrFrameLayout);
            }
            dVar = dVar.f51168b;
        } while (dVar != null);
    }

    public boolean j() {
        return this.f51167a != null;
    }
}
