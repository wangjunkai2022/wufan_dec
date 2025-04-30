package com.join.android.app.component.video;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.join.android.app.component.video.MediaController;
import java.io.IOException;
/* loaded from: classes2.dex */
public class MyVideoView extends SurfaceView implements MediaController.e {
    SurfaceHolder.Callback A;

    /* renamed from: a  reason: collision with root package name */
    private String f17586a;

    /* renamed from: b  reason: collision with root package name */
    private Context f17587b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f17588c;

    /* renamed from: d  reason: collision with root package name */
    private int f17589d;

    /* renamed from: e  reason: collision with root package name */
    private SurfaceHolder f17590e;

    /* renamed from: f  reason: collision with root package name */
    public MediaPlayer f17591f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f17592g;

    /* renamed from: h  reason: collision with root package name */
    private int f17593h;

    /* renamed from: i  reason: collision with root package name */
    private int f17594i;

    /* renamed from: j  reason: collision with root package name */
    private int f17595j;

    /* renamed from: k  reason: collision with root package name */
    private int f17596k;

    /* renamed from: l  reason: collision with root package name */
    private MediaController f17597l;

    /* renamed from: m  reason: collision with root package name */
    private MediaPlayer.OnCompletionListener f17598m;

    /* renamed from: n  reason: collision with root package name */
    private MediaPlayer.OnPreparedListener f17599n;

    /* renamed from: o  reason: collision with root package name */
    private MediaPlayer.OnBufferingUpdateListener f17600o;

    /* renamed from: p  reason: collision with root package name */
    private int f17601p;

    /* renamed from: q  reason: collision with root package name */
    private MediaPlayer.OnErrorListener f17602q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f17603r;

    /* renamed from: s  reason: collision with root package name */
    private int f17604s;

    /* renamed from: t  reason: collision with root package name */
    private g f17605t;

    /* renamed from: u  reason: collision with root package name */
    private h f17606u;

    /* renamed from: v  reason: collision with root package name */
    MediaPlayer.OnVideoSizeChangedListener f17607v;

    /* renamed from: w  reason: collision with root package name */
    MediaPlayer.OnPreparedListener f17608w;

    /* renamed from: x  reason: collision with root package name */
    private MediaPlayer.OnCompletionListener f17609x;

    /* renamed from: y  reason: collision with root package name */
    private MediaPlayer.OnErrorListener f17610y;

    /* renamed from: z  reason: collision with root package name */
    private MediaPlayer.OnBufferingUpdateListener f17611z;

