package com.join.mgps.listener;

import java.util.ArrayList;
import java.util.List;
/* compiled from: AppMsgObserver.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f50998b;

    /* renamed from: c  reason: collision with root package name */
    private static Object f50999c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private List<InterfaceC0216a> f51000a = new ArrayList();

    /* compiled from: AppMsgObserver.java */
    /* renamed from: com.join.mgps.listener.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0216a {
        void j();
    }

    private a() {
    }

    public static a b() {
        if (f50998b == null) {
            synchronized (f50999c) {
                if (f50998b == null) {
                    f50998b = new a();
                }
            }
        }
        return f50998b;
    }

    public void a(InterfaceC0216a interfaceC0216a) {
        if (this.f51000a.contains(interfaceC0216a)) {
            return;
        }
        this.f51000a.add(interfaceC0216a);
    }

    public void c() {
        List<InterfaceC0216a> list = this.f51000a;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                try {
                    this.f51000a.get(i2).j();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public void d(InterfaceC0216a interfaceC0216a) {
        List<InterfaceC0216a> list = this.f51000a;
        if (list != null) {
            list.remove(interfaceC0216a);
        }
    }
}
