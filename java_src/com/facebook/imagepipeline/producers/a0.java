package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import androidx.annotation.Nullable;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: LocalVideoThumbnailProducer.java */
/* loaded from: classes2.dex */
public class a0 implements i0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f12979c = "VideoThumbnailProducer";
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    static final String f12980d = "createdThumbnail";

    /* renamed from: a  reason: collision with root package name */
    private final Executor f12981a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentResolver f12982b;

    /* compiled from: LocalVideoThumbnailProducer.java */
    /* loaded from: classes2.dex */
    class a extends r0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ m0 f12983k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ String f12984l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12985m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, m0 m0Var, String str, String str2, m0 m0Var2, String str3, ImageRequest imageRequest) {
            super(consumer, m0Var, str, str2);
            this.f12983k = m0Var2;
            this.f12984l = str3;
            this.f12985m = imageRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        public void e(Exception exc) {
            super.e(exc);
            this.f12983k.h(this.f12984l, a0.f12979c, false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        /* renamed from: j */
        public void b(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
            com.facebook.common.references.a.g(aVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0
        /* renamed from: k */
        public Map<String, String> i(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
            return ImmutableMap.of(a0.f12980d, String.valueOf(aVar != null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @Nullable
        /* renamed from: l */
        public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> c() throws Exception {
            Bitmap createVideoThumbnail;
            String f4 = a0.this.f(this.f12985m);
            if (f4 == null || (createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(f4, a0.e(this.f12985m))) == null) {
                return null;
            }
            return com.facebook.common.references.a.p(new com.facebook.imagepipeline.image.d(createVideoThumbnail, com.facebook.imagepipeline.bitmaps.h.a(), com.facebook.imagepipeline.image.g.f12777d, 0));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        /* renamed from: m */
        public void f(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
            super.f(aVar);
            this.f12983k.h(this.f12984l, a0.f12979c, aVar != null);
        }
    }

    /* compiled from: LocalVideoThumbnailProducer.java */
    /* loaded from: classes2.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r0 f12987a;

        b(r0 r0Var) {
            this.f12987a = r0Var;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
        public void b() {
            this.f12987a.a();
        }
    }

    public a0(Executor executor, ContentResolver contentResolver) {
        this.f12981a = executor;
        this.f12982b = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(ImageRequest imageRequest) {
        return (imageRequest.l() > 96 || imageRequest.k() > 96) ? 1 : 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public String f(ImageRequest imageRequest) {
        Uri uri;
        String str;
        String[] strArr;
        Uri t3 = imageRequest.t();
        if (com.facebook.common.util.f.k(t3)) {
            return imageRequest.s().getPath();
        }
        if (com.facebook.common.util.f.j(t3)) {
            if (Build.VERSION.SDK_INT < 19 || !"com.android.providers.media.documents".equals(t3.getAuthority())) {
                uri = t3;
                str = null;
                strArr = null;
            } else {
                String documentId = DocumentsContract.getDocumentId(t3);
                str = "_id=?";
                uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                strArr = new String[]{documentId.split(":")[1]};
            }
            Cursor query = this.f12982b.query(uri, new String[]{"_data"}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        return query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    query.close();
                }
            }
            if (query != null) {
            }
        }
        return null;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, k0 k0Var) {
        m0 listener = k0Var.getListener();
        String id = k0Var.getId();
        a aVar = new a(consumer, listener, f12979c, id, listener, id, k0Var.b());
        k0Var.d(new b(aVar));
        this.f12981a.execute(aVar);
    }
}
