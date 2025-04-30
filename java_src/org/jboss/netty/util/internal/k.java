package org.jboss.netty.util.internal;
/* compiled from: ThreadLocalBoolean.java */
/* loaded from: classes5.dex */
public class k extends ThreadLocal<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f73745a;

    public k() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* renamed from: a */
    public Boolean initialValue() {
        return this.f73745a ? Boolean.TRUE : Boolean.FALSE;
    }

    public k(boolean z3) {
        this.f73745a = z3;
    }
}
