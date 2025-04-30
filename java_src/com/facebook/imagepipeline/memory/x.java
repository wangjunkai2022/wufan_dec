package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: MemoryPooledByteBufferFactory.java */
@ThreadSafe
/* loaded from: classes2.dex */
public class x implements com.facebook.common.memory.g {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.memory.j f12915a;

    /* renamed from: b  reason: collision with root package name */
    private final u f12916b;

    public x(u uVar, com.facebook.common.memory.j jVar) {
        this.f12916b = uVar;
        this.f12915a = jVar;
    }

    @VisibleForTesting
    w g(InputStream inputStream, MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream) throws IOException {
        this.f12915a.a(inputStream, memoryPooledByteBufferOutputStream);
        return memoryPooledByteBufferOutputStream.a();
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: h */
    public w e(int i2) {
        com.facebook.common.internal.h.d(i2 > 0);
        com.facebook.common.references.a q3 = com.facebook.common.references.a.q(this.f12916b.get(i2), this.f12916b);
        try {
            return new w(q3, i2);
        } finally {
            q3.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: i */
    public w a(InputStream inputStream) throws IOException {
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f12916b);
        try {
            return g(inputStream, memoryPooledByteBufferOutputStream);
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: j */
    public w b(InputStream inputStream, int i2) throws IOException {
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f12916b, i2);
        try {
            return g(inputStream, memoryPooledByteBufferOutputStream);
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: k */
    public w d(byte[] bArr) {
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f12916b, bArr.length);
        try {
            try {
                memoryPooledByteBufferOutputStream.write(bArr, 0, bArr.length);
                return memoryPooledByteBufferOutputStream.a();
            } catch (IOException e4) {
                throw com.facebook.common.internal.m.d(e4);
            }
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: l */
    public MemoryPooledByteBufferOutputStream c() {
        return new MemoryPooledByteBufferOutputStream(this.f12916b);
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: m */
    public MemoryPooledByteBufferOutputStream f(int i2) {
        return new MemoryPooledByteBufferOutputStream(this.f12916b, i2);
    }
}
