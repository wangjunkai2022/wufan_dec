package com.facebook.imagepipeline.platform;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.MemoryFile;
import com.facebook.common.internal.m;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.memory.h;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import javax.annotation.Nullable;
/* compiled from: GingerbreadPurgeableDecoder.java */
/* loaded from: classes.dex */
public class c extends DalvikPurgeableDecoder {

    /* renamed from: d  reason: collision with root package name */
    private static Method f12937d;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.common.webp.b f12938c = com.facebook.common.webp.c.j();

    private static MemoryFile j(com.facebook.common.references.a<PooledByteBuffer> aVar, int i2, @Nullable byte[] bArr) throws IOException {
        OutputStream outputStream;
        d0.a aVar2;
        h hVar = null;
        OutputStream outputStream2 = null;
        MemoryFile memoryFile = new MemoryFile(null, (bArr == null ? 0 : bArr.length) + i2);
        memoryFile.allowPurging(false);
        try {
            h hVar2 = new h(aVar.i());
            try {
                aVar2 = new d0.a(hVar2, i2);
                try {
                    outputStream2 = memoryFile.getOutputStream();
                    com.facebook.common.internal.b.a(aVar2, outputStream2);
                    if (bArr != null) {
                        memoryFile.writeBytes(bArr, 0, i2, bArr.length);
                    }
                    com.facebook.common.references.a.g(aVar);
                    com.facebook.common.internal.c.b(hVar2);
                    com.facebook.common.internal.c.b(aVar2);
                    com.facebook.common.internal.c.a(outputStream2, true);
                    return memoryFile;
                } catch (Throwable th) {
                    th = th;
                    outputStream = outputStream2;
                    hVar = hVar2;
                    com.facebook.common.references.a.g(aVar);
                    com.facebook.common.internal.c.b(hVar);
                    com.facebook.common.internal.c.b(aVar2);
                    com.facebook.common.internal.c.a(outputStream, true);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
                aVar2 = null;
            }
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            aVar2 = null;
        }
    }

    private Bitmap k(com.facebook.common.references.a<PooledByteBuffer> aVar, int i2, byte[] bArr, BitmapFactory.Options options) {
        MemoryFile j4;
        MemoryFile memoryFile = null;
        try {
            try {
                j4 = j(aVar, i2, bArr);
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            FileDescriptor m4 = m(j4);
            com.facebook.common.webp.b bVar = this.f12938c;
            if (bVar != null) {
                Bitmap bitmap = (Bitmap) com.facebook.common.internal.h.j(bVar.e(m4, null, options), "BitmapFactory returned null");
                if (j4 != null) {
                    j4.close();
                }
                return bitmap;
            }
            throw new IllegalStateException("WebpBitmapFactory is null");
        } catch (IOException e5) {
            e = e5;
            memoryFile = j4;
            throw m.d(e);
        } catch (Throwable th2) {
            th = th2;
            memoryFile = j4;
            if (memoryFile != null) {
                memoryFile.close();
            }
            throw th;
        }
    }

    private synchronized Method l() {
        if (f12937d == null) {
            try {
                f12937d = MemoryFile.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
            } catch (Exception e4) {
                throw m.d(e4);
            }
        }
        return f12937d;
    }

    private FileDescriptor m(MemoryFile memoryFile) {
        try {
            return (FileDescriptor) l().invoke(memoryFile, new Object[0]);
        } catch (Exception e4) {
            throw m.d(e4);
        }
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap e(com.facebook.common.references.a<PooledByteBuffer> aVar, BitmapFactory.Options options) {
        return k(aVar, aVar.i().size(), null, options);
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap f(com.facebook.common.references.a<PooledByteBuffer> aVar, int i2, BitmapFactory.Options options) {
        return k(aVar, i2, DalvikPurgeableDecoder.g(aVar, i2) ? null : DalvikPurgeableDecoder.f12918b, options);
    }
}
