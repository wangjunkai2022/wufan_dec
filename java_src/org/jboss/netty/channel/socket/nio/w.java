package org.jboss.netty.channel.socket.nio;

import com.papa91.arc.ext.Log;
import java.nio.ByteBuffer;
/* compiled from: SocketReceiveBufferAllocator.java */
/* loaded from: classes5.dex */
final class w implements org.jboss.netty.util.b {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f73555a;

    /* renamed from: b  reason: collision with root package name */
    private int f73556b;

    /* renamed from: c  reason: collision with root package name */
    private final int f73557c;

    /* renamed from: d  reason: collision with root package name */
    private final int f73558d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w() {
        this(16, 80);
    }

    private ByteBuffer d(int i2) {
        ByteBuffer byteBuffer = this.f73555a;
        if (byteBuffer != null) {
            this.f73556b = 0;
            org.jboss.netty.util.internal.a.a(byteBuffer);
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(e(i2));
        this.f73555a = allocateDirect;
        return allocateDirect;
    }

    private static int e(int i2) {
        int i4 = i2 >>> 10;
        if ((i2 & Log.LogWrapper.MAX_MSG_LEN) != 0) {
            i4++;
        }
        return i4 << 10;
    }

    @Override // org.jboss.netty.util.b
    public void b() {
        ByteBuffer byteBuffer = this.f73555a;
        if (byteBuffer != null) {
            org.jboss.netty.util.internal.a.a(byteBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer c(int i2) {
        ByteBuffer byteBuffer = this.f73555a;
        if (byteBuffer == null) {
            return d(i2);
        }
        if (byteBuffer.capacity() < i2) {
            return d(i2);
        }
        if ((this.f73555a.capacity() * this.f73558d) / 100 > i2) {
            int i4 = this.f73556b + 1;
            this.f73556b = i4;
            if (i4 == this.f73557c) {
                return d(i2);
            }
            this.f73555a.clear();
        } else {
            this.f73556b = 0;
            this.f73555a.clear();
        }
        return this.f73555a;
    }

    w(int i2, int i4) {
        this.f73557c = i2;
        this.f73558d = i4;
    }
}
