package com.facebook.rebound;

import com.facebook.rebound.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
/* compiled from: AnimationQueue.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: g  reason: collision with root package name */
    private boolean f13411g;

    /* renamed from: b  reason: collision with root package name */
    private final Queue<Double> f13406b = new LinkedList();

    /* renamed from: c  reason: collision with root package name */
    private final Queue<Double> f13407c = new LinkedList();

    /* renamed from: d  reason: collision with root package name */
    private final List<InterfaceC0092b> f13408d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final ArrayList<Double> f13409e = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    private final f f13405a = f.e();

    /* renamed from: f  reason: collision with root package name */
    private final f.a f13410f = new a();

    /* compiled from: AnimationQueue.java */
    /* loaded from: classes2.dex */
    class a extends f.a {
        a() {
        }

        @Override // com.facebook.rebound.f.a
        public void a(long j4) {
            b.this.g(j4);
        }
    }

    /* compiled from: AnimationQueue.java */
    /* renamed from: com.facebook.rebound.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0092b {
        void a(Double d4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(long j4) {
        int max;
        Double poll = this.f13406b.poll();
        if (poll != null) {
            this.f13407c.offer(poll);
            max = 0;
        } else {
            max = Math.max(this.f13408d.size() - this.f13407c.size(), 0);
        }
        this.f13409e.addAll(this.f13407c);
        int size = this.f13409e.size();
        while (true) {
            size--;
            if (size <= -1) {
                break;
            }
            Double d4 = this.f13409e.get(size);
            int size2 = ((this.f13409e.size() - 1) - size) + max;
            if (this.f13408d.size() > size2) {
                this.f13408d.get(size2).a(d4);
            }
        }
        this.f13409e.clear();
        while (this.f13407c.size() + max >= this.f13408d.size()) {
            this.f13407c.poll();
        }
        if (this.f13407c.isEmpty() && this.f13406b.isEmpty()) {
            this.f13411g = false;
        } else {
            this.f13405a.f(this.f13410f);
        }
    }

    private void i() {
        if (this.f13411g) {
            return;
        }
        this.f13411g = true;
        this.f13405a.f(this.f13410f);
    }

    public void b(Collection<Double> collection) {
        this.f13406b.addAll(collection);
        i();
    }

    public void c(InterfaceC0092b interfaceC0092b) {
        this.f13408d.add(interfaceC0092b);
    }

    public void d(Double d4) {
        this.f13406b.add(d4);
        i();
    }

    public void e() {
        this.f13408d.clear();
    }

    public void f() {
        this.f13406b.clear();
    }

    public void h(InterfaceC0092b interfaceC0092b) {
        this.f13408d.remove(interfaceC0092b);
    }
}
