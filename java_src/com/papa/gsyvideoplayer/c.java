package com.papa.gsyvideoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.papa.gsyvideoplayer.cache.b;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;
/* compiled from: GSYVideoBaseManager.java */
/* loaded from: classes4.dex */
public abstract class c implements IMediaPlayer.OnPreparedListener, IMediaPlayer.OnCompletionListener, IMediaPlayer.OnBufferingUpdateListener, IMediaPlayer.OnSeekCompleteListener, IMediaPlayer.OnErrorListener, IMediaPlayer.OnVideoSizeChangedListener, IMediaPlayer.OnInfoListener, b.a, com.papa.gsyvideoplayer.video.base.a {

    /* renamed from: t  reason: collision with root package name */
    public static String f54911t = "GSYVideoBaseManager";

    /* renamed from: u  reason: collision with root package name */
    protected static final int f54912u = 0;

    /* renamed from: v  reason: collision with root package name */
    protected static final int f54913v = 1;

    /* renamed from: w  reason: collision with root package name */
    protected static final int f54914w = 2;

    /* renamed from: x  reason: collision with root package name */
    protected static final int f54915x = 3;

    /* renamed from: y  reason: collision with root package name */
    protected static final int f54916y = -192;

    /* renamed from: a  reason: collision with root package name */
    protected Context f54917a;

    /* renamed from: b  reason: collision with root package name */
    protected i f54918b;

    /* renamed from: c  reason: collision with root package name */
    protected Handler f54919c;

    /* renamed from: d  reason: collision with root package name */
    protected WeakReference<c2.a> f54920d;

    /* renamed from: e  reason: collision with root package name */
    protected WeakReference<c2.a> f54921e;

    /* renamed from: f  reason: collision with root package name */
    protected com.papa.gsyvideoplayer.player.b f54922f;

    /* renamed from: g  reason: collision with root package name */
    protected List<com.papa.gsyvideoplayer.model.c> f54923g;

    /* renamed from: i  reason: collision with root package name */
    protected com.papa.gsyvideoplayer.player.c f54925i;

    /* renamed from: j  reason: collision with root package name */
    protected com.papa.gsyvideoplayer.cache.b f54926j;

    /* renamed from: m  reason: collision with root package name */
    protected int f54929m;

    /* renamed from: o  reason: collision with root package name */
    protected int f54931o;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f54934r;

    /* renamed from: h  reason: collision with root package name */
    protected String f54924h = "";

    /* renamed from: k  reason: collision with root package name */
    protected int f54927k = 0;

    /* renamed from: l  reason: collision with root package name */
    protected int f54928l = 0;

    /* renamed from: n  reason: collision with root package name */
    protected int f54930n = -22;

    /* renamed from: p  reason: collision with root package name */
    protected int f54932p = 8000;

    /* renamed from: q  reason: collision with root package name */
    protected boolean f54933q = true;

    /* renamed from: s  reason: collision with root package name */
    private Runnable f54935s = new h();

