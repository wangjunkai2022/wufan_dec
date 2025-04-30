package org.jboss.netty.channel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
/* compiled from: DefaultChannelPipeline.java */
/* loaded from: classes5.dex */
public class x implements n {

    /* renamed from: f  reason: collision with root package name */
    static final p f73594f = new b();

    /* renamed from: a  reason: collision with root package name */
    private volatile e f73595a;

    /* renamed from: b  reason: collision with root package name */
    private volatile p f73596b;

    /* renamed from: c  reason: collision with root package name */
    private volatile a f73597c;

    /* renamed from: d  reason: collision with root package name */
    private volatile a f73598d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, a> f73599e = new HashMap(4);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultChannelPipeline.java */
    /* loaded from: classes5.dex */
    public final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        volatile a f73600a;

        /* renamed from: b  reason: collision with root package name */
        volatile a f73601b;

        /* renamed from: c  reason: collision with root package name */
        private final String f73602c;

        /* renamed from: d  reason: collision with root package name */
        private final ChannelHandler f73603d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f73604e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f73605f;

        /* renamed from: g  reason: collision with root package name */
        private volatile Object f73606g;

        a(a aVar, a aVar2, String str, ChannelHandler channelHandler) {
            Objects.requireNonNull(str, "name");
            Objects.requireNonNull(channelHandler, "handler");
            boolean z3 = channelHandler instanceof r;
            this.f73604e = z3;
            boolean z4 = channelHandler instanceof g;
            this.f73605f = z4;
            if (!z3 && !z4) {
                throw new IllegalArgumentException("handler must be either " + r.class.getName() + " or " + g.class.getName() + external.org.apache.commons.lang3.d.f65364a);
            }
            this.f73601b = aVar;
            this.f73600a = aVar2;
            this.f73602c = str;
            this.f73603d = channelHandler;
        }

        @Override // org.jboss.netty.channel.m
        public void a(h hVar) {
            a v3 = x.this.v(this.f73600a);
            if (v3 != null) {
                x.this.E(v3, hVar);
            }
        }

        @Override // org.jboss.netty.channel.m
        public void b(Object obj) {
            this.f73606g = obj;
        }

        @Override // org.jboss.netty.channel.m
        public void c(h hVar) {
            a u3 = x.this.u(this.f73601b);
            if (u3 == null) {
                try {
                    x.this.m().a(x.this, hVar);
                    return;
                } catch (Throwable th) {
                    x.this.A(hVar, th);
                    return;
                }
            }
            x.this.D(u3, hVar);
        }

        @Override // org.jboss.netty.channel.m
        public Object d() {
            return this.f73606g;
        }

        @Override // org.jboss.netty.channel.m
        public boolean e() {
            return this.f73604e;
        }

        @Override // org.jboss.netty.channel.m
        public boolean f() {
            return this.f73605f;
        }

        @Override // org.jboss.netty.channel.m
        public e getChannel() {
            return getPipeline().getChannel();
        }

        @Override // org.jboss.netty.channel.m
        public ChannelHandler getHandler() {
            return this.f73603d;
        }

        @Override // org.jboss.netty.channel.m
        public String getName() {
            return this.f73602c;
        }

