package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build;
import androidx.core.util.Pools;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: DefaultDecoder.java */
@ThreadSafe
@TargetApi(21)
/* loaded from: classes.dex */
public abstract class b implements f {

    /* renamed from: e  reason: collision with root package name */
    private static final int f12932e = 16384;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.d f12934a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final PreverificationHelper f12935b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final Pools.SynchronizedPool<ByteBuffer> f12936c;

    /* renamed from: d  reason: collision with root package name */
    private static final Class<?> f12931d = b.class;

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f12933f = {-1, -39};

    public b(com.facebook.imagepipeline.memory.d dVar, int i2, Pools.SynchronizedPool synchronizedPool) {
        this.f12935b = Build.VERSION.SDK_INT >= 26 ? new PreverificationHelper() : null;
        this.f12934a = dVar;
        this.f12936c = synchronizedPool;
        for (int i4 = 0; i4 < i2; i4++) {
            this.f12936c.release(ByteBuffer.allocate(16384));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a8 A[Catch: all -> 0x00cb, RuntimeException -> 0x00cd, IllegalArgumentException -> 0x00d6, TRY_LEAVE, TryCatch #7 {IllegalArgumentException -> 0x00d6, RuntimeException -> 0x00cd, blocks: (B:28:0x006e, B:33:0x0085, B:48:0x00a8, B:40:0x0099, B:44:0x00a1, B:45:0x00a4), top: B:77:0x006e, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.facebook.common.references.a<android.graphics.Bitmap> e(java.io.InputStream r10, android.graphics.BitmapFactory.Options r11, @javax.annotation.Nullable android.graphics.Rect r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.platform.b.e(java.io.InputStream, android.graphics.BitmapFactory$Options, android.graphics.Rect, boolean):com.facebook.common.references.a");
    }

    private static BitmapFactory.Options h(com.facebook.imagepipeline.image.e eVar, Bitmap.Config config) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = eVar.r();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(eVar.p(), null, options);
        if (options.outWidth != -1 && options.outHeight != -1) {
            options.inJustDecodeBounds = false;
            options.inDither = true;
            options.inPreferredConfig = config;
            options.inMutable = true;
            return options;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.facebook.imagepipeline.platform.f
    public com.facebook.common.references.a<Bitmap> a(com.facebook.imagepipeline.image.e eVar, Bitmap.Config config, @Nullable Rect rect) {
        return b(eVar, config, rect, false);
    }

    @Override // com.facebook.imagepipeline.platform.f
    public com.facebook.common.references.a<Bitmap> b(com.facebook.imagepipeline.image.e eVar, Bitmap.Config config, @Nullable Rect rect, boolean z3) {
        BitmapFactory.Options h4 = h(eVar, config);
        boolean z4 = h4.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return e(eVar.p(), h4, rect, z3);
        } catch (RuntimeException e4) {
            if (z4) {
                return b(eVar, Bitmap.Config.ARGB_8888, rect, z3);
            }
            throw e4;
        }
    }

    @Override // com.facebook.imagepipeline.platform.f
    public com.facebook.common.references.a<Bitmap> c(com.facebook.imagepipeline.image.e eVar, Bitmap.Config config, @Nullable Rect rect, int i2, boolean z3) {
        boolean v3 = eVar.v(i2);
        BitmapFactory.Options h4 = h(eVar, config);
        d0.b p3 = eVar.p();
        h.i(p3);
        if (eVar.s() > i2) {
            p3 = new d0.a(p3, i2);
        }
        if (!v3) {
            p3 = new d0.b(p3, f12933f);
        }
        boolean z4 = h4.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return e(p3, h4, rect, z3);
        } catch (RuntimeException e4) {
            if (z4) {
                return c(eVar, Bitmap.Config.ARGB_8888, rect, i2, z3);
            }
            throw e4;
        }
    }

    @Override // com.facebook.imagepipeline.platform.f
    public com.facebook.common.references.a<Bitmap> d(com.facebook.imagepipeline.image.e eVar, Bitmap.Config config, @Nullable Rect rect, int i2) {
        return c(eVar, config, rect, i2, false);
    }

    protected com.facebook.common.references.a<Bitmap> f(InputStream inputStream, BitmapFactory.Options options, @Nullable Rect rect) {
        return e(inputStream, options, rect, false);
    }

    public abstract int g(int i2, int i4, BitmapFactory.Options options);
}
