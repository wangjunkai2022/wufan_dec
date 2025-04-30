package org.jboss.netty.channel;

import java.util.Objects;
/* compiled from: DefaultWriteCompletionEvent.java */
/* loaded from: classes5.dex */
public class b0 implements q0 {

    /* renamed from: a  reason: collision with root package name */
    private final e f73422a;

    /* renamed from: b  reason: collision with root package name */
    private final long f73423b;

    public b0(e eVar, long j4) {
        Objects.requireNonNull(eVar, "channel");
        if (j4 > 0) {
            this.f73422a = eVar;
            this.f73423b = j4;
            return;
        }
        throw new IllegalArgumentException("writtenAmount must be a positive integer: " + j4);
    }

    @Override // org.jboss.netty.channel.q0
    public long c() {
        return this.f73423b;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f73422a;
    }

    public String toString() {
        String obj = getChannel().toString();
        StringBuilder sb = new StringBuilder(obj.length() + 32);
        sb.append(obj);
        sb.append(" WRITTEN_AMOUNT: ");
        sb.append(c());
        return sb.toString();
    }
}
