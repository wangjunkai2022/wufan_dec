package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: LocalContentUriThumbnailFetchProducer.java */
/* loaded from: classes.dex */
public class v extends x implements x0<com.facebook.imagepipeline.image.e> {

    /* renamed from: e  reason: collision with root package name */
    public static final String f13247e = "LocalContentUriThumbnailFetchProducer";

    /* renamed from: j  reason: collision with root package name */
    private static final int f13252j = 0;

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f13253c;

    /* renamed from: d  reason: collision with root package name */
    private static final Class<?> f13246d = v.class;

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f13248f = {"_id", "_data"};

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f13249g = {"_data"};

    /* renamed from: h  reason: collision with root package name */
    private static final Rect f13250h = new Rect(0, 0, 512, 384);

    /* renamed from: i  reason: collision with root package name */
    private static final Rect f13251i = new Rect(0, 0, 96, 96);

    public v(Executor executor, com.facebook.common.memory.g gVar, ContentResolver contentResolver) {
        super(executor, gVar);
        this.f13253c = contentResolver;
    }

    @Nullable
    private com.facebook.imagepipeline.image.e g(Uri uri, com.facebook.imagepipeline.common.d dVar) throws IOException {
        com.facebook.imagepipeline.image.e j4;
        Cursor query = this.f13253c.query(uri, f13248f, null, null, null);
        if (query == null) {
            return null;
        }
        try {
            if (query.getCount() == 0) {
                return null;
            }
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex("_data"));
            if (dVar == null || (j4 = j(dVar, query.getInt(query.getColumnIndex("_id")))) == null) {
                return null;
            }
            j4.H(i(string));
            return j4;
        } finally {
            query.close();
        }
    }

    private static int h(String str) {
        if (str == null) {
            return -1;
        }
        return (int) new File(str).length();
    }

    private static int i(String str) {
        if (str != null) {
            try {
                return com.facebook.imageutils.c.a(new ExifInterface(str).getAttributeInt("Orientation", 1));
            } catch (IOException e4) {
                com.facebook.common.logging.a.t(f13246d, e4, "Unable to retrieve thumbnail rotation for %s", str);
            }
        }
        return 0;
    }

    @Nullable
    private com.facebook.imagepipeline.image.e j(com.facebook.imagepipeline.common.d dVar, int i2) throws IOException {
        int k4 = k(dVar);
        Cursor cursor = null;
        if (k4 == 0) {
            return null;
        }
        try {
            Cursor queryMiniThumbnail = MediaStore.Images.Thumbnails.queryMiniThumbnail(this.f13253c, i2, k4, f13249g);
            if (queryMiniThumbnail == null) {
                if (queryMiniThumbnail != null) {
                    queryMiniThumbnail.close();
                }
                return null;
            }
            try {
                queryMiniThumbnail.moveToFirst();
                if (queryMiniThumbnail.getCount() > 0) {
                    String string = queryMiniThumbnail.getString(queryMiniThumbnail.getColumnIndex("_data"));
                    if (new File(string).exists()) {
                        com.facebook.imagepipeline.image.e e4 = e(new FileInputStream(string), h(string));
                        queryMiniThumbnail.close();
                        return e4;
                    }
                }
                queryMiniThumbnail.close();
                return null;
            } catch (Throwable th) {
                th = th;
                cursor = queryMiniThumbnail;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static int k(com.facebook.imagepipeline.common.d dVar) {
        Rect rect = f13251i;
        if (y0.b(rect.width(), rect.height(), dVar)) {
            return 3;
        }
        Rect rect2 = f13250h;
        return y0.b(rect2.width(), rect2.height(), dVar) ? 1 : 0;
    }

    @Override // com.facebook.imagepipeline.producers.x0
    public boolean a(com.facebook.imagepipeline.common.d dVar) {
        Rect rect = f13250h;
        return y0.b(rect.width(), rect.height(), dVar);
    }

    @Override // com.facebook.imagepipeline.producers.x
    @Nullable
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        com.facebook.imagepipeline.image.e g4;
        Uri t3 = imageRequest.t();
        if (!com.facebook.common.util.f.h(t3) || (g4 = g(t3, imageRequest.p())) == null) {
            return null;
        }
        return g4;
    }

    @Override // com.facebook.imagepipeline.producers.x
    protected String f() {
        return f13247e;
    }
}
