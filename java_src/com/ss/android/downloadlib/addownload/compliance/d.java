package com.ss.android.downloadlib.addownload.compliance;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.c;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.i.f;
import com.ss.android.socialbase.downloader.i.h;
import com.ss.android.socialbase.downloader.network.i;
import java.io.BufferedInputStream;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: BitmapCache.java */
/* loaded from: classes4.dex */
public class d extends h<Long, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Long, SoftReference<a>> f57221a;

    /* compiled from: BitmapCache.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(Bitmap bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BitmapCache.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static d f57228a = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i2, int i4, BitmapFactory.Options options) {
        int i5 = options.outWidth;
        if (i5 > i2 || options.outHeight > i4) {
            return Math.min(Math.round(i5 / i2), Math.round(options.outHeight / i4));
        }
        return 1;
    }

    private d() {
        super(8, 8);
        this.f57221a = new HashMap();
    }

    public static d a() {
        return b.f57228a;
    }

    public void a(long j4, @NonNull a aVar) {
        if (get(Long.valueOf(j4)) != null) {
            aVar.a(get(Long.valueOf(j4)));
        } else {
            this.f57221a.put(Long.valueOf(j4), new SoftReference<>(aVar));
        }
    }

    public void a(final long j4, final long j5, final String str) {
        if (get(Long.valueOf(j4)) != null) {
            SoftReference<a> remove = this.f57221a.remove(Long.valueOf(j4));
            if (remove == null || remove.get() == null) {
                return;
            }
            remove.get().a(get(Long.valueOf(j4)));
        } else if (TextUtils.isEmpty(str)) {
            e.a(12, j5);
        } else {
            com.ss.android.downloadlib.g.c.a((c.a<Object, R>) new c.a<Object, Object>() { // from class: com.ss.android.downloadlib.addownload.compliance.d.2
                @Override // com.ss.android.downloadlib.g.c.a
                public Object a(Object obj) {
                    BufferedInputStream bufferedInputStream;
                    Throwable th;
                    i a4;
                    try {
                        a4 = com.ss.android.socialbase.downloader.downloader.c.a(true, 0, str, null);
                    } catch (Exception e4) {
                        e = e4;
                        bufferedInputStream = null;
                    } catch (Throwable th2) {
                        bufferedInputStream = null;
                        th = th2;
                        f.a(bufferedInputStream);
                        throw th;
                    }
                    if (a4 == null) {
                        f.a(null);
                        return null;
                    }
                    bufferedInputStream = new BufferedInputStream(a4.a());
                    try {
                        try {
                            bufferedInputStream.mark(bufferedInputStream.available());
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeStream(bufferedInputStream, null, options);
                            int i2 = options.outWidth;
                            int i4 = options.outHeight;
                            int a5 = l.a(j.getContext(), 60.0f);
                            options.inSampleSize = d.b(a5, a5, options);
                            options.inJustDecodeBounds = false;
                            bufferedInputStream.reset();
                            Bitmap decodeStream = BitmapFactory.decodeStream(bufferedInputStream, null, options);
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.putOpt("ttdownloader_type", "load_bitmap");
                                jSONObject.putOpt("bm_original_w", Integer.valueOf(i2));
                                jSONObject.putOpt("bm_original_h", Integer.valueOf(i4));
                                jSONObject.putOpt("bm_bytes", Integer.valueOf(decodeStream == null ? -1 : decodeStream.getByteCount()));
                            } catch (Exception e5) {
                                e5.printStackTrace();
                            }
                            com.ss.android.downloadlib.d.a.a().a("ttd_pref_monitor", jSONObject, j5);
                            d.this.put(Long.valueOf(j4), decodeStream);
                            f.a(bufferedInputStream);
                        } catch (Exception e6) {
                            e = e6;
                            com.ss.android.downloadlib.e.c.a().a(e, "BitmapCache loadBitmap");
                            f.a(bufferedInputStream);
                            return null;
                        }
                        return null;
                    } catch (Throwable th3) {
                        th = th3;
                        f.a(bufferedInputStream);
                        throw th;
                    }
                }
            }, (Object) null).a(new c.a<Object, Object>() { // from class: com.ss.android.downloadlib.addownload.compliance.d.1
                @Override // com.ss.android.downloadlib.g.c.a
                public Object a(Object obj) {
                    SoftReference softReference = (SoftReference) d.this.f57221a.remove(Long.valueOf(j4));
                    if (softReference == null || softReference.get() == null) {
                        return null;
                    }
                    ((a) softReference.get()).a(d.this.get(Long.valueOf(j4)));
                    return null;
                }
            }).a();
        }
    }
}
