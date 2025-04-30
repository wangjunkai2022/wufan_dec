package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;
/* compiled from: PendingPost.java */
/* loaded from: classes5.dex */
final class g {

    /* renamed from: d  reason: collision with root package name */
    private static final List<g> f73255d = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    Object f73256a;

    /* renamed from: b  reason: collision with root package name */
    l f73257b;

    /* renamed from: c  reason: collision with root package name */
    g f73258c;

    private g(Object obj, l lVar) {
        this.f73256a = obj;
        this.f73257b = lVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g a(l lVar, Object obj) {
        List<g> list = f73255d;
        synchronized (list) {
            int size = list.size();
            if (size > 0) {
                g remove = list.remove(size - 1);
                remove.f73256a = obj;
                remove.f73257b = lVar;
                remove.f73258c = null;
                return remove;
            }
            return new g(obj, lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(g gVar) {
        gVar.f73256a = null;
        gVar.f73257b = null;
        gVar.f73258c = null;
        List<g> list = f73255d;
        synchronized (list) {
            if (list.size() < 10000) {
                list.add(gVar);
            }
        }
    }
}
