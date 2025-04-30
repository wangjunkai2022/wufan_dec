package com.join.android.app.component.album.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.collection.LruCache;
import com.facebook.common.internal.k;
import com.facebook.imagepipeline.cache.q;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.join.mgps.Util.k0;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
/* loaded from: classes.dex */
public class ImageLoader {

    /* renamed from: k  reason: collision with root package name */
    private static int f17435k = 10485760;

    /* renamed from: l  reason: collision with root package name */
    private static ImageLoader f17436l;

    /* renamed from: a  reason: collision with root package name */
    private LruCache<String, Bitmap> f17437a;

    /* renamed from: b  reason: collision with root package name */
    private ExecutorService f17438b;

    /* renamed from: e  reason: collision with root package name */
    private LinkedList<Runnable> f17441e;

    /* renamed from: f  reason: collision with root package name */
    private Thread f17442f;

    /* renamed from: g  reason: collision with root package name */
    private Handler f17443g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f17444h;

    /* renamed from: j  reason: collision with root package name */
    private volatile Semaphore f17446j;

    /* renamed from: c  reason: collision with root package name */
    private int f17439c = 1;

    /* renamed from: d  reason: collision with root package name */
    private Type f17440d = Type.LIFO;

    /* renamed from: i  reason: collision with root package name */
    private volatile Semaphore f17445i = new Semaphore(0);

    /* loaded from: classes.dex */
    public enum Type {
        FIFO,
        LIFO
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements k<q> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q f17447a;

