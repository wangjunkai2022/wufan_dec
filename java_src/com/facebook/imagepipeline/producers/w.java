package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.media.ExifInterface;
import android.net.Uri;
import android.util.Pair;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: LocalExifThumbnailProducer.java */
/* loaded from: classes.dex */
public class w implements x0<com.facebook.imagepipeline.image.e> {

    /* renamed from: d  reason: collision with root package name */
    private static final int f13263d = 512;

    /* renamed from: e  reason: collision with root package name */
    public static final String f13264e = "LocalExifThumbnailProducer";
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    static final String f13265f = "createdThumbnail";

    /* renamed from: a  reason: collision with root package name */
    private final Executor f13266a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f13267b;

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f13268c;

    /* compiled from: LocalExifThumbnailProducer.java */
    /* loaded from: classes.dex */
    class a extends r0<com.facebook.imagepipeline.image.e> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ ImageRequest f13269k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, m0 m0Var, String str, String str2, ImageRequest imageRequest) {
            super(consumer, m0Var, str, str2);
            this.f13269k = imageRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        /* renamed from: j */
        public void b(com.facebook.imagepipeline.image.e eVar) {
            com.facebook.imagepipeline.image.e.d(eVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0
        /* renamed from: k */
        public Map<String, String> i(com.facebook.imagepipeline.image.e eVar) {
            return ImmutableMap.of(w.f13265f, Boolean.toString(eVar != null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @Nullable
        /* renamed from: l */
        public com.facebook.imagepipeline.image.e c() throws Exception {
            ExifInterface g4 = w.this.g(this.f13269k.t());
            if (g4 == null || !g4.hasThumbnail()) {
                return null;
            }
            return w.this.e(w.this.f13267b.d(g4.getThumbnail()), g4);
        }
    }

    /* compiled from: LocalExifThumbnailProducer.java */
    /* loaded from: classes2.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r0 f13271a;

        b(r0 r0Var) {
            this.f13271a = r0Var;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
        public void b() {
            this.f13271a.a();
        }
    }

    public w(Executor executor, com.facebook.common.memory.g gVar, ContentResolver contentResolver) {
        this.f13266a = executor;
        this.f13267b = gVar;
        this.f13268c = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.imagepipeline.image.e e(PooledByteBuffer pooledByteBuffer, ExifInterface exifInterface) {
        Pair<Integer, Integer> b4 = com.facebook.imageutils.a.b(new com.facebook.common.memory.h(pooledByteBuffer));
        int h4 = h(exifInterface);
        int intValue = b4 != null ? ((Integer) b4.first).intValue() : -1;
        int intValue2 = b4 != null ? ((Integer) b4.second).intValue() : -1;
        com.facebook.common.references.a p3 = com.facebook.common.references.a.p(pooledByteBuffer);
        try {
            com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(p3);
            com.facebook.common.references.a.g(p3);
            eVar.G(com.facebook.imageformat.b.f12372a);
            eVar.H(h4);
            eVar.K(intValue);
            eVar.F(intValue2);
            return eVar;
        } catch (Throwable th) {
            com.facebook.common.references.a.g(p3);
            throw th;
        }
    }

    private int h(ExifInterface exifInterface) {
        return com.facebook.imageutils.c.a(Integer.parseInt(exifInterface.getAttribute("Orientation")));
    }

    @Override // com.facebook.imagepipeline.producers.x0
    public boolean a(com.facebook.imagepipeline.common.d dVar) {
        return y0.b(512, 512, dVar);
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        a aVar = new a(consumer, k0Var.getListener(), f13264e, k0Var.getId(), k0Var.b());
        k0Var.d(new b(aVar));
        this.f13266a.execute(aVar);
    }

    @VisibleForTesting
    boolean f(String str) throws IOException {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.canRead();
    }

    @VisibleForTesting
    @Nullable
    ExifInterface g(Uri uri) {
        String a4 = com.facebook.common.util.f.a(this.f13268c, uri);
        try {
            if (f(a4)) {
                return new ExifInterface(a4);
            }
            return null;
        } catch (IOException unused) {
            return null;
        } catch (StackOverflowError unused2) {
            com.facebook.common.logging.a.q(w.class, "StackOverflowError in ExifInterface constructor");
            return null;
        }
    }
}
