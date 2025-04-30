package org.jboss.netty.channel;

import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
/* compiled from: DefaultFileRegion.java */
/* loaded from: classes5.dex */
public class a0 implements g0 {

    /* renamed from: a  reason: collision with root package name */
    private final FileChannel f73418a;

    /* renamed from: b  reason: collision with root package name */
    private final long f73419b;

    /* renamed from: c  reason: collision with root package name */
    private final long f73420c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f73421d;

    public a0(FileChannel fileChannel, long j4, long j5) {
        this(fileChannel, j4, j5, false);
    }

    @Override // org.jboss.netty.util.b
    public void b() {
        try {
            this.f73418a.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public boolean c() {
        return this.f73421d;
    }

    @Override // org.jboss.netty.channel.g0
    public long getCount() {
        return this.f73420c;
    }

    @Override // org.jboss.netty.channel.g0
    public long getPosition() {
        return this.f73419b;
    }

    @Override // org.jboss.netty.channel.g0
    public long transferTo(WritableByteChannel writableByteChannel, long j4) throws IOException {
        long j5 = this.f73420c - j4;
        if (j5 >= 0 && j4 >= 0) {
            if (j5 == 0) {
                return 0L;
            }
            return this.f73418a.transferTo(this.f73419b + j4, j5, writableByteChannel);
        }
        throw new IllegalArgumentException("position out of range: " + j4 + " (expected: 0 - " + (this.f73420c - 1) + ')');
    }

    public a0(FileChannel fileChannel, long j4, long j5, boolean z3) {
        this.f73418a = fileChannel;
        this.f73419b = j4;
        this.f73420c = j5;
        this.f73421d = z3;
    }
}
