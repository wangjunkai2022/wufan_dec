package org.jboss.netty.channel;
/* compiled from: AdaptiveReceiveBufferSizePredictorFactory.java */
/* loaded from: classes5.dex */
public class d implements k0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f73440a;

    /* renamed from: b  reason: collision with root package name */
    private final int f73441b;

    /* renamed from: c  reason: collision with root package name */
    private final int f73442c;

    public d() {
        this(64, 1024, 65536);
    }

    @Override // org.jboss.netty.channel.k0
    public j0 a() throws Exception {
        return new c(this.f73440a, this.f73441b, this.f73442c);
    }

    public d(int i2, int i4, int i5) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("minimum: " + i2);
        } else if (i4 < i2) {
            throw new IllegalArgumentException("initial: " + i4);
        } else if (i5 >= i4) {
            this.f73440a = i2;
            this.f73441b = i4;
            this.f73442c = i5;
        } else {
            throw new IllegalArgumentException("maximum: " + i5);
        }
    }
}
