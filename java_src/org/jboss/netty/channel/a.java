package org.jboss.netty.channel;

import java.net.SocketAddress;
import java.util.Random;
import java.util.concurrent.ConcurrentMap;
import org.jboss.netty.util.internal.ConcurrentHashMap;
/* compiled from: AbstractChannel.java */
/* loaded from: classes5.dex */
public abstract class a implements e {

    /* renamed from: k  reason: collision with root package name */
    static final ConcurrentMap<Integer, e> f73404k = new ConcurrentHashMap();

    /* renamed from: l  reason: collision with root package name */
    private static final Random f73405l = new Random();

    /* renamed from: m  reason: collision with root package name */
    static final /* synthetic */ boolean f73406m = false;

    /* renamed from: a  reason: collision with root package name */
    private final Integer f73407a;

    /* renamed from: b  reason: collision with root package name */
    private final e f73408b;

    /* renamed from: c  reason: collision with root package name */
    private final i f73409c;

    /* renamed from: d  reason: collision with root package name */
    private final n f73410d;

    /* renamed from: e  reason: collision with root package name */
    private final j f73411e;

    /* renamed from: f  reason: collision with root package name */
    private final C0492a f73412f;

    /* renamed from: g  reason: collision with root package name */
    private volatile int f73413g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f73414h;

    /* renamed from: i  reason: collision with root package name */
    private String f73415i;

    /* renamed from: j  reason: collision with root package name */
    private volatile Object f73416j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.java */
    /* renamed from: org.jboss.netty.channel.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public final class C0492a extends w {
        public C0492a() {
            super(a.this, false);
        }

        boolean n() {
            return super.setSuccess();
        }

        @Override // org.jboss.netty.channel.w, org.jboss.netty.channel.j
        public boolean setFailure(Throwable th) {
            return false;
        }

        @Override // org.jboss.netty.channel.w, org.jboss.netty.channel.j
        public boolean setSuccess() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(e eVar, i iVar, n nVar, p pVar) {
        this.f73411e = new n0(this);
        this.f73412f = new C0492a();
        this.f73413g = 1;
        this.f73408b = eVar;
        this.f73409c = iVar;
        this.f73410d = nVar;
        this.f73407a = m(this);
        nVar.i(this, pVar);
    }

    private static Integer m(e eVar) {
        Integer valueOf = Integer.valueOf(f73405l.nextInt());
        while (f73404k.putIfAbsent(valueOf, eVar) != null) {
            valueOf = Integer.valueOf(valueOf.intValue() + 1);
        }
        return valueOf;
    }

    private String x() {
        String hexString = Integer.toHexString(this.f73407a.intValue());
        switch (hexString.length()) {
            case 0:
                return "00000000";
            case 1:
                return "0000000" + hexString;
            case 2:
                return "000000" + hexString;
            case 3:
                return "00000" + hexString;
            case 4:
                return "0000" + hexString;
            case 5:
                return "000" + hexString;
            case 6:
                return "00" + hexString;
            case 7:
                return '0' + hexString;
            default:
                return hexString;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j A() {
        return this.f73411e;
    }

    @Override // org.jboss.netty.channel.e
    public int Q() {
        return this.f73413g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j U() {
        return new f0(this, new UnsupportedOperationException());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean Y() {
        f73404k.remove(this.f73407a);
        return this.f73412f.n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a0(int i2) {
        this.f73413g = i2;
    }

    @Override // org.jboss.netty.channel.e
    public void b(Object obj) {
        this.f73416j = obj;
    }

    @Override // org.jboss.netty.channel.e
    public j bind(SocketAddress socketAddress) {
        return s.a(this, socketAddress);
    }

    @Override // org.jboss.netty.channel.e
    public j close() {
        s.c(this);
        return this.f73412f;
    }

    @Override // org.jboss.netty.channel.e
    public j connect(SocketAddress socketAddress) {
        return s.e(this, socketAddress);
    }

    @Override // org.jboss.netty.channel.e
    public Object d() {
        return this.f73416j;
    }

    @Override // org.jboss.netty.channel.e
    public j disconnect() {
        return s.g(this);
    }

    @Override // org.jboss.netty.channel.e
    public j e() {
        return s.X(this);
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override // org.jboss.netty.channel.e
    public j g(int i2) {
        return s.U(this, i2);
    }

    @Override // org.jboss.netty.channel.e
    public final Integer getId() {
        return this.f73407a;
    }

    @Override // org.jboss.netty.channel.e
    public e getParent() {
        return this.f73408b;
    }

    @Override // org.jboss.netty.channel.e
    public n getPipeline() {
        return this.f73410d;
    }

    @Override // org.jboss.netty.channel.e
    public j h(boolean z3) {
        if (z3) {
            return g(Q() | 1);
        }
        return g(Q() & (-2));
    }

    public final int hashCode() {
        return this.f73407a.intValue();
    }

    @Override // org.jboss.netty.channel.e
    public j i(Object obj, SocketAddress socketAddress) {
        return s.b0(this, obj, socketAddress);
    }

    @Override // org.jboss.netty.channel.e
    public boolean isOpen() {
        return !this.f73412f.isDone();
    }

    @Override // org.jboss.netty.channel.e
    public boolean isReadable() {
        return (Q() & 1) != 0;
    }

    @Override // org.jboss.netty.channel.e
    public boolean isWritable() {
        return (Q() & 4) == 0;
    }

    @Override // java.lang.Comparable
    /* renamed from: s */
    public final int compareTo(e eVar) {
        return getId().compareTo(eVar.getId());
    }

    @Override // org.jboss.netty.channel.e
    public i t() {
        return this.f73409c;
    }

    @Override // org.jboss.netty.channel.e
    public j t0() {
        return this.f73412f;
    }

    public String toString() {
        String str;
        boolean isConnected = isConnected();
        if (this.f73414h != isConnected || (str = this.f73415i) == null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append("[id: 0x");
            sb.append(x());
            SocketAddress localAddress = getLocalAddress();
            SocketAddress remoteAddress = getRemoteAddress();
            if (remoteAddress != null) {
                sb.append(", ");
                if (getParent() == null) {
                    sb.append(localAddress);
                    sb.append(isConnected ? " => " : " :> ");
                    sb.append(remoteAddress);
                } else {
                    sb.append(remoteAddress);
                    sb.append(isConnected ? " => " : " :> ");
                    sb.append(localAddress);
                }
            } else if (localAddress != null) {
                sb.append(", ");
                sb.append(localAddress);
            }
            sb.append(']');
            String sb2 = sb.toString();
            this.f73415i = sb2;
            this.f73414h = isConnected;
            return sb2;
        }
        return str;
    }

    @Override // org.jboss.netty.channel.e
    public j write(Object obj) {
        return s.a0(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Integer num, e eVar, i iVar, n nVar, p pVar) {
        this.f73411e = new n0(this);
        this.f73412f = new C0492a();
        this.f73413g = 1;
        this.f73407a = num;
        this.f73408b = eVar;
        this.f73409c = iVar;
        this.f73410d = nVar;
        nVar.i(this, pVar);
    }
}