        a(q qVar) {
            this.f17447a = qVar;
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public q get() {
            return this.f17447a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends Thread {

        /* loaded from: classes.dex */
        class a extends Handler {
            a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                ImageLoader.this.f17438b.execute(ImageLoader.this.s());
                try {
                    ImageLoader.this.f17446j.acquire();
                } catch (InterruptedException unused) {
                }
            }
        }

        b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            ImageLoader.this.f17443g = new a();
            ImageLoader.this.f17445i.release();
            Looper.loop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends LruCache<String, Bitmap> {
        c(int i2) {
            super(i2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.collection.LruCache
        /* renamed from: e */
        public int d(String str, Bitmap bitmap) {
            return bitmap.getRowBytes() * bitmap.getHeight();
        }
    }

    /* loaded from: classes.dex */
    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            g gVar = (g) message.obj;
            ImageView imageView = gVar.f17459b;
            Bitmap bitmap = gVar.f17458a;
            if (imageView.getTag().toString().equals(gVar.f17460c)) {
                imageView.setImageBitmap(bitmap);
            }
        }
    }

    /* loaded from: classes.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f17452a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f17453b;

        e(ImageView imageView, String str) {
            this.f17452a = imageView;
            this.f17453b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            f p3 = ImageLoader.this.p(this.f17452a);
            ImageLoader.this.i(this.f17453b, ImageLoader.this.l(this.f17453b, p3.f17455a, p3.f17456b));
            g gVar = new g(ImageLoader.this, null);
            gVar.f17458a = ImageLoader.this.m(this.f17453b);
            gVar.f17459b = this.f17452a;
            gVar.f17460c = this.f17453b;
            Message obtain = Message.obtain();
            obtain.obj = gVar;
            ImageLoader.this.f17444h.sendMessage(obtain);
            ImageLoader.this.f17446j.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f {

        /* renamed from: a  reason: collision with root package name */
        int f17455a;

        /* renamed from: b  reason: collision with root package name */
        int f17456b;

        private f() {
        }

        /* synthetic */ f(ImageLoader imageLoader, a aVar) {
            this();
        }
    }

    /* loaded from: classes.dex */
    private class g {

        /* renamed from: a  reason: collision with root package name */
        Bitmap f17458a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f17459b;

        /* renamed from: c  reason: collision with root package name */
        String f17460c;

        private g() {
        }

        /* synthetic */ g(ImageLoader imageLoader, a aVar) {
            this();
        }
    }

    public ImageLoader(int i2, Type type) {
        t(i2, type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(String str, Bitmap bitmap) {
        if (m(str) != null || bitmap == null) {
            return;
        }
        this.f17437a.put(str, bitmap);
    }

    private synchronized void j(Runnable runnable) {
        try {
            if (this.f17443g == null) {
                this.f17445i.acquire();
            }
        } catch (InterruptedException unused) {
        }
        this.f17441e.add(runnable);
        this.f17443g.sendEmptyMessage(272);
    }

    private static ImagePipelineConfig n(Context context) {
        int i2 = f17435k;
        a aVar = new a(new q(i2, Integer.MAX_VALUE, i2, Integer.MAX_VALUE, Integer.MAX_VALUE));
        ImagePipelineConfig.Builder newBuilder = ImagePipelineConfig.newBuilder(context);
        newBuilder.setBitmapMemoryCacheParamsSupplier(aVar);
        return newBuilder.build();
    }

    private static int o(Object obj, String str) {
        try {
            Field declaredField = ImageView.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            int intValue = ((Integer) declaredField.get(obj)).intValue();
            if (intValue <= 0 || intValue >= Integer.MAX_VALUE) {
                return 0;
            }
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(intValue);
                sb.append("");
            } catch (Exception unused) {
            }
            return intValue;
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static ImageLoader q() {
        if (f17436l == null) {
            synchronized (ImageLoader.class) {
                if (f17436l == null) {
                    f17436l = new ImageLoader(1, Type.LIFO);
                }
            }
        }
        return f17436l;
    }

    public static ImageLoader r(int i2, Type type) {
        if (f17436l == null) {
            synchronized (ImageLoader.class) {
                if (f17436l == null) {
                    f17436l = new ImageLoader(i2, type);
                }
            }
        }
        return f17436l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Runnable s() {
        Type type = this.f17440d;
        if (type == Type.FIFO) {
            return this.f17441e.removeFirst();
        } else if (type == Type.LIFO) {
            return this.f17441e.removeLast();
        } else {
            return null;
        }
    }

    private void t(int i2, Type type) {
        b bVar = new b();
        this.f17442f = bVar;
        bVar.start();
        this.f17437a = new c(((int) Runtime.getRuntime().maxMemory()) / 8);
        this.f17438b = Executors.newFixedThreadPool(i2);
        this.f17446j = new Semaphore(i2);
        this.f17441e = new LinkedList<>();
        if (type == null) {
            type = Type.LIFO;
        }
        this.f17440d = type;
    }

    public static void u(Context context) {
        k0.m(context, 40);
    }

    public void h(String str, Bitmap bitmap) {
        i(str, bitmap);
    }

    public int k(BitmapFactory.Options options, int i2, int i4) {
        int i5 = options.outWidth;
        int i6 = options.outHeight;
        if (i5 <= i2 || i6 <= i4) {
            return 1;
        }
        float f4 = i5 / i2;
        return Math.max(Math.round(f4), Math.round(f4));
    }

    public Bitmap l(String str, int i2, int i4) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = k(options, i2, i4);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public Bitmap m(String str) {
        return this.f17437a.get(str);
    }

    public f p(ImageView imageView) {
        f fVar = new f(this, null);
        DisplayMetrics displayMetrics = imageView.getContext().getResources().getDisplayMetrics();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int width = layoutParams.width == -2 ? 0 : imageView.getWidth();
        if (width <= 0) {
            width = layoutParams.width;
        }
        if (width <= 0) {
            width = o(imageView, "mMaxWidth");
        }
        if (width <= 0) {
            width = displayMetrics.widthPixels;
        }
        int height = layoutParams.height != -2 ? imageView.getHeight() : 0;
        if (height <= 0) {
            height = layoutParams.height;
        }
        if (height <= 0) {
            height = o(imageView, "mMaxHeight");
        }
        if (height <= 0) {
            height = displayMetrics.heightPixels;
        }
        fVar.f17455a = width;
        fVar.f17456b = height;
        return fVar;
    }

    public void v(String str, ImageView imageView) {
        imageView.setTag(str);
        if (this.f17444h == null) {
            this.f17444h = new d();
        }
        Bitmap m4 = m(str);
        if (m4 != null) {
            g gVar = new g(this, null);
            gVar.f17458a = m4;
            gVar.f17459b = imageView;
            gVar.f17460c = str;
            Message obtain = Message.obtain();
            obtain.obj = gVar;
            this.f17444h.sendMessage(obtain);
            return;
        }
        j(new e(imageView, str));
    }

    public void w(String str) {
        this.f17437a.remove(str);
    }
}
