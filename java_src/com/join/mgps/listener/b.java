package com.join.mgps.listener;

import java.util.ArrayList;
import java.util.List;
/* compiled from: AppPaBiTopObserver.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f51001b;

    /* renamed from: c  reason: collision with root package name */
    private static Object f51002c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private List<a> f51003a = new ArrayList();

    /* compiled from: AppPaBiTopObserver.java */
    /* loaded from: classes4.dex */
    public interface a {
        void j();
    }

    private b() {
    }

    public static b b() {
        if (f51001b == null) {
            synchronized (f51002c) {
                if (f51001b == null) {
                    f51001b = new b();
                }
            }
        }
        return f51001b;
    }

    public void a(a aVar) {
        if (this.f51003a.contains(aVar)) {
            return;
        }
        this.f51003a.add(aVar);
    }

    public void c() {
        List<a> list = this.f51003a;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                try {
                    this.f51003a.get(i2).j();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public void d(a aVar) {
        List<a> list = this.f51003a;
        if (list != null) {
            list.remove(aVar);
        }
    }
}
