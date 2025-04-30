package com.join.android.app.component.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.e1;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.customview.EqualizerView;
import com.join.mgps.customview.t;
import com.papa.gsyvideoplayer.utils.l;
import com.papa.gsyvideoplayer.utils.o;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoControlView;
import moe.codeest.enviews.ENPlayView;
/* loaded from: classes2.dex */
public class StandardVideoView extends StandardGSYVideoPlayer {
    public static int C = 1;
    public static boolean D = true;
    String A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    public SimpleDraweeView f17628a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f17629b;

    /* renamed from: c  reason: collision with root package name */
    long f17630c;

    /* renamed from: d  reason: collision with root package name */
    View f17631d;

    /* renamed from: e  reason: collision with root package name */
    View f17632e;

    /* renamed from: f  reason: collision with root package name */
    TextView f17633f;

    /* renamed from: g  reason: collision with root package name */
    ImageView f17634g;

    /* renamed from: h  reason: collision with root package name */
    k f17635h;

    /* renamed from: i  reason: collision with root package name */
    String f17636i;

    /* renamed from: j  reason: collision with root package name */
    long f17637j;

    /* renamed from: k  reason: collision with root package name */
    long f17638k;

    /* renamed from: l  reason: collision with root package name */
    String f17639l;

    /* renamed from: m  reason: collision with root package name */
    String f17640m;

    /* renamed from: n  reason: collision with root package name */
    int f17641n;

    /* renamed from: o  reason: collision with root package name */
    j f17642o;

    /* renamed from: p  reason: collision with root package name */
    boolean f17643p;

    /* renamed from: q  reason: collision with root package name */
    public ImageView f17644q;

    /* renamed from: r  reason: collision with root package name */
    protected ImageView f17645r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f17646s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f17647t;

    /* renamed from: u  reason: collision with root package name */
    private i f17648u;

    /* renamed from: v  reason: collision with root package name */
    private i f17649v;

    /* renamed from: w  reason: collision with root package name */
    Handler f17650w;

    /* renamed from: x  reason: collision with root package name */
    protected boolean f17651x;

    /* renamed from: y  reason: collision with root package name */
    t f17652y;

