package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.lang.ref.SoftReference;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.WritableByteChannel;
import org.jboss.netty.channel.a0;
import org.jboss.netty.channel.g0;
/* compiled from: SocketSendBufferPool.java */
/* loaded from: classes5.dex */
final class x implements org.jboss.netty.util.b {

    /* renamed from: c  reason: collision with root package name */
    private static final g f73559c = new a();

    /* renamed from: d  reason: collision with root package name */
    private static final int f73560d = 65536;

    /* renamed from: e  reason: collision with root package name */
    private static final int f73561e = 4;

    /* renamed from: f  reason: collision with root package name */
    private static final int f73562f = 15;

    /* renamed from: a  reason: collision with root package name */
    private f f73563a;

    /* renamed from: b  reason: collision with root package name */
    private e f73564b = new e(65536);

    /* compiled from: SocketSendBufferPool.java */
    /* loaded from: classes5.dex */
    static final class a implements g {
        a() {
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public boolean a() {
            return true;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long b() {
            return 0L;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long c(WritableByteChannel writableByteChannel) {
            return 0L;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long d(DatagramChannel datagramChannel, SocketAddress socketAddress) {
            return 0L;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long e() {
            return 0L;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public void release() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SocketSendBufferPool.java */
    /* loaded from: classes5.dex */
    public final class b implements g {

        /* renamed from: a  reason: collision with root package name */
        private final g0 f73565a;

        /* renamed from: b  reason: collision with root package name */
        private long f73566b;

        b(g0 g0Var) {
            this.f73565a = g0Var;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public boolean a() {
            return this.f73566b >= this.f73565a.getCount();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long b() {
            return this.f73565a.getCount();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long c(WritableByteChannel writableByteChannel) throws IOException {
            long transferTo = this.f73565a.transferTo(writableByteChannel, this.f73566b);
            this.f73566b += transferTo;
            return transferTo;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long d(DatagramChannel datagramChannel, SocketAddress socketAddress) {
            throw new UnsupportedOperationException();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long e() {
            return this.f73566b;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public void release() {
            g0 g0Var = this.f73565a;
            if ((g0Var instanceof a0) && ((a0) g0Var).c()) {
                this.f73565a.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SocketSendBufferPool.java */
    /* loaded from: classes5.dex */
    public static class c implements g {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer[] f73568a;

        /* renamed from: b  reason: collision with root package name */
        private final int f73569b;

        /* renamed from: c  reason: collision with root package name */
        private long f73570c;

        /* renamed from: d  reason: collision with root package name */
        private final int f73571d;

        c(ByteBuffer[] byteBufferArr) {
            this.f73568a = byteBufferArr;
            this.f73569b = byteBufferArr.length - 1;
            int i2 = 0;
            for (ByteBuffer byteBuffer : byteBufferArr) {
                i2 += byteBuffer.remaining();
            }
            this.f73571d = i2;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public boolean a() {
            return !this.f73568a[this.f73569b].hasRemaining();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long b() {
            return this.f73571d;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long c(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer[] byteBufferArr;
            if (writableByteChannel instanceof GatheringByteChannel) {
                long write = ((GatheringByteChannel) writableByteChannel).write(this.f73568a);
                this.f73570c += write;
                return write;
            }
            int i2 = 0;
            for (ByteBuffer byteBuffer : this.f73568a) {
                if (byteBuffer.hasRemaining()) {
                    int write2 = writableByteChannel.write(byteBuffer);
                    if (write2 == 0) {
                        break;
                    }
                    i2 += write2;
                }
            }
            long j4 = i2;
            this.f73570c += j4;
            return j4;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long d(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException {
            ByteBuffer[] byteBufferArr;
            int i2 = 0;
            for (ByteBuffer byteBuffer : this.f73568a) {
                if (byteBuffer.hasRemaining()) {
                    int send = datagramChannel.send(byteBuffer, socketAddress);
                    if (send == 0) {
                        break;
                    }
                    i2 += send;
                }
            }
            long j4 = i2;
            this.f73570c += j4;
            return j4;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long e() {
            return this.f73570c;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public void release() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SocketSendBufferPool.java */
    /* loaded from: classes5.dex */
    public final class d extends h {

        /* renamed from: c  reason: collision with root package name */
        private final e f73572c;

        d(e eVar, ByteBuffer byteBuffer) {
            super(byteBuffer);
            this.f73572c = eVar;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.h, org.jboss.netty.channel.socket.nio.x.g
        public void release() {
            e eVar = this.f73572c;
            int i2 = eVar.f73575b - 1;
            eVar.f73575b = i2;
            if (i2 == 0) {
                eVar.f73574a.clear();
                if (eVar != x.this.f73564b) {
                    x xVar = x.this;
                    x xVar2 = x.this;
                    xVar.f73563a = new f(eVar, xVar2.f73563a);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SocketSendBufferPool.java */
    /* loaded from: classes5.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        final ByteBuffer f73574a;

        /* renamed from: b  reason: collision with root package name */
        int f73575b;

        e(int i2) {
            this.f73574a = ByteBuffer.allocateDirect(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SocketSendBufferPool.java */
    /* loaded from: classes5.dex */
    public final class f extends SoftReference<e> {

        /* renamed from: a  reason: collision with root package name */
        final f f73576a;

        f(e eVar, f fVar) {
            super(eVar);
            this.f73576a = fVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SocketSendBufferPool.java */
    /* loaded from: classes5.dex */
    public interface g {
        boolean a();

        long b();

        long c(WritableByteChannel writableByteChannel) throws IOException;

        long d(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException;

        long e();

        void release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SocketSendBufferPool.java */
    /* loaded from: classes5.dex */
    public static class h implements g {

        /* renamed from: a  reason: collision with root package name */
        final ByteBuffer f73578a;

        /* renamed from: b  reason: collision with root package name */
        final int f73579b;

        h(ByteBuffer byteBuffer) {
            this.f73578a = byteBuffer;
            this.f73579b = byteBuffer.position();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final boolean a() {
            return !this.f73578a.hasRemaining();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final long b() {
            return this.f73578a.limit() - this.f73579b;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final long c(WritableByteChannel writableByteChannel) throws IOException {
            return writableByteChannel.write(this.f73578a);
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final long d(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException {
            return datagramChannel.send(this.f73578a, socketAddress);
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final long e() {
            return this.f73578a.position() - this.f73579b;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public void release() {
        }
    }

    private g g(org.jboss.netty.buffer.e eVar) {
        d dVar;
        int readableBytes = eVar.readableBytes();
        if (readableBytes == 0) {
            return f73559c;
        }
        if ((eVar instanceof org.jboss.netty.buffer.i) && ((org.jboss.netty.buffer.i) eVar).e0()) {
            return new c(eVar.F0());
        }
        if (eVar.isDirect()) {
            return new h(eVar.c0());
        }
        if (eVar.readableBytes() > 65536) {
            return new h(eVar.c0());
        }
        e eVar2 = this.f73564b;
        ByteBuffer byteBuffer = eVar2.f73574a;
        int remaining = byteBuffer.remaining();
        if (readableBytes < remaining) {
            int position = byteBuffer.position() + readableBytes;
            ByteBuffer duplicate = byteBuffer.duplicate();
            byteBuffer.position(i(position));
            duplicate.limit(position);
            eVar2.f73575b++;
            dVar = new d(eVar2, duplicate);
        } else if (readableBytes > remaining) {
            e j4 = j();
            this.f73564b = j4;
            ByteBuffer byteBuffer2 = j4.f73574a;
            ByteBuffer duplicate2 = byteBuffer2.duplicate();
            byteBuffer2.position(i(readableBytes));
            duplicate2.limit(readableBytes);
            j4.f73575b++;
            dVar = new d(j4, duplicate2);
        } else {
            eVar2.f73575b++;
            this.f73564b = k();
            dVar = new d(eVar2, eVar2.f73574a);
        }
        ByteBuffer byteBuffer3 = dVar.f73578a;
        byteBuffer3.mark();
        eVar.w0(eVar.readerIndex(), byteBuffer3);
        byteBuffer3.reset();
        return dVar;
    }

    private g h(g0 g0Var) {
        if (g0Var.getCount() == 0) {
            return f73559c;
        }
        return new b(g0Var);
    }

    private static int i(int i2) {
        int i4 = i2 >>> 4;
        if ((i2 & 15) != 0) {
            i4++;
        }
        return i4 << 4;
    }

    private e j() {
        e eVar = this.f73564b;
        if (eVar.f73575b == 0) {
            eVar.f73574a.clear();
            return eVar;
        }
        return k();
    }

    private e k() {
        f fVar = this.f73563a;
        if (fVar != null) {
            do {
                e eVar = fVar.get();
                fVar = fVar.f73576a;
                if (eVar != null) {
                    this.f73563a = fVar;
                    return eVar;
                }
            } while (fVar != null);
            this.f73563a = fVar;
        }
        return new e(65536);
    }

    @Override // org.jboss.netty.util.b
    public void b() {
        ByteBuffer byteBuffer = this.f73564b.f73574a;
        if (byteBuffer != null) {
            org.jboss.netty.util.internal.a.a(byteBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g f(Object obj) {
        if (obj instanceof org.jboss.netty.buffer.e) {
            return g((org.jboss.netty.buffer.e) obj);
        }
        if (obj instanceof g0) {
            return h((g0) obj);
        }
        throw new IllegalArgumentException("unsupported message type: " + obj.getClass());
    }
}
