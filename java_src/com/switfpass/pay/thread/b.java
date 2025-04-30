package com.switfpass.pay.thread;
/* loaded from: classes4.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private a f58909a;

    public abstract Object a();

    public void b(a aVar) {
        this.f58909a = aVar;
    }

    public void c(int i2) {
        a aVar = this.f58909a;
        if (aVar != null) {
            aVar.a(i2);
        }
    }
}
