package org.greenrobot.eventbus;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Subscription.java */
/* loaded from: classes5.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    final Object f73288a;

    /* renamed from: b  reason: collision with root package name */
    final j f73289b;

    /* renamed from: c  reason: collision with root package name */
    volatile boolean f73290c = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Object obj, j jVar) {
        this.f73288a = obj;
        this.f73289b = jVar;
    }

    public boolean equals(Object obj) {
        if (obj instanceof l) {
            l lVar = (l) obj;
            return this.f73288a == lVar.f73288a && this.f73289b.equals(lVar.f73289b);
        }
        return false;
    }

    public int hashCode() {
        return this.f73288a.hashCode() + this.f73289b.f73270f.hashCode();
    }
}
