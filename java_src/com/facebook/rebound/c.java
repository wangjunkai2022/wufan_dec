package com.facebook.rebound;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: BaseSpringSystem.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private final n f13415c;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, i> f13413a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Set<i> f13414b = new CopyOnWriteArraySet();

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArraySet<p> f13416d = new CopyOnWriteArraySet<>();

    /* renamed from: e  reason: collision with root package name */
    private boolean f13417e = true;

    public c(n nVar) {
        if (nVar != null) {
            this.f13415c = nVar;
            nVar.a(this);
            return;
        }
        throw new IllegalArgumentException("springLooper is required");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        i iVar = this.f13413a.get(str);
        if (iVar != null) {
            this.f13414b.add(iVar);
            if (g()) {
                this.f13417e = false;
                this.f13415c.b();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("springId " + str + " does not reference a registered spring");
    }

    public void b(p pVar) {
        if (pVar != null) {
            this.f13416d.add(pVar);
            return;
        }
        throw new IllegalArgumentException("newListener is required");
    }

    void c(double d4) {
        for (i iVar : this.f13414b) {
            if (iVar.D()) {
                iVar.b(d4 / 1000.0d);
            } else {
                this.f13414b.remove(iVar);
            }
        }
    }

    public i d() {
        i iVar = new i(this);
        j(iVar);
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(i iVar) {
        if (iVar != null) {
            this.f13414b.remove(iVar);
            this.f13413a.remove(iVar.i());
            return;
        }
        throw new IllegalArgumentException("spring is required");
    }

    public List<i> f() {
        List arrayList;
        Collection<i> values = this.f13413a.values();
        if (values instanceof List) {
            arrayList = (List) values;
        } else {
            arrayList = new ArrayList(values);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public boolean g() {
        return this.f13417e;
    }

    public i h(String str) {
        if (str != null) {
            return this.f13413a.get(str);
        }
        throw new IllegalArgumentException("id is required");
    }

    public void i(double d4) {
        Iterator<p> it2 = this.f13416d.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
        c(d4);
        if (this.f13414b.isEmpty()) {
            this.f13417e = true;
        }
        Iterator<p> it3 = this.f13416d.iterator();
        while (it3.hasNext()) {
            it3.next().b(this);
        }
        if (this.f13417e) {
            this.f13415c.c();
        }
    }

    void j(i iVar) {
        if (iVar != null) {
            if (!this.f13413a.containsKey(iVar.i())) {
                this.f13413a.put(iVar.i(), iVar);
                return;
            }
            throw new IllegalArgumentException("spring is already registered");
        }
        throw new IllegalArgumentException("spring is required");
    }

    public void k() {
        this.f13416d.clear();
    }

    public void l(p pVar) {
        if (pVar != null) {
            this.f13416d.remove(pVar);
            return;
        }
        throw new IllegalArgumentException("listenerToRemove is required");
    }
}
