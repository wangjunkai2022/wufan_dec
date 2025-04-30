package com.ss.android.socialbase.appdownloader.e;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.i.f;
import com.ss.android.socialbase.downloader.network.i;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: NotificationIconCache.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static int f57644a = 8;

    /* renamed from: b  reason: collision with root package name */
    private static volatile c f57645b;

    /* renamed from: c  reason: collision with root package name */
    private a<Integer, Bitmap> f57646c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NotificationIconCache.java */
    /* loaded from: classes4.dex */
    public static class a<K, T> extends LinkedHashMap<K, T> {

        /* renamed from: a  reason: collision with root package name */
        final int f57650a;

        public a(int i2, int i4) {
            super(i4, 0.75f, true);
            this.f57650a = i2;
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<K, T> entry) {
            return size() > this.f57650a;
        }
    }

    private c() {
        this.f57646c = null;
        int i2 = f57644a;
        this.f57646c = new a<>(i2, i2 / 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteArrayOutputStream b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read > -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream;
            }
        }
    }

    public static c a() {
        if (f57645b == null) {
            synchronized (c.class) {
                if (f57645b == null) {
                    f57645b = new c();
                }
            }
        }
        return f57645b;
    }

    public Bitmap a(int i2) {
        return this.f57646c.get(Integer.valueOf(i2));
    }

    public void a(final int i2, final String str) {
        if (TextUtils.isEmpty(str) || a(i2) != null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.m().submit(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.e.c.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable[]] */
            @Override // java.lang.Runnable
            public void run() {
                ByteArrayOutputStream byteArrayOutputStream;
                ByteArrayInputStream byteArrayInputStream;
                ByteArrayInputStream byteArrayInputStream2;
                Throwable th;
                InputStream inputStream;
                Exception e4;
                int i4 = 4;
                i4 = 4;
                i4 = 4;
                i4 = 4;
                i4 = 4;
                try {
                    try {
                        i a4 = com.ss.android.socialbase.downloader.downloader.c.a(true, 0, str, null);
                        if (a4 == null) {
                            f.a(null, null, null, null);
                            return;
                        }
                        inputStream = a4.a();
                        try {
                            byteArrayOutputStream = c.b(inputStream);
                            try {
                                byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                            } catch (Exception e5) {
                                byteArrayInputStream2 = null;
                                e4 = e5;
                                byteArrayInputStream = null;
                            } catch (Throwable th2) {
                                byteArrayInputStream2 = null;
                                th = th2;
                                byteArrayInputStream = null;
                            }
                        } catch (Exception e6) {
                            byteArrayInputStream = null;
                            byteArrayInputStream2 = null;
                            e4 = e6;
                            byteArrayOutputStream = null;
                        } catch (Throwable th3) {
                            byteArrayInputStream = null;
                            byteArrayInputStream2 = null;
                            th = th3;
                            byteArrayOutputStream = null;
                        }
                        try {
                            byteArrayInputStream2 = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                            try {
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inJustDecodeBounds = true;
                                BitmapFactory.decodeStream(byteArrayInputStream, null, options);
                                int a5 = com.ss.android.socialbase.appdownloader.c.a(com.ss.android.socialbase.downloader.downloader.c.N(), 44.0f);
                                options.inSampleSize = c.a(a5, a5, options);
                                options.inJustDecodeBounds = false;
                                c.this.f57646c.put(Integer.valueOf(i2), BitmapFactory.decodeStream(byteArrayInputStream2, null, options));
                                f.a(inputStream, byteArrayOutputStream, byteArrayInputStream, byteArrayInputStream2);
                            } catch (Exception e7) {
                                e4 = e7;
                                e4.printStackTrace();
                                i4 = new Closeable[]{inputStream, byteArrayOutputStream, byteArrayInputStream, byteArrayInputStream2};
                                f.a((Closeable[]) i4);
                            }
                        } catch (Exception e8) {
                            byteArrayInputStream2 = null;
                            e4 = e8;
                        } catch (Throwable th4) {
                            byteArrayInputStream2 = null;
                            th = th4;
                            Closeable[] closeableArr = new Closeable[i4];
                            closeableArr[0] = inputStream;
                            closeableArr[1] = byteArrayOutputStream;
                            closeableArr[2] = byteArrayInputStream;
                            closeableArr[3] = byteArrayInputStream2;
                            f.a(closeableArr);
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Exception e9) {
                    byteArrayOutputStream = null;
                    byteArrayInputStream = null;
                    byteArrayInputStream2 = null;
                    e4 = e9;
                    inputStream = null;
                } catch (Throwable th6) {
                    byteArrayOutputStream = null;
                    byteArrayInputStream = null;
                    byteArrayInputStream2 = null;
                    th = th6;
                    inputStream = null;
                }
            }
        });
    }

    public static int a(int i2, int i4, BitmapFactory.Options options) {
        int i5 = options.outWidth;
        if (i5 > i2 || options.outHeight > i4) {
            return Math.min(Math.round(i5 / i2), Math.round(options.outHeight / i4));
        }
        return 1;
    }
}