    /* renamed from: z  reason: collision with root package name */
    Runnable f17653z;

    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((GSYVideoControlView) StandardVideoView.this).mStartButton.performClick();
            StandardVideoView.this.f17632e.setVisibility(4);
        }
    }

    /* loaded from: classes2.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f17655a;

        b(Context context) {
            this.f17655a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StandardVideoView.this.startWindowFullscreen(this.f17655a, false, true);
        }
    }

    /* loaded from: classes2.dex */
    class c implements c2.d {
        c() {
        }

        @Override // c2.d
        public void a(int i2, int i4, int i5, int i6) {
            StandardVideoView standardVideoView = StandardVideoView.this;
            standardVideoView.f17630c = i5;
            if (i2 == 100 || i5 == i6) {
                standardVideoView.f17630c = 0L;
            }
            k kVar = standardVideoView.f17635h;
            if (kVar != null) {
                kVar.a(i2, i4, i5, i6);
            }
        }
    }

    /* loaded from: classes2.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StandardVideoView.this.backToNormal();
        }
    }

    /* loaded from: classes2.dex */
    class e extends Handler {
        e() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (StandardVideoView.this.f17634g.getVisibility() == 0) {
                StandardVideoView.this.f17634g.setVisibility(4);
            }
        }
    }

    /* loaded from: classes2.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StandardVideoView.this.startPlayLogic();
            StandardVideoView.this.f17652y.dismiss();
        }
    }

    /* loaded from: classes2.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StandardVideoView.this.f17652y.dismiss();
        }
    }

    /* loaded from: classes2.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StandardVideoView.this.startProgressTimer();
        }
    }

    /* loaded from: classes2.dex */
    public interface i {
        void a(int i2);
    }

    /* loaded from: classes2.dex */
    public interface j {
        void a(StandardVideoView standardVideoView);
    }

    /* loaded from: classes2.dex */
    public interface k {
        void a(int i2, int i4, int i5, int i6);
    }

    public StandardVideoView(Context context) {
        super(context);
        this.f17630c = 0L;
        this.f17636i = "";
        this.f17637j = 100000000L;
        this.f17638k = 0L;
        this.f17639l = "";
        this.f17640m = "";
        this.f17643p = true;
        this.f17646s = false;
        this.f17647t = false;
        this.f17650w = new e();
        this.f17653z = new h();
        this.A = "StandardVideoView";
        this.B = true;
    }

    private void e() {
        i iVar = this.f17648u;
        if (iVar != null) {
            iVar.a(4);
        } else {
            this.f17628a.setVisibility(4);
        }
    }

    private void i() {
        this.f17650w.sendEmptyMessageDelayed(1, 800L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public boolean backFromFull(Context context) {
        return com.join.android.app.component.video.a.c0(context, this.mPlayTag);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToCompleteShow() {
        super.changeUiToCompleteShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f17649v;
        if (iVar != null) {
            iVar.a(4);
        }
        this.f17631d.setVisibility(4);
        if (this.f17642o != null && !this.mIfCurrentIsFullscreen) {
            if (d2.i(this.f17640m)) {
                MyImageLoader.h(this.f17628a, this.f17640m);
            }
        } else {
            this.f17632e.setVisibility(0);
        }
        i iVar2 = this.f17648u;
        if (iVar2 != null) {
            iVar2.a(0);
        } else {
            this.f17628a.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToError() {
        super.changeUiToError();
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 0);
        }
        i iVar = this.f17648u;
        if (iVar != null) {
            iVar.a(0);
        } else {
            this.f17628a.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToNormal() {
        super.changeUiToNormal();
        this.f17651x = false;
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f17649v;
        if (iVar != null) {
            iVar.a(4);
        }
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        this.f17632e.setVisibility(4);
        this.f17631d.setVisibility(4);
        i iVar2 = this.f17648u;
        if (iVar2 != null) {
            iVar2.a(0);
        } else {
            this.f17628a.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    public void changeUiToPauseClear() {
        super.changeUiToPauseClear();
        setViewShowState(this.mBottomProgressBar, 4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPauseShow() {
        super.changeUiToPauseShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f17649v;
        if (iVar != null) {
            iVar.a(4);
        }
        if (this.f17642o != null) {
            setViewShowState(this.mStartButton, 4);
        }
        setViewShowState(this.mThumbImageViewLayout, 4);
        i iVar2 = this.f17648u;
        if (iVar2 != null) {
            iVar2.a(0);
        } else {
            this.f17628a.setVisibility(this.B ? 0 : 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    public void changeUiToPlayingBufferingClear() {
        super.changeUiToPlayingBufferingClear();
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mBottomProgressBar, 0);
        } else {
            setViewShowState(this.mBottomProgressBar, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPlayingBufferingShow() {
        super.changeUiToPlayingBufferingShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f17649v;
        if (iVar != null) {
            iVar.a(4);
        }
        if (this.f17642o == null) {
            setViewShowState(this.mLoadingProgressBar, 0);
            i iVar2 = this.f17649v;
            if (iVar2 != null) {
                iVar2.a(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    public void changeUiToPlayingClear() {
        super.changeUiToPlayingClear();
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mBottomProgressBar, 0);
        } else {
            setViewShowState(this.mBottomProgressBar, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPlayingShow() {
        super.changeUiToPlayingShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
            setMute(D);
        }
        if (this.mIfCurrentIsFullscreen) {
            if (!this.f17651x) {
                setViewShowState(this.mBottomContainer, 4);
                setViewShowState(this.mStartButton, 4);
            }
            this.f17631d.setVisibility(4);
        } else {
            if (this.f17642o == null) {
                this.f17631d.setVisibility(0);
            } else {
                this.f17631d.setVisibility(4);
            }
            setViewShowState(this.mStartButton, 4);
            setViewShowState(this.mBottomProgressBar, 4);
            setViewShowState(this.mBottomContainer, 4);
            setViewShowState(this.mLoadingProgressBar, 4);
            i iVar = this.f17649v;
            if (iVar != null) {
                iVar.a(4);
            }
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPreparingShow() {
        super.changeUiToPreparingShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f17649v;
        if (iVar != null) {
            iVar.a(4);
        }
        if (this.f17642o == null) {
            setViewShowState(this.mLoadingProgressBar, 0);
            i iVar2 = this.f17649v;
            if (iVar2 != null) {
                iVar2.a(0);
            }
        }
        this.f17632e.setVisibility(4);
        i iVar3 = this.f17648u;
        if (iVar3 != null) {
            iVar3.a(0);
        } else {
            this.f17628a.setVisibility(0);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void clearFullscreenLayout() {
        int i2;
        if (this.mFullAnimEnd) {
            setMute(D);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mStartButton.getLayoutParams();
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp60);
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp60);
            this.mStartButton.setLayoutParams(layoutParams);
            this.mIfCurrentIsFullscreen = false;
            o oVar = this.mOrientationUtils;
            if (oVar != null) {
                i2 = oVar.q();
                this.mOrientationUtils.I(false);
                o oVar2 = this.mOrientationUtils;
                if (oVar2 != null) {
                    oVar2.D();
                    this.mOrientationUtils = null;
                }
            } else {
                i2 = 0;
            }
            if (!this.mShowFullAnimation) {
                i2 = 0;
            }
            View findViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(getContext()).findViewById(16908290)).findViewById(getFullId());
            if (findViewById != null) {
                ((StandardVideoView) findViewById).mIfCurrentIsFullscreen = false;
            }
            if (i2 == 0) {
                backToNormal();
            } else {
                postDelayed(new d(), i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        ((StandardVideoView) gSYBaseVideoPlayer2).mShowFullAnimation = ((StandardVideoView) gSYBaseVideoPlayer).mShowFullAnimation;
    }

    public boolean d() {
        if (this.f17642o != null && !this.f17643p) {
            int z3 = com.join.mgps.pref.h.n(getContext()).z();
            if (z3 != 0) {
                return z3 == 1 && l.i(getContext());
            }
            return true;
        }
        int e4 = com.join.mgps.pref.h.n(getContext()).e();
        return e4 != 1 ? e4 != 2 : l.i(getContext());
    }

    public void f(StandardVideoView standardVideoView) {
        try {
            cloneParams(standardVideoView, this);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void g(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                ImageView imageView = this.f17634g;
                if (imageView != null) {
                    imageView.setImageBitmap(bitmap);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getFullId() {
        return R.id.custom_full_id;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public com.papa.gsyvideoplayer.video.base.a getGSYVideoManager() {
        if (d2.h(this.mPlayTag)) {
            this.mPlayTag = "getGSYVideoManager";
        }
        com.join.android.app.component.video.a.e0(this.mPlayTag).Q(getContext().getApplicationContext());
        return com.join.android.app.component.video.a.e0(this.mPlayTag);
    }

    public String getKey() {
        if (this.mPlayPosition == -22) {
            com.papa.gsyvideoplayer.utils.c.e(getClass().getSimpleName() + " used getKey() ******* PlayPosition never set. ********");
        }
        if (TextUtils.isEmpty(this.mPlayTag)) {
            com.papa.gsyvideoplayer.utils.c.e(getClass().getSimpleName() + " used getKey() ******* PlayTag never set. ********");
        }
        return this.A + this.mPlayPosition + this.mPlayTag;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_standard_wufun;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getSmallId() {
        return R.id.custom_small_id;
    }

    public long getTimeHas() {
        return this.f17637j;
    }

    public StandardVideoView h() {
        StandardVideoView standardVideoView = new StandardVideoView(getContext());
        cloneParams(this, standardVideoView);
        return standardVideoView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void hideAllWidget() {
        super.hideAllWidget();
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mBottomProgressBar, 0);
        } else {
            setViewShowState(this.mBottomProgressBar, 4);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        int i2;
        super.init(context);
        ImageView imageView = (ImageView) findViewById(R.id.back);
        this.f17629b = imageView;
        imageView.setVisibility(4);
        this.f17628a = (SimpleDraweeView) findViewById(R.id.thumbImageView);
        this.f17633f = (TextView) findViewById(R.id.progressTextShow);
        this.f17631d = findViewById(R.id.layout_bottom2);
        this.f17632e = findViewById(R.id.playFinishCover);
        this.f17634g = (ImageView) findViewById(R.id.coverDetailBack);
        MyImageLoader.m((SimpleDraweeView) findViewById(R.id.loading), Uri.parse("res:///2131234008"));
        this.f17632e.setOnClickListener(new a());
        ((EqualizerView) findViewById(R.id.equalizer_view)).a();
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null && ((i2 = this.mCurrentState) == -1 || i2 == 0 || i2 == 7)) {
            relativeLayout.setVisibility(0);
        }
        TextView textView = (TextView) findViewById(R.id.netWorkType);
        String c4 = l.c(context);
        if ("NETWORK_WIFI".equals(c4)) {
            textView.setText("Wi-Fi");
        } else if (d2.i(c4)) {
            textView.setText(c4.replace("NETWORK_", ""));
        }
        setThumbPlay(false);
        setShowPauseCover(true);
        setNeedShowWifiTip(false);
        com.papa.gsyvideoplayer.utils.c.b();
        getFullscreenButton().setOnClickListener(new b(context));
        initCustomView();
        setGSYVideoProgressListener(new c());
        com.papa.gsyvideoplayer.utils.f.l(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    public void initCover() {
        try {
            super.initCover();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void initCustomView() {
        this.f17644q = (ImageView) findViewById(R.id.mute);
        this.f17645r = (ImageView) findViewById(R.id.autoPlay);
        this.f17644q.setOnClickListener(this);
        this.f17645r.setOnClickListener(this);
        setMuteView(D);
        this.f17645r.setSelected(com.join.mgps.pref.h.n(getContext()).a());
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id == R.id.mute) {
            setMute(!D);
        } else if (id == R.id.autoPlay) {
            boolean z3 = !this.f17645r.isSelected();
            this.f17645r.setSelected(z3);
            com.join.mgps.pref.h.n(getContext()).P(z3);
            i2.a(getContext()).b(z3 ? "已开启WiFi下自动播放" : "已关闭WiFi下自动播放");
        } else if (id == R.id.thumb || id == R.id.bannerView) {
            if (TextUtils.isEmpty(this.mUrl)) {
                com.papa.gsyvideoplayer.utils.c.e("********" + getResources().getString(R.string.no_url));
                return;
            }
            if (!this.mIfCurrentIsFullscreen) {
                j jVar = this.f17642o;
                if (jVar != null) {
                    jVar.a(this);
                } else if (this.mCurrentState != 0) {
                    t0.d("startWindowFullscreen", "currentTime= " + this.f17638k + " mCurrentState= " + this.mCurrentState);
                    if (this.mCurrentState != 2 || this.f17638k >= 500) {
                        startWindowFullscreen(getContext(), true, true);
                    }
                }
            }
            if (this.mCurrentState == 0) {
                startPlayLogic();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void onClickUiToggle() {
        if (this.mIfCurrentIsFullscreen && this.mLockCurScreen && this.mNeedLockFull) {
            setViewShowState(this.mLockScreen, 0);
            return;
        }
        this.f17651x = true;
        super.onClickUiToggle();
        j jVar = this.f17642o;
        if (jVar != null) {
            jVar.a(this);
        } else if (this.mIfCurrentIsFullscreen || this.mCurrentState == 0) {
        } else {
            t0.d("startWindowFullscreen", "currentTime= " + this.f17638k + " mCurrentState= " + this.mCurrentState);
            if (this.mCurrentState != 2 || this.f17638k >= 500) {
                startWindowFullscreen(getContext(), true, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onPrepared() {
        if (this.f17647t) {
            setMute(true);
            this.f17647t = false;
        } else {
            setMute(D);
        }
        super.onPrepared();
        if (this.mIfCurrentIsFullscreen) {
            com.join.android.app.component.video.a.f0().get(this.mPlayTag).W(false);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.f17651x = true;
        super.onStartTrackingTouch(seekBar);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, d2.c
    public void onSurfaceAvailable(Surface surface) {
        super.onSurfaceAvailable(surface);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, d2.c
    public void onSurfaceUpdated(Surface surface) {
        super.onSurfaceUpdated(surface);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onVideoResume() {
        super.onVideoResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void releaseVideos() {
        com.join.android.app.component.video.a.n0(this.mPlayTag);
    }

    public void setAutoPlayConfig(boolean z3) {
        this.f17643p = z3;
    }

    public void setChangeCoverShowListener(i iVar) {
        this.f17648u = iVar;
        this.f17628a.setVisibility(4);
    }

    public void setChangeCoverShowLoadingListener(i iVar) {
        this.f17649v = iVar;
        this.mLoadingProgressBar.setVisibility(4);
    }

    public void setCover(String str) {
        this.f17640m = str;
    }

    public void setMute(boolean z3) {
        setMuteOnly(z3);
        D = z3;
        StandardVideoViewJC.E1 = z3;
    }

    public void setMuteOnly(boolean z3) {
        try {
            t0.d("setMuteOnly ", z3 + "");
            com.join.android.app.component.video.a.f0().get(this.mPlayTag).W(z3);
            setMuteView(z3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void setMuteView(boolean z3) {
        if (z3) {
            this.f17644q.setImageResource(R.drawable.mute_off);
        } else {
            this.f17644q.setImageResource(R.drawable.mute_on);
        }
    }

    public void setMuteWhenPlay(boolean z3) {
        this.f17647t = z3;
    }

    public void setNoneNetFinishActivity(boolean z3) {
        this.f17646s = z3;
    }

    public void setOnVideoProgressListener(k kVar) {
        this.f17635h = kVar;
    }

    public void setOnclickVideoListener(j jVar) {
        this.f17642o = jVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void setProgressAndTime(int i2, int i4, int i5, int i6, boolean z3) {
        super.setProgressAndTime(i2, i4, i5, i6, z3);
        this.f17638k = i5;
        if (i5 > 0) {
            int i7 = i6 - i5;
            this.f17637j = i7;
            String r3 = com.papa.gsyvideoplayer.utils.b.r(i7);
            this.f17636i = r3;
            this.f17633f.setText(r3);
        }
    }

    public void setShowCoverWhenPause(boolean z3) {
        this.B = z3;
    }

    public void setSurfaceToPlay() {
        addTextureView();
        getGSYVideoManager().p(this);
        checkoutState();
        startProgressTimer();
    }

    public void setSwitchCache(boolean z3) {
        this.mCache = z3;
    }

    public void setSwitchTitle(String str) {
        this.mTitle = str;
    }

    public void setSwitchUrl(String str) {
        this.mUrl = str;
        this.mOriginUrl = str;
    }

    public void setThumbVisibleM() {
        ImageView imageView = this.f17634g;
        if (imageView != null) {
            imageView.setVisibility(0);
            i();
        }
    }

    public void setUp(String str, int i2, Object... objArr) {
        int i4;
        this.f17639l = str;
        if (Build.VERSION.SDK_INT >= 21) {
            super.setUp(str, true, null, "");
        } else {
            super.setUp(str, false, null, "");
        }
        setAutoFullWithSize(true);
        setReleaseWhenLossAudio(true);
        setShowFullAnimation(false);
        setNeedShowWifiTip(false);
        if (objArr.length > 1) {
            this.f17640m = objArr[1].toString();
        }
        this.f17645r.setSelected(com.join.mgps.pref.h.n(getContext()).a());
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null && ((i4 = this.mCurrentState) == -1 || i4 == 0 || i4 == 7)) {
            relativeLayout.setVisibility(0);
        }
        MyImageLoader.h(this.f17628a, this.f17640m);
    }

    public void setUpLazy(String str, int i2, Object... objArr) {
        this.f17639l = str;
        super.setUpLazy(str, false, null, null, "");
        setAutoFullWithSize(true);
        setReleaseWhenLossAudio(true);
        setShowFullAnimation(false);
        if (objArr.length > 1) {
            this.f17640m = objArr[1].toString();
        }
        this.f17645r.setSelected(com.join.mgps.pref.h.n(getContext()).a());
    }

    public void setVideoType(int i2) {
        this.f17641n = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void setViewShowState(View view, int i2) {
        super.setViewShowState(view, i2);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer showSmallVideo(Point point, boolean z3, boolean z4) {
        StandardVideoView standardVideoView = (StandardVideoView) super.showSmallVideo(point, z3, z4);
        standardVideoView.mStartButton.setVisibility(8);
        standardVideoView.mStartButton = null;
        return standardVideoView;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showWifiDialog() {
        String string;
        String str;
        t tVar;
        if (!l.g(this.mContext)) {
            startPlayLogic();
            return;
        }
        if (this.f17652y == null) {
            t tVar2 = new t(getContext(), R.style.MyDialog);
            this.f17652y = tVar2;
            tVar2.setContentView(R.layout.bind_dialog);
        }
        Button button = (Button) this.f17652y.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.f17652y.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.f17652y.findViewById(R.id.tip_title);
        View findViewById = this.f17652y.findViewById(R.id.divider);
        TextView textView2 = (TextView) this.f17652y.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) this.f17652y.findViewById(R.id.dialog_desci);
        int b4 = e1.b(getContext());
        if (b4 == 0) {
            findViewById.setVisibility(0);
            button.setVisibility(0);
        } else if (b4 != 1) {
            findViewById.setVisibility(8);
            button.setVisibility(8);
            string = getResources().getString(R.string.network_conn_failed);
            str = "关闭";
            textView.setText("网络提示");
            textView2.setText(string);
            textView3.setVisibility(8);
            button2.setText(str);
            button.setText("取消");
            button2.setOnClickListener(new f());
            button.setOnClickListener(new g());
            tVar = this.f17652y;
            if (tVar != null || tVar.isShowing()) {
            }
            this.f17652y.show();
            return;
        }
        str = "继续观看";
        string = "您已切换到数据网络，是否继续观看视频？";
        textView.setText("网络提示");
        textView2.setText(string);
        textView3.setVisibility(8);
        button2.setText(str);
        button.setText("取消");
        button2.setOnClickListener(new f());
        button.setOnClickListener(new g());
        tVar = this.f17652y;
        if (tVar != null) {
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void startAfterPrepared() {
        super.startAfterPrepared();
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void startPlayLogic() {
        super.startPlayLogic();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z3, boolean z4) {
        GSYBaseVideoPlayer startWindowFullscreen = super.startWindowFullscreen(context, z3, z4);
        StandardVideoView standardVideoView = (StandardVideoView) startWindowFullscreen;
        MyImageLoader.h(standardVideoView.f17628a, this.f17640m);
        standardVideoView.B = this.B;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mStartButton.getLayoutParams();
        layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp60);
        layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp60);
        this.mStartButton.setLayoutParams(layoutParams);
        if (this.mCurrentState != 2) {
            startWindowFullscreen.startPlayLogic();
        }
        com.join.android.app.component.video.a.f0().get(this.mPlayTag).W(false);
        return startWindowFullscreen;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchDoubleUp() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchSurfaceMoveFullLogic(float f4, float f5) {
        super.touchSurfaceMoveFullLogic(f4, f5);
        this.mChangePosition = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    public void updateStartImage() {
        View view = this.mStartButton;
        if (view instanceof ENPlayView) {
            ENPlayView eNPlayView = (ENPlayView) view;
            eNPlayView.setDuration(500);
            int i2 = this.mCurrentState;
            if (i2 == 2) {
                eNPlayView.d();
            } else if (i2 == 7) {
                eNPlayView.c();
            } else {
                eNPlayView.c();
            }
        } else if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            int i4 = this.mCurrentState;
            if (i4 == 2) {
                imageView.setImageResource(R.drawable.video_pause_normal_video);
            } else if (i4 == 7) {
                imageView.setImageResource(R.drawable.video_click_error_selector);
            } else {
                imageView.setImageResource(R.drawable.video_play_normal_video);
            }
        }
    }

    public StandardVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17630c = 0L;
        this.f17636i = "";
        this.f17637j = 100000000L;
        this.f17638k = 0L;
        this.f17639l = "";
        this.f17640m = "";
        this.f17643p = true;
        this.f17646s = false;
        this.f17647t = false;
        this.f17650w = new e();
        this.f17653z = new h();
        this.A = "StandardVideoView";
        this.B = true;
    }
}