    /* loaded from: classes2.dex */
    class a implements MediaPlayer.OnVideoSizeChangedListener {
        a() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i4) {
            MyVideoView.this.f17593h = mediaPlayer.getVideoWidth();
            MyVideoView.this.f17594i = mediaPlayer.getVideoHeight();
            if (MyVideoView.this.f17605t != null) {
                MyVideoView.this.f17605t.a();
            }
            if (MyVideoView.this.f17593h != 0) {
                int unused = MyVideoView.this.f17594i;
            }
            MyVideoView.this.getHolder().setFixedSize(MyVideoView.this.f17593h, MyVideoView.this.f17594i);
        }
    }

    /* loaded from: classes2.dex */
    class b implements MediaPlayer.OnPreparedListener {
        b() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            MyVideoView.this.f17592g = true;
            if (MyVideoView.this.f17599n != null) {
                MyVideoView.this.f17599n.onPrepared(MyVideoView.this.f17591f);
            }
            if (MyVideoView.this.f17597l != null) {
                MyVideoView.this.f17597l.setEnabled(true);
            }
            MyVideoView.this.f17593h = mediaPlayer.getVideoWidth();
            MyVideoView.this.f17594i = mediaPlayer.getVideoHeight();
            if (MyVideoView.this.f17593h == 0 || MyVideoView.this.f17594i == 0) {
                if (MyVideoView.this.f17604s != 0) {
                    MyVideoView myVideoView = MyVideoView.this;
                    myVideoView.f17591f.seekTo(myVideoView.f17604s);
                    MyVideoView.this.f17604s = 0;
                }
                if (MyVideoView.this.f17603r) {
                    MyVideoView.this.f17591f.start();
                    MyVideoView.this.f17603r = false;
                    return;
                }
                return;
            }
            MyVideoView.this.getHolder().setFixedSize(MyVideoView.this.f17593h, MyVideoView.this.f17594i);
            if (MyVideoView.this.f17595j == MyVideoView.this.f17593h && MyVideoView.this.f17596k == MyVideoView.this.f17594i) {
                if (MyVideoView.this.f17604s != 0) {
                    MyVideoView myVideoView2 = MyVideoView.this;
                    myVideoView2.f17591f.seekTo(myVideoView2.f17604s);
                    MyVideoView.this.f17604s = 0;
                }
                if (MyVideoView.this.f17603r) {
                    MyVideoView.this.f17591f.start();
                    MyVideoView.this.f17603r = false;
                    if (MyVideoView.this.f17597l != null) {
                        MyVideoView.this.f17597l.show();
                    }
                } else if (MyVideoView.this.isPlaying()) {
                } else {
                    if ((MyVideoView.this.f17604s != 0 || MyVideoView.this.getCurrentPosition() > 0) && MyVideoView.this.f17597l != null) {
                        MyVideoView.this.f17597l.show(0);
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class c implements MediaPlayer.OnCompletionListener {
        c() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (MyVideoView.this.f17597l != null) {
                MyVideoView.this.f17597l.hide();
            }
            if (MyVideoView.this.f17598m != null) {
                MyVideoView.this.f17598m.onCompletion(MyVideoView.this.f17591f);
            }
        }
    }

    /* loaded from: classes2.dex */
    class d implements MediaPlayer.OnErrorListener {
        d() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i4) {
            String unused = MyVideoView.this.f17586a;
            StringBuilder sb = new StringBuilder();
            sb.append("Error: ");
            sb.append(i2);
            sb.append(",");
            sb.append(i4);
            if (MyVideoView.this.f17597l != null) {
                MyVideoView.this.f17597l.hide();
            }
            if ((MyVideoView.this.f17602q == null || !MyVideoView.this.f17602q.onError(MyVideoView.this.f17591f, i2, i4)) && MyVideoView.this.getWindowToken() != null) {
                MyVideoView.this.f17587b.getResources();
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    class e implements MediaPlayer.OnBufferingUpdateListener {
        e() {
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
            MyVideoView.this.f17601p = i2;
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(i2);
            if (MyVideoView.this.f17600o != null) {
                MyVideoView.this.f17600o.onBufferingUpdate(mediaPlayer, i2);
            }
        }
    }

    /* loaded from: classes2.dex */
    class f implements SurfaceHolder.Callback {
        f() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i4, int i5) {
            MyVideoView.this.f17595j = i4;
            MyVideoView.this.f17596k = i5;
            MyVideoView myVideoView = MyVideoView.this;
            if (myVideoView.f17591f != null && myVideoView.f17592g && MyVideoView.this.f17593h == i4 && MyVideoView.this.f17594i == i5) {
                if (MyVideoView.this.f17604s != 0) {
                    MyVideoView myVideoView2 = MyVideoView.this;
                    myVideoView2.f17591f.seekTo(myVideoView2.f17604s);
                    MyVideoView.this.f17604s = 0;
                }
                if (MyVideoView.this.f17591f.isPlaying()) {
                    MyVideoView.this.f17591f.start();
                } else {
                    MyVideoView.this.f17591f.pause();
                }
                if (MyVideoView.this.f17597l != null) {
                    MyVideoView.this.f17597l.show();
                }
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            MyVideoView.this.f17590e = surfaceHolder;
            MyVideoView.this.F();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            MyVideoView.this.f17590e = null;
            if (MyVideoView.this.f17597l != null) {
                MyVideoView.this.f17597l.hide();
            }
            MediaPlayer mediaPlayer = MyVideoView.this.f17591f;
            if (mediaPlayer != null) {
                mediaPlayer.reset();
                MyVideoView.this.f17591f.release();
                MyVideoView.this.f17591f = null;
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface g {
        void a();
    }

    /* loaded from: classes2.dex */
    public interface h {
        boolean a(boolean z3);
    }

    public MyVideoView(Context context) {
        super(context);
        this.f17586a = getClass().getSimpleName();
        this.f17590e = null;
        this.f17591f = null;
        this.f17607v = new a();
        this.f17608w = new b();
        this.f17609x = new c();
        this.f17610y = new d();
        this.f17611z = new e();
        this.A = new f();
        this.f17587b = context;
        C();
    }

    private void A() {
        MediaController mediaController;
        if (this.f17591f == null || (mediaController = this.f17597l) == null) {
            return;
        }
        mediaController.setMediaPlayer(this);
        this.f17597l.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
        this.f17597l.setEnabled(this.f17592g);
    }

    private void C() {
        this.f17593h = 0;
        this.f17594i = 0;
        getHolder().setFormat(-2);
        getHolder().addCallback(this.A);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        Uri uri;
        if (this.f17588c == null || this.f17590e == null) {
            return;
        }
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        this.f17587b.sendBroadcast(intent);
        MediaPlayer mediaPlayer = this.f17591f;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f17591f.release();
            this.f17591f = null;
        }
        try {
            MediaPlayer mediaPlayer2 = new MediaPlayer();
            this.f17591f = mediaPlayer2;
            mediaPlayer2.setOnPreparedListener(this.f17608w);
            this.f17591f.setOnVideoSizeChangedListener(this.f17607v);
            this.f17592g = false;
            this.f17589d = -1;
            this.f17591f.setOnCompletionListener(this.f17609x);
            this.f17591f.setOnErrorListener(this.f17610y);
            this.f17591f.setOnBufferingUpdateListener(this.f17611z);
            this.f17601p = 0;
            Context context = this.f17587b;
            if (context != null && (uri = this.f17588c) != null) {
                this.f17591f.setDataSource(context, uri);
            }
            this.f17591f.setDisplay(this.f17590e);
            this.f17591f.setAudioStreamType(3);
            this.f17591f.setScreenOnWhilePlaying(true);
            this.f17591f.prepareAsync();
            A();
            requestFocus();
        } catch (IOException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to open content: ");
            sb.append(this.f17588c);
        } catch (IllegalArgumentException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to open content: ");
            sb2.append(this.f17588c);
        }
    }

    private void J() {
        if (this.f17597l.isShowing()) {
            this.f17597l.hide();
        } else {
            this.f17597l.show();
        }
    }

    public void B() {
        Activity activity = (Activity) this.f17587b;
        if (getResources().getConfiguration().orientation == 1) {
            h hVar = this.f17606u;
            if (hVar == null || !hVar.a(true)) {
                MediaController mediaController = this.f17597l;
                if (mediaController != null) {
                    mediaController.setFullScreen(true);
                }
                activity.setRequestedOrientation(0);
                activity.getWindow().setFlags(1024, 1024);
                return;
            }
            return;
        }
        h hVar2 = this.f17606u;
        if (hVar2 == null || !hVar2.a(false)) {
            MediaController mediaController2 = this.f17597l;
            if (mediaController2 != null) {
                mediaController2.setFullScreen(false);
            }
            activity.setRequestedOrientation(1);
            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
            attributes.flags &= -1025;
            activity.getWindow().setAttributes(attributes);
            activity.getWindow().clearFlags(512);
        }
    }

    public boolean D() {
        MediaController mediaController = this.f17597l;
        if (mediaController != null) {
            return mediaController.u();
        }
        return getResources().getConfiguration().orientation == 2;
    }

    public boolean E() {
        return this.f17592g;
    }

    public void G() {
        try {
            MediaPlayer mediaPlayer = this.f17591f;
            if (mediaPlayer != null) {
                mediaPlayer.stop();
                this.f17591f.reset();
            }
        } catch (IllegalStateException e4) {
            e4.printStackTrace();
        }
    }

    public int H(int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? i2 : size;
        }
        return Math.min(i2, size);
    }

    public void I() {
        MediaPlayer mediaPlayer = this.f17591f;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f17591f.release();
            this.f17591f = null;
            this.f17592g = false;
            this.f17588c = null;
        }
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public void a(boolean z3) {
        B();
        MediaController mediaController = this.f17597l;
        if (mediaController != null) {
            mediaController.setFullScreen(D());
        }
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public boolean canPause() {
        return false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public boolean canSeekBackward() {
        return false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public boolean canSeekForward() {
        return false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public int getAudioSessionId() {
        return 0;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public int getBufferPercentage() {
        if (this.f17591f != null) {
            return this.f17601p;
        }
        return 0;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public int getCurrentPosition() {
        MediaPlayer mediaPlayer = this.f17591f;
        if (mediaPlayer == null || !this.f17592g) {
            return 0;
        }
        return mediaPlayer.getCurrentPosition();
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public int getDuration() {
        MediaPlayer mediaPlayer = this.f17591f;
        if (mediaPlayer != null && this.f17592g) {
            int i2 = this.f17589d;
            if (i2 > 0) {
                return i2;
            }
            int duration = mediaPlayer.getDuration();
            this.f17589d = duration;
            return duration;
        }
        this.f17589d = -1;
        return -1;
    }

    public MediaController getMediaController() {
        return this.f17597l;
    }

    public MediaPlayer getMediaPlayer() {
        return this.f17591f;
    }

    public int getVideoHeight() {
        return this.f17594i;
    }

    public int getVideoWidth() {
        return this.f17593h;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.f17591f;
        if (mediaPlayer == null || !this.f17592g) {
            return false;
        }
        return mediaPlayer.isPlaying();
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        MediaPlayer mediaPlayer;
        if (this.f17592g && i2 != 4 && i2 != 24 && i2 != 25 && i2 != 82 && i2 != 5 && i2 != 6 && (mediaPlayer = this.f17591f) != null && this.f17597l != null) {
            if (i2 != 79 && i2 != 85) {
                if (i2 == 86 && mediaPlayer.isPlaying()) {
                    pause();
                    this.f17597l.show();
                } else {
                    J();
                }
            } else if (mediaPlayer.isPlaying()) {
                pause();
                this.f17597l.show();
                return true;
            } else {
                start();
                this.f17597l.hide();
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i2, int i4) {
        setMeasuredDimension(SurfaceView.getDefaultSize(this.f17593h, i2), SurfaceView.getDefaultSize(this.f17594i, i4));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f17592g || this.f17591f == null || this.f17597l == null) {
            return false;
        }
        J();
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!this.f17592g || this.f17591f == null || this.f17597l == null) {
            return false;
        }
        J();
        return false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public void pause() {
        MediaPlayer mediaPlayer = this.f17591f;
        if (mediaPlayer != null && this.f17592g && mediaPlayer.isPlaying()) {
            this.f17591f.pause();
        }
        this.f17603r = false;
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public void seekTo(int i2) {
        MediaPlayer mediaPlayer = this.f17591f;
        if (mediaPlayer != null && this.f17592g) {
            mediaPlayer.seekTo(i2);
        } else {
            this.f17604s = i2;
        }
    }

    public void setFullScreen(boolean z3) {
        if (z3 == D()) {
            return;
        }
        a(z3);
    }

    public void setMediaController(MediaController mediaController) {
        MediaController mediaController2 = this.f17597l;
        if (mediaController2 != null) {
            mediaController2.hide();
        }
        this.f17597l = mediaController;
        A();
    }

    public void setMediaPlayer(MediaPlayer mediaPlayer) {
        this.f17591f = mediaPlayer;
    }

    public void setMySizeChangeLinstener(g gVar) {
        this.f17605t = gVar;
    }

    public void setOnBufferingUpdateListener(MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.f17600o = onBufferingUpdateListener;
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.f17598m = onCompletionListener;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.f17602q = onErrorListener;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.f17599n = onPreparedListener;
    }

    public void setScreenChangedListener(h hVar) {
        this.f17606u = hVar;
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoScale(int i2, int i4) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i4;
        layoutParams.width = i2;
        setLayoutParams(layoutParams);
    }

    public void setVideoURI(Uri uri) {
        this.f17588c = uri;
        this.f17603r = false;
        this.f17604s = 0;
        F();
        requestLayout();
        invalidate();
    }

    @Override // com.join.android.app.component.video.MediaController.e
    public void start() {
        MediaPlayer mediaPlayer = this.f17591f;
        if (mediaPlayer != null && this.f17592g) {
            mediaPlayer.start();
            this.f17603r = false;
        } else {
            this.f17603r = true;
        }
        requestFocus();
    }

    public MyVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        this.f17587b = context;
        C();
    }

    public MyVideoView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17586a = getClass().getSimpleName();
        this.f17590e = null;
        this.f17591f = null;
        this.f17607v = new a();
        this.f17608w = new b();
        this.f17609x = new c();
        this.f17610y = new d();
        this.f17611z = new e();
        this.A = new f();
        this.f17587b = context;
        C();
    }
}
