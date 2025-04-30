package com.efs.sdk.base.core.util.a;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class e<T> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private List<b<T>> f11390a = new ArrayList(5);

    /* renamed from: b  reason: collision with root package name */
    private c<T> f11391b;

    public e(@NonNull c<T> cVar) {
        this.f11391b = cVar;
    }

    public final void a(@NonNull List<b<T>> list) {
        this.f11390a.addAll(list);
    }

    @Override // java.lang.Runnable
    public void run() {
        a();
    }

    public final T a() {
        T t3 = null;
        try {
            Iterator<b<T>> it2 = this.f11390a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            t3 = this.f11391b.a();
            for (b<T> bVar : this.f11390a) {
                bVar.a(this.f11391b, t3);
            }
            for (b<T> bVar2 : this.f11390a) {
                bVar2.result(t3);
            }
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.a("efs.base", "efs.util.concurrent", th);
            Iterator<b<T>> it3 = this.f11390a.iterator();
            while (it3.hasNext()) {
                it3.next();
            }
        }
        return t3;
    }
}
