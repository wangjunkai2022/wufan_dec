package com.facebook.imageutils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.util.Pair;
import androidx.core.util.Pools;
import com.facebook.common.internal.h;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
/* compiled from: BitmapUtil.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f13361a = 16384;

    /* renamed from: b  reason: collision with root package name */
    private static final int f13362b = 12;

    /* renamed from: c  reason: collision with root package name */
    private static final Pools.SynchronizedPool<ByteBuffer> f13363c = new Pools.SynchronizedPool<>(12);

    /* renamed from: d  reason: collision with root package name */
    public static final int f13364d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13365e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13366f = 4;

    /* renamed from: g  reason: collision with root package name */
    public static final int f13367g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f13368h = 8;

    /* renamed from: i  reason: collision with root package name */
    public static final float f13369i = 2048.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapUtil.java */
    /* renamed from: com.facebook.imageutils.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C0088a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13370a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f13370a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13370a[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13370a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13370a[Bitmap.Config.RGB_565.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13370a[Bitmap.Config.RGBA_F16.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Nullable
    public static Pair<Integer, Integer> a(Uri uri) {
        h.i(uri);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(uri.getPath(), options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            return null;
        }
        return new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
    }

    @Nullable
    public static Pair<Integer, Integer> b(InputStream inputStream) {
        h.i(inputStream);
        Pools.SynchronizedPool<ByteBuffer> synchronizedPool = f13363c;
        ByteBuffer acquire = synchronizedPool.acquire();
        if (acquire == null) {
            acquire = ByteBuffer.allocate(16384);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = acquire.array();
            Pair<Integer, Integer> pair = null;
            BitmapFactory.decodeStream(inputStream, null, options);
            if (options.outWidth != -1 && options.outHeight != -1) {
                pair = new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
            }
            synchronizedPool.release(acquire);
            return pair;
        } catch (Throwable th) {
            f13363c.release(acquire);
            throw th;
        }
    }

    @Nullable
    public static Pair<Integer, Integer> c(byte[] bArr) {
        return b(new ByteArrayInputStream(bArr));
    }

    public static b d(InputStream inputStream) {
        h.i(inputStream);
        Pools.SynchronizedPool<ByteBuffer> synchronizedPool = f13363c;
        ByteBuffer acquire = synchronizedPool.acquire();
        if (acquire == null) {
            acquire = ByteBuffer.allocate(16384);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = acquire.array();
            BitmapFactory.decodeStream(inputStream, null, options);
            b bVar = new b(options.outWidth, options.outHeight, Build.VERSION.SDK_INT >= 26 ? options.outColorSpace : null);
            synchronizedPool.release(acquire);
            return bVar;
        } catch (Throwable th) {
            f13363c.release(acquire);
            throw th;
        }
    }

    public static int e(Bitmap.Config config) {
        int i2 = C0088a.f13370a[config.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3 || i2 == 4) {
                    return 2;
                }
                if (i2 == 5) {
                    return 8;
                }
                throw new UnsupportedOperationException("The provided Bitmap.Config is not supported");
            }
            return 1;
        }
        return 4;
    }

    public static int f(int i2, int i4, Bitmap.Config config) {
        return i2 * i4 * e(config);
    }

    @SuppressLint({"NewApi"})
    public static int g(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        if (Build.VERSION.SDK_INT > 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
            }
        }
        if (Build.VERSION.SDK_INT >= 12) {
            return bitmap.getByteCount();
        }
        return bitmap.getRowBytes() * bitmap.getHeight();
    }
}
