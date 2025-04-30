package com.join.android.app.component.video;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import c2.h;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t0;
import com.papa.gsyvideoplayer.utils.o;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoView;
import l1.n;
import moe.codeest.enviews.ENPlayView;
/* loaded from: classes2.dex */
public class MultiStandVideo extends StandardGSYVideoPlayer {

    /* renamed from: f  reason: collision with root package name */
    private static final String f17573f = "MultiStandVideo";

    /* renamed from: g  reason: collision with root package name */
    public static boolean f17574g = true;

    /* renamed from: a  reason: collision with root package name */
    public SimpleDraweeView f17575a;

    /* renamed from: b  reason: collision with root package name */
    public SimpleDraweeView f17576b;

    /* renamed from: c  reason: collision with root package name */
    String f17577c;

    /* renamed from: d  reason: collision with root package name */
    private int f17578d;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f17579e;

    /* loaded from: classes2.dex */
    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f17581a;

        b(View view) {
            this.f17581a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            try {
                if (((GSYVideoView) MultiStandVideo.this).mCurrentState != 7 && ((GSYVideoView) MultiStandVideo.this).mCurrentState != 5 && ((GSYVideoView) MultiStandVideo.this).mCurrentState != 6) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("autoPlayVideoMini:onAnimationEnd2: ");
                    sb.append(MultiStandVideo.this.f17578d);
                    sb.append("    key:");
                    sb.append(MultiStandVideo.this.getKey());
                    sb.append("mCurrentState");
                    sb.append(((GSYVideoView) MultiStandVideo.this).mCurrentState);
                    this.f17581a.setVisibility(4);
                    this.f17581a.setAlpha(1.0f);
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("autoPlayVideoMini:onAnimationEnd1: ");
                sb2.append(MultiStandVideo.this.f17578d);
                sb2.append("    key:");
                sb2.append(MultiStandVideo.this.getKey());
                sb2.append("mCurrentState");
                sb2.append(((GSYVideoView) MultiStandVideo.this).mCurrentState);
                MultiStandVideo.this.k();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes2.dex */
    class c implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f17583a;

        c(View view) {
            this.f17583a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            try {
                this.f17583a.setVisibility(0);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes2.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MultiStandVideo.this.backToNormal();
        }
    }

    public MultiStandVideo(Context context, Boolean bool) {
        super(context, bool);
    }

    private void h(View view) {
        if (view == null) {
            return;
        }
        Animation animation = view.getAnimation();
        if (animation != null) {
            animation.setAnimationListener(null);
            view.setAlpha(1.0f);
            view.setVisibility(4);
            animation.cancel();
            return;
        }
        try {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(600L);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            alphaAnimation.setAnimationListener(new b(view));
            view.startAnimation(alphaAnimation);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void j() {
        if (this.mHadPlay) {
            if (isVerticalVideo()) {
                com.papa.gsyvideoplayer.utils.f.l(4);
            } else {
                com.papa.gsyvideoplayer.utils.f.l(0);
            }
            changeTextureViewShowType();
            com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
            if (aVar != null) {
                aVar.o();
            }
        }
    }

    private void l(View view) {
        if (view == null) {
            return;
        }
        try {
            Animation animation = view.getAnimation();
            if (animation != null) {
                animation.setAnimationListener(null);
                view.clearAnimation();
            }
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(600L);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            alphaAnimation.setAnimationListener(new c(view));
            view.startAnimation(alphaAnimation);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public boolean backFromFull(Context context) {
        return getGSYVideoManager() != null && getGSYVideoManager().c0(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToCompleteShow() {
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        k();
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:changeUiToCompleteShow ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToError() {
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 0);
            StringBuilder sb = new StringBuilder();
            sb.append("autoPlayVideoMini:changeUiToError ");
            sb.append(this.f17578d);
            sb.append("    key:");
            sb.append(getKey());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("autoPlayVideoMini:changeUiToError1 ");
        sb2.append(this.f17578d);
        sb2.append("    key:");
        sb2.append(getKey());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToNormal() {
        this.f17579e = false;
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        k();
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:changeUiToNormal ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    public void changeUiToPauseClear() {
        super.changeUiToPauseClear();
        setViewShowState(this.mBottomProgressBar, 4);
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:changeUiToPauseClear ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPauseShow() {
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mStartButton, 4);
        k();
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:changeUiToPauseShow ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
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
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:changeUiToPlayingBufferingClear ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPlayingBufferingShow() {
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:changeUiToPlayingBufferingShow ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
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
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:changeUiToPlayingClear ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPlayingShow() {
        h(this.mThumbImageViewLayout);
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
            setMute(f17574g);
        }
        if (this.mIfCurrentIsFullscreen) {
            if (!this.f17579e) {
                setViewShowState(this.mBottomContainer, 4);
                setViewShowState(this.mStartButton, 4);
            }
        } else {
            setViewShowState(this.mStartButton, 4);
            setViewShowState(this.mBottomProgressBar, 4);
            setViewShowState(this.mBottomContainer, 4);
            setViewShowState(this.mLoadingProgressBar, 4);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:changeUiToPlayingShow ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void changeUiToPreparingShow() {
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:changeUiToPreparingShow ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void clearFullscreenLayout() {
        int i2;
        if (this.mFullAnimEnd) {
            setMute(false);
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
                ((MultiStandVideo) findViewById).mIfCurrentIsFullscreen = false;
            }
            if (i2 == 0) {
                backToNormal();
            } else {
                postDelayed(new d(), i2);
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getFullId() {
        return R.id.custom_full_id;
    }

    public String getKey() {
        if (this.mPlayPosition == -22) {
            com.papa.gsyvideoplayer.utils.c.e(getClass().getSimpleName() + " used getKey() ******* PlayPosition never set. ********");
        }
        if (TextUtils.isEmpty(this.mPlayTag)) {
            com.papa.gsyvideoplayer.utils.c.e(getClass().getSimpleName() + " used getKey() ******* PlayTag never set. ********");
        }
        return f17573f + this.mPlayPosition + this.mPlayTag;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_multi_wufun;
    }

    public int getPos() {
        return this.f17578d;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getSmallId() {
        return R.id.custom_small_id;
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
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:hideAllWidget ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    public void i(String str) {
        this.f17577c = str;
        SimpleDraweeView simpleDraweeView = this.f17575a;
        if (simpleDraweeView != null) {
            MyImageLoader.i(simpleDraweeView, str, r.c.f12144g);
            k();
        }
        SimpleDraweeView simpleDraweeView2 = this.f17576b;
        if (simpleDraweeView2 != null) {
            MyImageLoader.K(simpleDraweeView2, this.f17577c, 6, 15);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        int i2;
        super.init(context);
        this.f17575a = (SimpleDraweeView) findViewById(R.id.thumbImageView);
        this.mThumbImageViewLayout = (RelativeLayout) findViewById(R.id.thumb);
        this.f17576b = (SimpleDraweeView) findViewById(R.id.sdv_image_bluer);
        SimpleDraweeView simpleDraweeView = this.f17575a;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(this);
        }
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null && ((i2 = this.mCurrentState) == -1 || i2 == 0 || i2 == 7)) {
            Animation animation = relativeLayout.getAnimation();
            if (animation != null) {
                animation.cancel();
            }
            this.mThumbImageViewLayout.setVisibility(0);
            this.mThumbImageViewLayout.setAlpha(1.0f);
        }
        setThumbPlay(false);
        setShowPauseCover(true);
        setNeedShowWifiTip(false);
        this.onAudioFocusChangeListener = new a();
        com.papa.gsyvideoplayer.utils.f.l(0);
    }

    public void k() {
        setViewShowState(this.mThumbImageViewLayout, 0);
        this.mThumbImageViewLayout.setAlpha(1.0f);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.thumbImageView) {
            h hVar = this.mVideoAllCallBack;
            if (hVar instanceof n) {
                ((n) hVar).d0();
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onInfo(int i2, int i4) {
        super.onInfo(i2, i4);
        if (i2 == getGSYVideoManager().t()) {
            j();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onPrepared() {
        com.join.android.app.component.video.b gSYVideoManager;
        setMute(f17574g);
        super.onPrepared();
        if (!this.mIfCurrentIsFullscreen || (gSYVideoManager = getGSYVideoManager()) == null) {
            return;
        }
        gSYVideoManager.W(false);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.f17579e = true;
        super.onStartTrackingTouch(seekBar);
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:onStartTrackingTouch ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void releaseVideos() {
        com.join.android.app.component.video.b gSYVideoManager = getGSYVideoManager();
        if (gSYVideoManager != null) {
            if (gSYVideoManager.y() != null) {
                gSYVideoManager.y().onCompletion();
            }
            gSYVideoManager.z();
        }
    }

    public void setMute(boolean z3) {
        setMuteOnly(z3);
    }

    public void setMuteOnly(boolean z3) {
        try {
            t0.d("setMuteOnly ", z3 + "");
            com.join.android.app.component.video.b gSYVideoManager = getGSYVideoManager();
            if (getGSYVideoManager() != null) {
                gSYVideoManager.W(z3);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void setPos(int i2) {
        this.f17578d = i2;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer showSmallVideo(Point point, boolean z3, boolean z4) {
        MultiStandVideo multiStandVideo = (MultiStandVideo) super.showSmallVideo(point, z3, z4);
        multiStandVideo.mStartButton.setVisibility(8);
        multiStandVideo.mStartButton = null;
        return multiStandVideo;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void startAfterPrepared() {
        super.startAfterPrepared();
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:startAfterPrepared ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void startPlayLogic() {
        super.startPlayLogic();
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayVideoMini:startPlayLogic ");
        sb.append(this.f17578d);
        sb.append("    key:");
        sb.append(getKey());
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z3, boolean z4) {
        GSYBaseVideoPlayer startWindowFullscreen = super.startWindowFullscreen(context, z3, z4);
        MultiStandVideo multiStandVideo = (MultiStandVideo) startWindowFullscreen;
        multiStandVideo.i(this.f17577c);
        if (this.mCurrentState != 2) {
            startWindowFullscreen.startPlayLogic();
        }
        com.join.android.app.component.video.b gSYVideoManager = getGSYVideoManager();
        if (gSYVideoManager != null) {
            gSYVideoManager.W(false);
        }
        return multiStandVideo;
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

    public MultiStandVideo(Context context) {
        super(context);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public com.join.android.app.component.video.b getGSYVideoManager() {
        com.join.android.app.component.video.b d02 = com.join.android.app.component.video.b.d0(getKey(), this.mPlayTag, this.mPlayPosition);
        d02.Q(getContext().getApplicationContext());
        return d02;
    }

    public MultiStandVideo(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