        @Override // org.jboss.netty.channel.m
        public n getPipeline() {
            return x.this;
        }
    }

    /* compiled from: DefaultChannelPipeline.java */
    /* loaded from: classes5.dex */
    private static final class b implements p {
        b() {
        }

        @Override // org.jboss.netty.channel.p
        public void a(n nVar, h hVar) {
        }

        @Override // org.jboss.netty.channel.p
        public j b(n nVar, Runnable runnable) {
            return s.i(nVar.getChannel(), new RejectedExecutionException("Not attached yet"));
        }

        @Override // org.jboss.netty.channel.p
        public void c(n nVar, h hVar, ChannelPipelineException channelPipelineException) throws Exception {
            throw channelPipelineException;
        }
    }

    private a B(a aVar) {
        if (this.f73597c == this.f73598d) {
            this.f73598d = null;
            this.f73597c = null;
            this.f73599e.clear();
        } else if (aVar == this.f73597c) {
            removeFirst();
        } else if (aVar == this.f73598d) {
            removeLast();
        } else {
            s(aVar);
            a aVar2 = aVar.f73601b;
            a aVar3 = aVar.f73600a;
            aVar2.f73600a = aVar3;
            aVar3.f73601b = aVar2;
            this.f73599e.remove(aVar.getName());
            q(aVar);
        }
        return aVar;
    }

    private ChannelHandler C(a aVar, String str, ChannelHandler channelHandler) {
        boolean z3;
        if (aVar == this.f73597c) {
            removeFirst();
            j(str, channelHandler);
        } else if (aVar == this.f73598d) {
            removeLast();
            g(str, channelHandler);
        } else {
            boolean equals = aVar.getName().equals(str);
            if (!equals) {
                t(str);
            }
            a aVar2 = aVar.f73601b;
            a aVar3 = aVar.f73600a;
            a aVar4 = new a(aVar2, aVar3, str, channelHandler);
            s(aVar);
            r(aVar4);
            aVar2.f73600a = aVar4;
            aVar3.f73601b = aVar4;
            if (!equals) {
                this.f73599e.remove(aVar.getName());
            }
            this.f73599e.put(str, aVar4);
            boolean z4 = true;
            ChannelHandlerLifeCycleException e4 = null;
            try {
                q(aVar);
                e = null;
                z3 = true;
            } catch (ChannelHandlerLifeCycleException e5) {
                e = e5;
                z3 = false;
            }
            try {
                p(aVar4);
            } catch (ChannelHandlerLifeCycleException e6) {
                e4 = e6;
                z4 = false;
            }
            if (!z3 && !z4) {
                throw new ChannelHandlerLifeCycleException("Both " + aVar.getHandler().getClass().getName() + ".afterRemove() and " + aVar4.getHandler().getClass().getName() + ".afterAdd() failed; see logs.");
            } else if (!z3) {
                throw e;
            } else {
                if (!z4) {
                    throw e4;
                }
            }
        }
        return aVar.getHandler();
    }

    private void p(m mVar) {
        if (mVar.getHandler() instanceof h0) {
            h0 h0Var = (h0) mVar.getHandler();
            try {
                h0Var.afterAdd(mVar);
            } catch (Throwable th) {
                boolean z3 = false;
                try {
                    B((a) mVar);
                    z3 = true;
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                if (z3) {
                    throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".afterAdd() has thrown an exception; removed.", th);
                }
                throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".afterAdd() has thrown an exception; also failed to remove.", th);
            }
        }
    }

    private static void q(m mVar) {
        if (mVar.getHandler() instanceof h0) {
            h0 h0Var = (h0) mVar.getHandler();
            try {
                h0Var.afterRemove(mVar);
            } catch (Throwable th) {
                throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".afterRemove() has thrown an exception.", th);
            }
        }
    }

    private static void r(m mVar) {
        if (mVar.getHandler() instanceof h0) {
            h0 h0Var = (h0) mVar.getHandler();
            try {
                h0Var.beforeAdd(mVar);
            } catch (Throwable th) {
                throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".beforeAdd() has thrown an exception; not adding.", th);
            }
        }
    }

    private static void s(m mVar) {
        if (mVar.getHandler() instanceof h0) {
            h0 h0Var = (h0) mVar.getHandler();
            try {
                h0Var.beforeRemove(mVar);
            } catch (Throwable th) {
                throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".beforeRemove() has thrown an exception; not removing.", th);
            }
        }
    }

    private void t(String str) {
        if (this.f73599e.containsKey(str)) {
            throw new IllegalArgumentException("Duplicate handler name: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a u(a aVar) {
        if (aVar == null) {
            return null;
        }
        while (!aVar.f()) {
            aVar = aVar.f73601b;
            if (aVar == null) {
                return null;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a v(a aVar) {
        if (aVar == null) {
            return null;
        }
        while (!aVar.e()) {
            aVar = aVar.f73600a;
            if (aVar == null) {
                return null;
            }
        }
        return aVar;
    }

    private a w(Class<? extends ChannelHandler> cls) {
        a aVar = (a) getContext(cls);
        if (aVar != null) {
            return aVar;
        }
        throw new NoSuchElementException(cls.getName());
    }

    private a x(String str) {
        a aVar = (a) getContext(str);
        if (aVar != null) {
            return aVar;
        }
        throw new NoSuchElementException(str);
    }

    private a y(ChannelHandler channelHandler) {
        a aVar = (a) getContext(channelHandler);
        if (aVar != null) {
            return aVar;
        }
        throw new NoSuchElementException(channelHandler.getClass().getName());
    }

    private void z(String str, ChannelHandler channelHandler) {
        a aVar = new a(null, null, str, channelHandler);
        r(aVar);
        this.f73598d = aVar;
        this.f73597c = aVar;
        this.f73599e.clear();
        this.f73599e.put(str, aVar);
        p(aVar);
    }

    protected void A(h hVar, Throwable th) {
        ChannelPipelineException channelPipelineException;
        if (hVar instanceof e0) {
            th.printStackTrace();
            return;
        }
        if (th instanceof ChannelPipelineException) {
            channelPipelineException = (ChannelPipelineException) th;
        } else {
            channelPipelineException = new ChannelPipelineException(th);
        }
        try {
            this.f73596b.c(this, hVar, channelPipelineException);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void D(a aVar, h hVar) {
        if (!(hVar instanceof p0)) {
            try {
                ((g) aVar.getHandler()).handleDownstream(aVar, hVar);
                return;
            } catch (Throwable th) {
                hVar.d().setFailure(th);
                A(hVar, th);
                return;
            }
        }
        throw new IllegalArgumentException("cannot send an upstream event to downstream");
    }

    void E(a aVar, h hVar) {
        try {
            ((r) aVar.getHandler()).handleUpstream(aVar, hVar);
        } catch (Throwable th) {
            A(hVar, th);
        }
    }

    @Override // org.jboss.netty.channel.n
    public void a(h hVar) {
        a v3 = v(this.f73597c);
        if (v3 == null) {
            return;
        }
        E(v3, hVar);
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler b(String str, String str2, ChannelHandler channelHandler) {
        return C(x(str), str2, channelHandler);
    }

    @Override // org.jboss.netty.channel.n
    public void c(h hVar) {
        a u3 = u(this.f73598d);
        if (u3 == null) {
            try {
                m().a(this, hVar);
                return;
            } catch (Throwable th) {
                A(hVar, th);
                return;
            }
        }
        D(u3, hVar);
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void d(ChannelHandler channelHandler) {
        B(y(channelHandler));
    }

    @Override // org.jboss.netty.channel.n
    public boolean e() {
        return this.f73596b != null;
    }

    @Override // org.jboss.netty.channel.n
    public j execute(Runnable runnable) {
        return m().b(this, runnable);
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void f(String str, String str2, ChannelHandler channelHandler) {
        a x3 = x(str);
        if (x3 == this.f73598d) {
            g(str2, channelHandler);
        } else {
            t(str2);
            a aVar = new a(x3, x3.f73600a, str2, channelHandler);
            r(aVar);
            x3.f73600a.f73601b = aVar;
            x3.f73600a = aVar;
            this.f73599e.put(str2, aVar);
            p(aVar);
        }
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void g(String str, ChannelHandler channelHandler) {
        if (this.f73599e.isEmpty()) {
            z(str, channelHandler);
        } else {
            t(str);
            a aVar = this.f73598d;
            a aVar2 = new a(aVar, null, str, channelHandler);
            r(aVar2);
            aVar.f73600a = aVar2;
            this.f73598d = aVar2;
            this.f73599e.put(str, aVar2);
            p(aVar2);
        }
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler get(String str) {
        a aVar = this.f73599e.get(str);
        if (aVar == null) {
            return null;
        }
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public e getChannel() {
        return this.f73595a;
    }

    @Override // org.jboss.netty.channel.n
    public synchronized m getContext(String str) {
        if (str != null) {
        } else {
            throw new NullPointerException("name");
        }
        return this.f73599e.get(str);
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler getFirst() {
        a aVar = this.f73597c;
        if (aVar == null) {
            return null;
        }
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler getLast() {
        a aVar = this.f73598d;
        if (aVar == null) {
            return null;
        }
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public List<String> getNames() {
        ArrayList arrayList = new ArrayList();
        if (this.f73599e.isEmpty()) {
            return arrayList;
        }
        a aVar = this.f73597c;
        do {
            arrayList.add(aVar.getName());
            aVar = aVar.f73600a;
        } while (aVar != null);
        return arrayList;
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void h(String str, String str2, ChannelHandler channelHandler) {
        a x3 = x(str);
        if (x3 == this.f73597c) {
            j(str2, channelHandler);
        } else {
            t(str2);
            a aVar = new a(x3.f73601b, x3, str2, channelHandler);
            r(aVar);
            x3.f73601b.f73600a = aVar;
            x3.f73601b = aVar;
            this.f73599e.put(str2, aVar);
            p(aVar);
        }
    }

    @Override // org.jboss.netty.channel.n
    public void i(e eVar, p pVar) {
        Objects.requireNonNull(eVar, "channel");
        Objects.requireNonNull(pVar, "sink");
        if (this.f73595a == null && this.f73596b == null) {
            this.f73595a = eVar;
            this.f73596b = pVar;
            return;
        }
        throw new IllegalStateException("attached already");
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void j(String str, ChannelHandler channelHandler) {
        if (this.f73599e.isEmpty()) {
            z(str, channelHandler);
        } else {
            t(str);
            a aVar = this.f73597c;
            a aVar2 = new a(null, aVar, str, channelHandler);
            r(aVar2);
            aVar.f73601b = aVar2;
            this.f73597c = aVar2;
            this.f73599e.put(str, aVar2);
            p(aVar2);
        }
    }

    @Override // org.jboss.netty.channel.n
    public synchronized <T extends ChannelHandler> T k(Class<T> cls, String str, ChannelHandler channelHandler) {
        return (T) C(w(cls), str, channelHandler);
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void l(ChannelHandler channelHandler, String str, ChannelHandler channelHandler2) {
        C(y(channelHandler), str, channelHandler2);
    }

    @Override // org.jboss.netty.channel.n
    public p m() {
        p pVar = this.f73596b;
        return pVar == null ? f73594f : pVar;
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler remove(String str) {
        return B(x(str)).getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler removeFirst() {
        a aVar;
        if (!this.f73599e.isEmpty()) {
            aVar = this.f73597c;
            if (aVar != null) {
                s(aVar);
                if (aVar.f73600a == null) {
                    this.f73598d = null;
                    this.f73597c = null;
                    this.f73599e.clear();
                } else {
                    aVar.f73600a.f73601b = null;
                    this.f73597c = aVar.f73600a;
                    this.f73599e.remove(aVar.getName());
                }
                q(aVar);
            } else {
                throw new NoSuchElementException();
            }
        } else {
            throw new NoSuchElementException();
        }
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler removeLast() {
        a aVar;
        if (!this.f73599e.isEmpty()) {
            aVar = this.f73598d;
            if (aVar != null) {
                s(aVar);
                if (aVar.f73601b == null) {
                    this.f73598d = null;
                    this.f73597c = null;
                    this.f73599e.clear();
                } else {
                    aVar.f73601b.f73600a = null;
                    this.f73598d = aVar.f73601b;
                    this.f73599e.remove(aVar.getName());
                }
                s(aVar);
            } else {
                throw new NoSuchElementException();
            }
        } else {
            throw new NoSuchElementException();
        }
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public Map<String, ChannelHandler> toMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.f73599e.isEmpty()) {
            return linkedHashMap;
        }
        a aVar = this.f73597c;
        do {
            linkedHashMap.put(aVar.getName(), aVar.getHandler());
            aVar = aVar.f73600a;
        } while (aVar != null);
        return linkedHashMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('{');
        a aVar = this.f73597c;
        if (aVar != null) {
            while (true) {
                sb.append('(');
                sb.append(aVar.getName());
                sb.append(" = ");
                sb.append(aVar.getHandler().getClass().getName());
                sb.append(')');
                aVar = aVar.f73600a;
                if (aVar == null) {
                    break;
                }
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized <T extends ChannelHandler> T remove(Class<T> cls) {
        return (T) B(w(cls)).getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized m getContext(ChannelHandler channelHandler) {
        if (channelHandler != null) {
            if (this.f73599e.isEmpty()) {
                return null;
            }
            a aVar = this.f73597c;
            while (aVar.getHandler() != channelHandler) {
                aVar = aVar.f73600a;
                if (aVar == null) {
                    return null;
                }
            }
            return aVar;
        }
        throw new NullPointerException("handler");
    }

    @Override // org.jboss.netty.channel.n
    public synchronized <T extends ChannelHandler> T get(Class<T> cls) {
        m context = getContext(cls);
        if (context == null) {
            return null;
        }
        return (T) context.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized m getContext(Class<? extends ChannelHandler> cls) {
        if (cls != null) {
            if (this.f73599e.isEmpty()) {
                return null;
            }
            a aVar = this.f73597c;
            while (!cls.isAssignableFrom(aVar.getHandler().getClass())) {
                aVar = aVar.f73600a;
                if (aVar == null) {
                    return null;
                }
            }
            return aVar;
        }
        throw new NullPointerException("handlerType");
    }
}
