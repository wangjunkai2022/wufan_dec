package fm.jiecao.jcvideoplayer_lib;

import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.TextureView;
import java.util.Map;
/* compiled from: JCMediaManager.java */
/* loaded from: classes3.dex */
public class b implements TextureView.SurfaceTextureListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnVideoSizeChangedListener {

    /* renamed from: g  reason: collision with root package name */
    public static String f65611g = "JieCaoVideoPlayer";

    /* renamed from: h  reason: collision with root package name */
    private static b f65612h = null;

    /* renamed from: i  reason: collision with root package name */
    public static JCResizeTextureView f65613i = null;

    /* renamed from: j  reason: collision with root package name */
    public static SurfaceTexture f65614j = null;

    /* renamed from: k  reason: collision with root package name */
    public static String f65615k = null;

    /* renamed from: l  reason: collision with root package name */
    public static boolean f65616l = false;

    /* renamed from: m  reason: collision with root package name */
    public static Map<String, String> f65617m = null;

    /* renamed from: n  reason: collision with root package name */
    public static final int f65618n = 0;

    /* renamed from: o  reason: collision with root package name */
    public static final int f65619o = 2;

    /* renamed from: a  reason: collision with root package name */
    public MediaPlayer f65620a = new MediaPlayer();

    /* renamed from: b  reason: collision with root package name */
    public int f65621b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f65622c = 0;

    /* renamed from: d  reason: collision with root package name */
    HandlerThread f65623d;

    /* renamed from: e  reason: collision with root package name */
    g f65624e;

    /* renamed from: f  reason: collision with root package name */
    Handler f65625f;

    /* compiled from: JCMediaManager.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().p();
            }
        }
    }

    /* compiled from: JCMediaManager.java */
    /* renamed from: fm.jiecao.jcvideoplayer_lib.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0441b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f65627a;

        RunnableC0441b(int i2) {
            this.f65627a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().setBufferProgress(this.f65627a);
            }
        }
    }

    /* compiled from: JCMediaManager.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().u();
            }
        }
    }

    /* compiled from: JCMediaManager.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f65630a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f65631b;

        d(int i2, int i4) {
            this.f65630a = i2;
            this.f65631b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().r(this.f65630a, this.f65631b);
            }
        }
    }

    /* compiled from: JCMediaManager.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f65633a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f65634b;

        e(int i2, int i4) {
            this.f65633a = i2;
            this.f65634b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().t(this.f65633a, this.f65634b);
            }
        }
    }

    /* compiled from: JCMediaManager.java */
    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (fm.jiecao.jcvideoplayer_lib.f.b() != null) {
                fm.jiecao.jcvideoplayer_lib.f.b().E();
            }
        }
    }

    /* compiled from: JCMediaManager.java */
    /* loaded from: classes3.dex */
    public class g extends Handler {
        public g(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 != 0) {
                if (i2 != 2) {
                    return;
                }
                b.this.f65620a.release();
                return;
            }
            try {
                b bVar = b.this;
                bVar.f65621b = 0;
                bVar.f65622c = 0;
                bVar.f65620a.release();
                b.this.f65620a = new MediaPlayer();
                b.this.f65620a.setAudioStreamType(3);
                b.this.f65620a.setLooping(b.f65616l);
                b bVar2 = b.this;
                bVar2.f65620a.setOnPreparedListener(bVar2);
                b bVar3 = b.this;
                bVar3.f65620a.setOnCompletionListener(bVar3);
                b bVar4 = b.this;
                bVar4.f65620a.setOnBufferingUpdateListener(bVar4);
                b.this.f65620a.setScreenOnWhilePlaying(true);
                b bVar5 = b.this;
                bVar5.f65620a.setOnSeekCompleteListener(bVar5);
                b bVar6 = b.this;
                bVar6.f65620a.setOnErrorListener(bVar6);
                b bVar7 = b.this;
                bVar7.f65620a.setOnInfoListener(bVar7);
                b bVar8 = b.this;
                bVar8.f65620a.setOnVideoSizeChangedListener(bVar8);
                b.this.f65620a.setVolume(0.0f, 0.0f);
                MediaPlayer.class.getDeclaredMethod("setDataSource", String.class, Map.class).invoke(b.this.f65620a, b.f65615k, b.f65617m);
                b.this.f65620a.prepareAsync();
                b.this.f65620a.setSurface(new Surface(b.f65614j));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public b() {
        HandlerThread handlerThread = new HandlerThread(f65611g);
        this.f65623d = handlerThread;
        handlerThread.start();
        this.f65624e = new g(this.f65623d.getLooper());
        this.f65625f = new Handler();
    }

    public static b b() {
        if (f65612h == null) {
            f65612h = new b();
        }
        return f65612h;
    }

    public Point a() {
        if (this.f65621b == 0 || this.f65622c == 0) {
            return null;
        }
        return new Point(this.f65621b, this.f65622c);
    }

    public void c() {
        d();
        Message message = new Message();
        message.what = 0;
        this.f65624e.sendMessage(message);
    }

    public void d() {
        Message message = new Message();
        message.what = 2;
        this.f65624e.sendMessage(message);
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
        this.f65625f.post(new RunnableC0441b(i2));
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f65625f.post(new a());
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i2, int i4) {
        this.f65625f.post(new d(i2, i4));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i2, int i4) {
        this.f65625f.post(new e(i2, i4));
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f65620a.start();
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        this.f65625f.post(new c());
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("onSurfaceTextureAvailable [");
        sb.append(fm.jiecao.jcvideoplayer_lib.f.b().hashCode());
        sb.append("] ");
        SurfaceTexture surfaceTexture2 = f65614j;
        if (surfaceTexture2 == null) {
            f65614j = surfaceTexture;
            c();
            return;
        }
        f65613i.setSurfaceTexture(surfaceTexture2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return f65614j == null;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("onSurfaceTextureSizeChanged [");
        sb.append(fm.jiecao.jcvideoplayer_lib.f.b().hashCode());
        sb.append("] ");
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i4) {
        this.f65621b = i2;
        this.f65622c = i4;
        this.f65625f.post(new f());
    }
}
