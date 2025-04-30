package com.papa.gsyvideoplayer.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ThumbnailUtils;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* compiled from: GifCreateHelper.java */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f55159a;

    /* renamed from: b  reason: collision with root package name */
    private StandardGSYVideoPlayer f55160b;

    /* renamed from: c  reason: collision with root package name */
    private c f55161c;

    /* renamed from: d  reason: collision with root package name */
    private Timer f55162d;

    /* renamed from: e  reason: collision with root package name */
    private List<String> f55163e;

    /* renamed from: f  reason: collision with root package name */
    private File f55164f;

    /* renamed from: g  reason: collision with root package name */
    private c2.c f55165g;

    /* renamed from: h  reason: collision with root package name */
    private int f55166h;

    /* renamed from: i  reason: collision with root package name */
    private int f55167i;

    /* renamed from: j  reason: collision with root package name */
    private int f55168j;

    /* renamed from: k  reason: collision with root package name */
    private int f55169k;

    /* compiled from: GifCreateHelper.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f55170a;

        a(File file) {
            this.f55170a = file;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.this.f55163e.size() <= 2) {
                g.this.f55165g.a(false, null);
                return;
            }
            g gVar = g.this;
            gVar.j(this.f55170a, gVar.f55163e, g.this.f55166h, g.this.f55167i, g.this.f55168j, g.this.f55165g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GifCreateHelper.java */
    /* loaded from: classes4.dex */
    public class b implements c2.f {
        b() {
        }

        @Override // c2.f
        public void a(boolean z3, File file) {
            g.this.f55159a = true;
            if (z3) {
                com.papa.gsyvideoplayer.utils.c.e(" SUCCESS CREATE FILE " + file.getAbsolutePath());
                g.this.f55163e.add(file.getAbsolutePath());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GifCreateHelper.java */
    /* loaded from: classes4.dex */
    public class c extends TimerTask {
        private c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (g.this.f55159a) {
                g.this.f55159a = false;
                g.this.l();
            }
        }

        /* synthetic */ c(g gVar, a aVar) {
            this();
        }
    }

    public g(StandardGSYVideoPlayer standardGSYVideoPlayer, c2.c cVar) {
        this(standardGSYVideoPlayer, cVar, 0, 1, 5, 50);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        File file = this.f55164f;
        this.f55160b.saveFrame(new File(file, "GSY-TMP-FRAME" + System.currentTimeMillis() + ".tmp"), new b());
    }

    public void i() {
        c cVar = this.f55161c;
        if (cVar != null) {
            cVar.cancel();
            this.f55161c = null;
        }
    }

    public void j(File file, List<String> list, int i2, int i4, int i5, c2.c cVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        com.papa.gsyvideoplayer.utils.a aVar = new com.papa.gsyvideoplayer.utils.a();
        aVar.o(byteArrayOutputStream);
        aVar.l(0);
        aVar.g(i2);
        int i6 = 0;
        while (i6 < list.size()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = i4;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(list.get(i6), options);
            double d4 = options.outWidth;
            double d5 = i5;
            Double.isNaN(d4);
            Double.isNaN(d5);
            int i7 = i6;
            double d6 = options.outHeight;
            Double.isNaN(d6);
            Double.isNaN(d5);
            options.inJustDecodeBounds = false;
            Bitmap decodeFile = BitmapFactory.decodeFile(list.get(i7), options);
            Bitmap extractThumbnail = ThumbnailUtils.extractThumbnail(decodeFile, (int) (d4 / d5), (int) (d6 / d5));
            aVar.a(extractThumbnail);
            decodeFile.recycle();
            extractThumbnail.recycle();
            i6 = i7 + 1;
            cVar.b(i6, list.size());
        }
        aVar.d();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file.getPath());
            byteArrayOutputStream.writeTo(fileOutputStream);
            byteArrayOutputStream.flush();
            fileOutputStream.flush();
            byteArrayOutputStream.close();
            fileOutputStream.close();
            cVar.a(true, file);
        } catch (IOException e4) {
            e4.printStackTrace();
            cVar.a(false, file);
        }
    }

    public void k(File file) {
        this.f55164f = file;
        i();
        this.f55163e.clear();
        c cVar = new c(this, null);
        this.f55161c = cVar;
        this.f55162d.schedule(cVar, 0L, this.f55169k);
    }

    public void m(File file) {
        i();
        this.f55159a = true;
        new Thread(new a(file)).start();
    }

    public g(StandardGSYVideoPlayer standardGSYVideoPlayer, c2.c cVar, int i2, int i4, int i5, int i6) {
        this.f55159a = true;
        this.f55162d = new Timer();
        this.f55163e = new ArrayList();
        this.f55166h = 0;
        this.f55167i = 1;
        this.f55168j = 5;
        this.f55169k = 50;
        this.f55160b = standardGSYVideoPlayer;
        this.f55165g = cVar;
        this.f55166h = i2;
        this.f55167i = i4;
        this.f55168j = i5;
        this.f55169k = i6;
    }
}