    /* compiled from: GSYVideoBaseManager.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E();
            if (c.this.y() != null) {
                c.this.y().onPrepared();
            }
        }
    }

    /* compiled from: GSYVideoBaseManager.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E();
            if (c.this.y() != null) {
                c.this.y().onAutoCompletion();
            }
        }
    }

    /* compiled from: GSYVideoBaseManager.java */
    /* renamed from: com.papa.gsyvideoplayer.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class RunnableC0271c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f54938a;

        RunnableC0271c(int i2) {
            this.f54938a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.y() != null) {
                int i2 = this.f54938a;
                c cVar = c.this;
                if (i2 > cVar.f54931o) {
                    cVar.y().onBufferingUpdate(this.f54938a);
                } else {
                    cVar.y().onBufferingUpdate(c.this.f54931o);
                }
            }
        }
    }

    /* compiled from: GSYVideoBaseManager.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E();
            if (c.this.y() != null) {
                c.this.y().onSeekComplete();
            }
        }
    }

    /* compiled from: GSYVideoBaseManager.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f54941a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f54942b;

        e(int i2, int i4) {
            this.f54941a = i2;
            this.f54942b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E();
            if (c.this.y() != null) {
                c.this.y().onError(this.f54941a, this.f54942b);
            }
        }
    }

    /* compiled from: GSYVideoBaseManager.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f54944a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f54945b;

        f(int i2, int i4) {
            this.f54944a = i2;
            this.f54945b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            if (cVar.f54934r) {
                int i2 = this.f54944a;
                if (i2 == 701) {
                    cVar.b0();
                } else if (i2 == 702) {
                    cVar.E();
                }
            }
            if (c.this.y() != null) {
                c.this.y().onInfo(this.f54944a, this.f54945b);
            }
        }
    }

    /* compiled from: GSYVideoBaseManager.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.y() != null) {
                c.this.y().onVideoSizeChanged();
            }
        }
    }

    /* compiled from: GSYVideoBaseManager.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f54920d != null) {
                com.papa.gsyvideoplayer.utils.c.e("time out for error listener");
                c.this.y().onError(c.f54916y, c.f54916y);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GSYVideoBaseManager.java */
    /* loaded from: classes4.dex */
    public class i extends Handler {
        i(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 0) {
                c.this.R(message);
            } else if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                c.this.U(message);
            } else {
                com.papa.gsyvideoplayer.player.c cVar = c.this.f54925i;
                if (cVar != null) {
                    cVar.release();
                }
                com.papa.gsyvideoplayer.cache.b bVar = c.this.f54926j;
                if (bVar != null) {
                    bVar.release();
                }
                c cVar2 = c.this;
                cVar2.f54931o = 0;
                cVar2.W(cVar2.f54933q);
                c.this.E();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(Message message) {
        try {
            this.f54927k = 0;
            this.f54928l = 0;
            com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
            if (cVar != null) {
                cVar.release();
            }
            this.f54925i = M();
            com.papa.gsyvideoplayer.cache.b I = I();
            this.f54926j = I;
            if (I != null) {
                I.i(this);
            }
            com.papa.gsyvideoplayer.player.c cVar2 = this.f54925i;
            if (cVar2 instanceof com.papa.gsyvideoplayer.player.a) {
                ((com.papa.gsyvideoplayer.player.a) cVar2).g(this.f54922f);
            }
            this.f54925i.i(this.f54917a, message, this.f54923g, this.f54926j);
            W(this.f54933q);
            IMediaPlayer j4 = this.f54925i.j();
            j4.setOnCompletionListener(this);
            j4.setOnBufferingUpdateListener(this);
            j4.setScreenOnWhilePlaying(true);
            j4.setOnPreparedListener(this);
            j4.setOnSeekCompleteListener(this);
            j4.setOnErrorListener(this);
            j4.setOnInfoListener(this);
            j4.setOnVideoSizeChangedListener(this);
            j4.prepareAsync();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(Message message) {
        com.papa.gsyvideoplayer.player.c cVar;
        if (message.obj == null || (cVar = this.f54925i) == null) {
            return;
        }
        cVar.m();
    }

    private void a0(Message message) {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            cVar.l(message);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public boolean A() {
        com.papa.gsyvideoplayer.cache.b bVar = this.f54926j;
        return bVar != null && bVar.f();
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void B(int i2) {
        this.f54929m = i2;
    }

    protected void E() {
        com.papa.gsyvideoplayer.utils.c.e("cancelTimeOutBuffer");
        if (this.f54934r) {
            this.f54919c.removeCallbacks(this.f54935s);
        }
    }

    public void F(Context context) {
        G(context, null, null);
    }

    public void G(Context context, @Nullable File file, @Nullable String str) {
        com.papa.gsyvideoplayer.cache.b bVar = this.f54926j;
        if (bVar != null) {
            bVar.a(context, file, str);
        } else if (I() != null) {
            I().a(context, file, str);
        }
    }

    public void H(Context context) {
        this.f54917a = context.getApplicationContext();
    }

    protected com.papa.gsyvideoplayer.cache.b I() {
        return com.papa.gsyvideoplayer.cache.a.a();
    }

    public com.papa.gsyvideoplayer.cache.b J() {
        return this.f54926j;
    }

    public com.papa.gsyvideoplayer.player.c K() {
        return this.f54925i;
    }

    public List<com.papa.gsyvideoplayer.model.c> L() {
        return this.f54923g;
    }

    protected com.papa.gsyvideoplayer.player.c M() {
        return com.papa.gsyvideoplayer.player.e.a();
    }

    public com.papa.gsyvideoplayer.player.b N() {
        return this.f54922f;
    }

    public int O() {
        return this.f54932p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void P() {
        this.f54918b = new i(Looper.getMainLooper());
        this.f54919c = new Handler();
    }

    public void Q(Context context) {
        this.f54917a = context.getApplicationContext();
    }

    public boolean S() {
        return this.f54933q;
    }

    public boolean T() {
        return this.f54934r;
    }

    protected void V(Message message) {
        this.f54918b.sendMessage(message);
    }

    public void W(boolean z3) {
        this.f54933q = z3;
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            cVar.k(z3);
        }
    }

    public void X(List<com.papa.gsyvideoplayer.model.c> list) {
        this.f54923g = list;
    }

    public void Y(com.papa.gsyvideoplayer.player.b bVar) {
        this.f54922f = bVar;
    }

    public void Z(int i2, boolean z3) {
        this.f54932p = i2;
        this.f54934r = z3;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void a(Context context, File file, String str) {
        G(context, file, str);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int b() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.b();
        }
        return 0;
    }

    protected void b0() {
        com.papa.gsyvideoplayer.utils.c.e("startTimeOutBuffer");
        this.f54919c.postDelayed(this.f54935s, this.f54932p);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void c(float f4, boolean z3) {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            cVar.c(f4, z3);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public boolean d() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.d();
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public boolean e(Context context, File file, String str) {
        if (I() != null) {
            return I().e(context, file, str);
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void f(float f4, boolean z3) {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            cVar.f(f4, z3);
        }
    }

    @Override // com.papa.gsyvideoplayer.cache.b.a
    public void g(File file, String str, int i2) {
        this.f54931o = i2;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public long getCurrentPosition() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getCurrentVideoHeight() {
        return this.f54928l;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getCurrentVideoWidth() {
        return this.f54927k;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public long getDuration() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.getDuration();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getVideoHeight() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.getVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getVideoSarDen() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.getVideoSarDen();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getVideoSarNum() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.getVideoSarNum();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int getVideoWidth() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.getVideoWidth();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public long h() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.h();
        }
        return 0L;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void i(c2.a aVar) {
        if (aVar == null) {
            this.f54921e = null;
        } else {
            this.f54921e = new WeakReference<>(aVar);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public boolean isPlaying() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            return cVar.isPlaying();
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void j(Surface surface) {
        Message message = new Message();
        message.what = 1;
        message.obj = surface;
        a0(message);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void k(String str) {
        this.f54924h = str;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int l() {
        return this.f54929m;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void m(String str, Map<String, String> map, boolean z3, float f4, boolean z4, File file, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Message message = new Message();
        message.what = 0;
        message.obj = new com.papa.gsyvideoplayer.model.a(str, map, z3, f4, z4, file, str2);
        V(message);
        if (this.f54934r) {
            b0();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void n(int i2) {
        this.f54927k = i2;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int o() {
        return this.f54930n;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i2) {
        this.f54919c.post(new RunnableC0271c(i2));
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
    public void onCompletion(IMediaPlayer iMediaPlayer) {
        this.f54919c.post(new b());
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
    public boolean onError(IMediaPlayer iMediaPlayer, int i2, int i4) {
        this.f54919c.post(new e(i2, i4));
        return true;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo(IMediaPlayer iMediaPlayer, int i2, int i4) {
        this.f54919c.post(new f(i2, i4));
        return false;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
    public void onPrepared(IMediaPlayer iMediaPlayer) {
        this.f54919c.post(new a());
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(IMediaPlayer iMediaPlayer) {
        this.f54919c.post(new d());
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i2, int i4, int i5, int i6) {
        this.f54927k = iMediaPlayer.getVideoWidth();
        this.f54928l = iMediaPlayer.getVideoHeight();
        this.f54919c.post(new g());
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void p(c2.a aVar) {
        if (aVar == null) {
            this.f54920d = null;
        } else {
            this.f54920d = new WeakReference<>(aVar);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void pause() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            cVar.pause();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public String q() {
        return this.f54924h;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public c2.a r() {
        WeakReference<c2.a> weakReference = this.f54921e;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void s(Surface surface) {
        Message message = new Message();
        message.what = 3;
        message.obj = surface;
        V(message);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void seekTo(long j4) {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            cVar.seekTo(j4);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void start() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            cVar.start();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void stop() {
        com.papa.gsyvideoplayer.player.c cVar = this.f54925i;
        if (cVar != null) {
            cVar.stop();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public int t() {
        return 10001;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void u(int i2) {
        this.f54928l = i2;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public com.papa.gsyvideoplayer.player.c v() {
        return this.f54925i;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void w(String str, Map<String, String> map, boolean z3, float f4, boolean z4, File file) {
        m(str, map, z3, f4, z4, file, null);
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void x(int i2) {
        this.f54930n = i2;
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public c2.a y() {
        WeakReference<c2.a> weakReference = this.f54920d;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.papa.gsyvideoplayer.video.base.a
    public void z() {
        Message message = new Message();
        message.what = 2;
        V(message);
        this.f54924h = "";
        this.f54930n = -22;
    }
}
