package com.papa.gsyvideoplayer.video.base;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c2.g;
import com.facebook.common.util.f;
import com.papa.gsyvideoplayer.R;
import java.io.File;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class GSYVideoControlView extends GSYVideoView implements View.OnClickListener, View.OnTouchListener, SeekBar.OnSeekBarChangeListener {
    Runnable dismissControlTask;
    protected GestureDetector gestureDetector;
    protected boolean isShowDragProgressTextOnSeekBar;
    protected ImageView mBackButton;
    protected ViewGroup mBottomContainer;
    protected ProgressBar mBottomProgressBar;
    protected boolean mBrightness;
    protected float mBrightnessData;
    protected boolean mChangePosition;
    protected boolean mChangeVolume;
    protected TextView mCurrentTimeTextView;
    protected int mDismissControlTime;
    protected int mDownPosition;
    protected float mDownX;
    protected float mDownY;
    protected int mEnlargeImageRes;
    protected boolean mFirstTouch;
    protected ImageView mFullscreenButton;
    protected c2.d mGSYVideoProgressListener;
    protected int mGestureDownVolume;
    protected boolean mHadSeekTouch;
    protected boolean mHideKey;
    protected boolean mIsTouchWiget;
    protected boolean mIsTouchWigetFull;
    protected View mLoadingProgressBar;
    protected g mLockClickListener;
    protected boolean mLockCurScreen;
    protected ImageView mLockScreen;
    protected float mMoveY;
    protected boolean mNeedLockFull;
    protected boolean mNeedShowWifiTip;
    protected boolean mPostDismiss;
    protected boolean mPostProgress;
    protected SeekBar mProgressBar;
    protected int mSeekEndOffset;
    protected float mSeekRatio;
    protected int mSeekTimePosition;
    protected boolean mSetUpLazy;
    protected boolean mShowVKey;
    protected int mShrinkImageRes;
    protected View mStartButton;
    protected int mThreshold;
    protected View mThumbImageView;
    protected RelativeLayout mThumbImageViewLayout;
    protected boolean mThumbPlay;
    protected TextView mTitleTextView;
    protected ViewGroup mTopContainer;
    protected TextView mTotalTimeTextView;
    protected boolean mTouchingProgressBar;
    Runnable progressTask;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            int i2 = gSYVideoControlView.mCurrentState;
            if (i2 == 6 || i2 == 7) {
                return;
            }
            gSYVideoControlView.lockTouchLogic();
            GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
            g gVar = gSYVideoControlView2.mLockClickListener;
            if (gVar != null) {
                gVar.a(view, gSYVideoControlView2.mLockCurScreen);
            }
        }
    }

    /* loaded from: classes4.dex */
    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            GSYVideoControlView.this.touchDoubleUp();
            return super.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            super.onLongPress(motionEvent);
            GSYVideoControlView.this.touchLongPress(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            if (!gSYVideoControlView.mChangePosition && !gSYVideoControlView.mChangeVolume && !gSYVideoControlView.mBrightness) {
                gSYVideoControlView.onClickUiToggle();
            }
            return super.onSingleTapConfirmed(motionEvent);
        }
    }

    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f55358a;

        c(int i2) {
            this.f55358a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            int i2 = gSYVideoControlView.mCurrentState;
            if (i2 == 0 || i2 == 1) {
                return;
            }
            int i4 = this.f55358a;
            if (i4 != 0) {
                gSYVideoControlView.setTextAndProgress(i4);
                GSYVideoControlView.this.mBufferPoint = this.f55358a;
                com.papa.gsyvideoplayer.utils.c.h("Net speed: " + GSYVideoControlView.this.getNetSpeedText() + " percent " + this.f55358a);
            }
            GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
            SeekBar seekBar = gSYVideoControlView2.mProgressBar;
            if (seekBar != null && gSYVideoControlView2.mLooping && gSYVideoControlView2.mHadPlay && this.f55358a == 0 && seekBar.getProgress() >= GSYVideoControlView.this.mProgressBar.getMax() - 1) {
                GSYVideoControlView.this.loopSetProgressAndTime();
            }
        }
    }

    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            int i2 = gSYVideoControlView.mCurrentState;
            if (i2 == 2 || i2 == 5) {
                gSYVideoControlView.setTextAndProgress(0);
            }
            GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
            if (gSYVideoControlView2.mPostProgress) {
                gSYVideoControlView2.postDelayed(this, 1000L);
            }
        }
    }

    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            int i2 = gSYVideoControlView.mCurrentState;
            if (i2 == 0 || i2 == 7 || i2 == 6) {
                return;
            }
            if (gSYVideoControlView.getActivityContext() != null) {
                GSYVideoControlView.this.hideAllWidget();
                GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                gSYVideoControlView2.setViewShowState(gSYVideoControlView2.mLockScreen, 8);
                GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                if (gSYVideoControlView3.mHideKey && gSYVideoControlView3.mIfCurrentIsFullscreen && gSYVideoControlView3.mShowVKey) {
                    com.papa.gsyvideoplayer.utils.b.k(gSYVideoControlView3.mContext);
                }
            }
            GSYVideoControlView gSYVideoControlView4 = GSYVideoControlView.this;
            if (gSYVideoControlView4.mPostDismiss) {
                gSYVideoControlView4.postDelayed(this, gSYVideoControlView4.mDismissControlTime);
            }
        }
    }

    public GSYVideoControlView(@NonNull Context context) {
        super(context);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = 2500;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostDismiss = false;
        this.isShowDragProgressTextOnSeekBar = false;
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new b());
        this.progressTask = new d();
        this.dismissControlTask = new e();
    }

    protected void cancelDismissControlViewTimer() {
        this.mPostDismiss = false;
        removeCallbacks(this.dismissControlTask);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cancelProgressTimer() {
        this.mPostProgress = false;
        removeCallbacks(this.progressTask);
    }

    protected abstract void changeUiToCompleteShow();

    protected abstract void changeUiToError();

    protected abstract void changeUiToNormal();

    protected abstract void changeUiToPauseShow();

    protected abstract void changeUiToPlayingBufferingShow();

    protected abstract void changeUiToPlayingShow();

    protected abstract void changeUiToPreparingShow();

    public void clearThumbImageView() {
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clickStartIcon() {
        if (TextUtils.isEmpty(this.mUrl)) {
            com.papa.gsyvideoplayer.utils.c.e("********" + getResources().getString(R.string.no_url));
            return;
        }
        int i2 = this.mCurrentState;
        if (i2 == 0 || i2 == 7) {
            if (isShowNetConfirm()) {
                showWifiDialog();
            } else {
                startButtonLogic();
            }
        } else if (i2 == 2) {
            try {
                onVideoPause();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            setStateAndUi(5);
            if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
                return;
            }
            if (this.mIfCurrentIsFullscreen) {
                com.papa.gsyvideoplayer.utils.c.h("onClickStopFullscreen");
                this.mVideoAllCallBack.M(this.mOriginUrl, this.mTitle, this);
                return;
            }
            com.papa.gsyvideoplayer.utils.c.h("onClickStop");
            this.mVideoAllCallBack.B0(this.mOriginUrl, this.mTitle, this);
        } else if (i2 != 5) {
            if (i2 == 6) {
                startButtonLogic();
            }
        } else {
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                if (this.mIfCurrentIsFullscreen) {
                    com.papa.gsyvideoplayer.utils.c.h("onClickResumeFullscreen");
                    this.mVideoAllCallBack.V(this.mOriginUrl, this.mTitle, this);
                } else {
                    com.papa.gsyvideoplayer.utils.c.h("onClickResume");
                    this.mVideoAllCallBack.z0(this.mOriginUrl, this.mTitle, this);
                }
            }
            if (!this.mHadPlay && !this.mStartAfterPrepared) {
                startAfterPrepared();
            }
            try {
                getGSYVideoManager().start();
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            setStateAndUi(2);
        }
    }

    protected abstract void dismissBrightnessDialog();

    protected abstract void dismissProgressDialog();

    protected abstract void dismissVolumeDialog();

    public ImageView getBackButton() {
        return this.mBackButton;
    }

    public int getDismissControlTime() {
        return this.mDismissControlTime;
    }

    public int getEnlargeImageRes() {
        int i2 = this.mEnlargeImageRes;
        return i2 == -1 ? R.drawable.video_enlarge : i2;
    }

    public ImageView getFullscreenButton() {
        return this.mFullscreenButton;
    }

    public float getSeekRatio() {
        return this.mSeekRatio;
    }

    public int getShrinkImageRes() {
        int i2 = this.mShrinkImageRes;
        return i2 == -1 ? R.drawable.video_shrink : i2;
    }

    public View getStartButton() {
        return this.mStartButton;
    }

    public View getThumbImageView() {
        return this.mThumbImageView;
    }

    public RelativeLayout getThumbImageViewLayout() {
        return this.mThumbImageViewLayout;
    }

    public TextView getTitleTextView() {
        return this.mTitleTextView;
    }

    protected abstract void hideAllWidget();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        RelativeLayout relativeLayout;
        super.init(context);
        this.mStartButton = findViewById(R.id.start);
        this.mTitleTextView = (TextView) findViewById(R.id.title);
        this.mBackButton = (ImageView) findViewById(R.id.back);
        this.mFullscreenButton = (ImageView) findViewById(R.id.fullscreen);
        this.mProgressBar = (SeekBar) findViewById(R.id.progress);
        this.mCurrentTimeTextView = (TextView) findViewById(R.id.current);
        this.mTotalTimeTextView = (TextView) findViewById(R.id.total);
        this.mBottomContainer = (ViewGroup) findViewById(R.id.layout_bottom);
        this.mTopContainer = (ViewGroup) findViewById(R.id.layout_top);
        this.mBottomProgressBar = (ProgressBar) findViewById(R.id.bottom_progressbar);
        this.mThumbImageViewLayout = (RelativeLayout) findViewById(R.id.thumb);
        this.mLockScreen = (ImageView) findViewById(R.id.lock_screen);
        this.mLoadingProgressBar = findViewById(R.id.loading);
        if (isInEditMode()) {
            return;
        }
        View view = this.mStartButton;
        if (view != null) {
            view.setOnClickListener(this);
        }
        ImageView imageView = this.mFullscreenButton;
        if (imageView != null) {
            imageView.setOnClickListener(this);
            this.mFullscreenButton.setOnTouchListener(this);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setOnSeekBarChangeListener(this);
        }
        ViewGroup viewGroup = this.mBottomContainer;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(this);
        }
        ViewGroup viewGroup2 = this.mTextureViewContainer;
        if (viewGroup2 != null) {
            viewGroup2.setOnClickListener(this);
            this.mTextureViewContainer.setOnTouchListener(this);
        }
        SeekBar seekBar2 = this.mProgressBar;
        if (seekBar2 != null) {
            seekBar2.setOnTouchListener(this);
        }
        RelativeLayout relativeLayout2 = this.mThumbImageViewLayout;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(8);
            this.mThumbImageViewLayout.setOnClickListener(this);
        }
        if (this.mThumbImageView != null && !this.mIfCurrentIsFullscreen && (relativeLayout = this.mThumbImageViewLayout) != null) {
            relativeLayout.removeAllViews();
            resolveThumbImage(this.mThumbImageView);
        }
        ImageView imageView2 = this.mBackButton;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this);
        }
        ImageView imageView3 = this.mLockScreen;
        if (imageView3 != null) {
            imageView3.setVisibility(8);
            this.mLockScreen.setOnClickListener(new a());
        }
        if (getActivityContext() != null) {
            this.mSeekEndOffset = com.papa.gsyvideoplayer.utils.b.b(getActivityContext(), 50.0f);
        }
    }

    public void initUIState() {
        setStateAndUi(0);
    }

    public boolean isHideKey() {
        return this.mHideKey;
    }

    public boolean isNeedLockFull() {
        return this.mNeedLockFull;
    }

    public boolean isNeedShowWifiTip() {
        return this.mNeedShowWifiTip;
    }

    public boolean isShowDragProgressTextOnSeekBar() {
        return this.isShowDragProgressTextOnSeekBar;
    }

    protected boolean isShowNetConfirm() {
        return (this.mOriginUrl.startsWith(f.f11767c) || this.mOriginUrl.startsWith(f.f11772h) || com.papa.gsyvideoplayer.utils.b.m(getContext()) || !this.mNeedShowWifiTip || getGSYVideoManager().e(this.mContext.getApplicationContext(), this.mCachePath, this.mOriginUrl)) ? false : true;
    }

    public boolean isTouchWiget() {
        return this.mIsTouchWiget;
    }

    public boolean isTouchWigetFull() {
        return this.mIsTouchWigetFull;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void lockTouchLogic() {
        if (this.mLockCurScreen) {
            this.mLockScreen.setImageResource(R.drawable.unlock);
            this.mLockCurScreen = false;
            return;
        }
        this.mLockScreen.setImageResource(R.drawable.lock);
        this.mLockCurScreen = true;
        hideAllWidget();
    }

    protected void loopSetProgressAndTime() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar == null || this.mTotalTimeTextView == null || this.mCurrentTimeTextView == null) {
            return;
        }
        seekBar.setProgress(0);
        this.mProgressBar.setSecondaryProgress(0);
        this.mCurrentTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(0));
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgress(0);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onAutoCompletion() {
        super.onAutoCompletion();
        if (this.mLockCurScreen) {
            lockTouchLogic();
            this.mLockScreen.setVisibility(8);
        }
    }

    protected void onBrightnessSlide(float f4) {
        float f5 = ((Activity) this.mContext).getWindow().getAttributes().screenBrightness;
        this.mBrightnessData = f5;
        if (f5 <= 0.0f) {
            this.mBrightnessData = 0.5f;
        } else if (f5 < 0.01f) {
            this.mBrightnessData = 0.01f;
        }
        WindowManager.LayoutParams attributes = ((Activity) this.mContext).getWindow().getAttributes();
        float f6 = this.mBrightnessData + f4;
        attributes.screenBrightness = f6;
        if (f6 > 1.0f) {
            attributes.screenBrightness = 1.0f;
        } else if (f6 < 0.01f) {
            attributes.screenBrightness = 0.01f;
        }
        showBrightnessDialog(attributes.screenBrightness);
        ((Activity) this.mContext).getWindow().setAttributes(attributes);
    }

    @Override // c2.a
    public void onBufferingUpdate(int i2) {
        post(new c(i2));
    }

    public void onClick(View view) {
        int id = view.getId();
        if (this.mHideKey && this.mIfCurrentIsFullscreen) {
            com.papa.gsyvideoplayer.utils.b.k(this.mContext);
        }
        if (id == R.id.start) {
            clickStartIcon();
            return;
        }
        int i2 = R.id.surface_container;
        if (id == i2 && this.mCurrentState == 7) {
            if (this.mVideoAllCallBack != null) {
                com.papa.gsyvideoplayer.utils.c.h("onClickStartError");
                this.mVideoAllCallBack.x(this.mOriginUrl, this.mTitle, this);
            }
            prepareVideo();
        } else if (id != R.id.thumb) {
            if (id == i2) {
                if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                    if (this.mIfCurrentIsFullscreen) {
                        com.papa.gsyvideoplayer.utils.c.h("onClickBlankFullscreen");
                        this.mVideoAllCallBack.k(this.mOriginUrl, this.mTitle, this);
                    } else {
                        com.papa.gsyvideoplayer.utils.c.h("onClickBlank");
                        this.mVideoAllCallBack.b0(this.mOriginUrl, this.mTitle, this);
                    }
                }
                startDismissControlViewTimer();
            }
        } else if (this.mThumbPlay) {
            if (TextUtils.isEmpty(this.mUrl)) {
                com.papa.gsyvideoplayer.utils.c.e("********" + getResources().getString(R.string.no_url));
                return;
            }
            int i4 = this.mCurrentState;
            if (i4 != 0) {
                if (i4 == 6) {
                    onClickUiToggle();
                }
            } else if (isShowNetConfirm()) {
                showWifiDialog();
            } else {
                startPlayLogic();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onClickUiToggle();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ dismiss onDetachedFromWindow");
        cancelProgressTimer();
        cancelDismissControlViewTimer();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onError(int i2, int i4) {
        super.onError(i2, i4);
        if (this.mLockCurScreen) {
            lockTouchLogic();
            this.mLockScreen.setVisibility(8);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onPrepared() {
        setTextAndProgress(0, true);
        super.onPrepared();
        if (this.mCurrentState != 1) {
            return;
        }
        startProgressTimer();
        com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ surface_container onPrepared");
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z3) {
        showDragProgressTextOnSeekBar(z3, i2);
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        this.mHadSeekTouch = true;
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            if (isIfCurrentIsFullscreen()) {
                com.papa.gsyvideoplayer.utils.c.h("onClickSeekbarFullscreen");
                this.mVideoAllCallBack.Q(this.mOriginUrl, this.mTitle, this);
            } else {
                com.papa.gsyvideoplayer.utils.c.h("onClickSeekbar");
                this.mVideoAllCallBack.e0(this.mOriginUrl, this.mTitle, this);
            }
        }
        if (getGSYVideoManager() != null && this.mHadPlay) {
            try {
                getGSYVideoManager().seekTo((seekBar.getProgress() * getDuration()) / 100);
            } catch (Exception e4) {
                com.papa.gsyvideoplayer.utils.c.j(e4.toString());
            }
        }
        this.mHadSeekTouch = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a5, code lost:
        if (r8 != 2) goto L35;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            int r8 = r8.getId()
            float r0 = r9.getX()
            float r1 = r9.getY()
            boolean r2 = r7.mIfCurrentIsFullscreen
            r3 = 1
            if (r2 == 0) goto L20
            boolean r2 = r7.mLockCurScreen
            if (r2 == 0) goto L20
            boolean r2 = r7.mNeedLockFull
            if (r2 == 0) goto L20
            r7.onClickUiToggle()
            r7.startDismissControlViewTimer()
            return r3
        L20:
            int r2 = com.papa.gsyvideoplayer.R.id.fullscreen
            r4 = 0
            if (r8 != r2) goto L26
            return r4
        L26:
            int r2 = com.papa.gsyvideoplayer.R.id.surface_container
            r5 = 2
            if (r8 != r2) goto L99
            int r8 = r9.getAction()
            if (r8 == 0) goto L90
            if (r8 == r3) goto L66
            if (r8 == r5) goto L36
            goto L93
        L36:
            float r8 = r7.mDownX
            float r0 = r0 - r8
            float r8 = r7.mDownY
            float r8 = r1 - r8
            float r2 = java.lang.Math.abs(r0)
            float r3 = java.lang.Math.abs(r8)
            boolean r5 = r7.mIfCurrentIsFullscreen
            if (r5 == 0) goto L4d
            boolean r6 = r7.mIsTouchWigetFull
            if (r6 != 0) goto L53
        L4d:
            boolean r6 = r7.mIsTouchWiget
            if (r6 == 0) goto L62
            if (r5 != 0) goto L62
        L53:
            boolean r5 = r7.mChangePosition
            if (r5 != 0) goto L62
            boolean r5 = r7.mChangeVolume
            if (r5 != 0) goto L62
            boolean r5 = r7.mBrightness
            if (r5 != 0) goto L62
            r7.touchSurfaceMoveFullLogic(r2, r3)
        L62:
            r7.touchSurfaceMove(r0, r8, r1)
            goto L93
        L66:
            r7.startDismissControlViewTimer()
            r7.touchSurfaceUp()
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            int r0 = r7.hashCode()
            r8.append(r0)
            java.lang.String r0 = "------------------------------ surface_container ACTION_UP"
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            com.papa.gsyvideoplayer.utils.c.h(r8)
            r7.startProgressTimer()
            boolean r8 = r7.mHideKey
            if (r8 == 0) goto L93
            boolean r8 = r7.mShowVKey
            if (r8 == 0) goto L93
            return r3
        L90:
            r7.touchSurfaceDown(r0, r1)
        L93:
            android.view.GestureDetector r8 = r7.gestureDetector
            r8.onTouchEvent(r9)
            goto Led
        L99:
            int r0 = com.papa.gsyvideoplayer.R.id.progress
            if (r8 != r0) goto Led
            int r8 = r9.getAction()
            if (r8 == 0) goto Ld9
            if (r8 == r3) goto La8
            if (r8 == r5) goto Ldc
            goto Led
        La8:
            r7.startDismissControlViewTimer()
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            int r9 = r7.hashCode()
            r8.append(r9)
            java.lang.String r9 = "------------------------------ progress ACTION_UP"
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            com.papa.gsyvideoplayer.utils.c.h(r8)
            r7.startProgressTimer()
            android.view.ViewParent r8 = r7.getParent()
        Lca:
            if (r8 == 0) goto Ld4
            r8.requestDisallowInterceptTouchEvent(r4)
            android.view.ViewParent r8 = r8.getParent()
            goto Lca
        Ld4:
            r8 = -1082130432(0xffffffffbf800000, float:-1.0)
            r7.mBrightnessData = r8
            goto Led
        Ld9:
            r7.cancelDismissControlViewTimer()
        Ldc:
            r7.cancelProgressTimer()
            android.view.ViewParent r8 = r7.getParent()
        Le3:
            if (r8 == 0) goto Led
            r8.requestDisallowInterceptTouchEvent(r3)
            android.view.ViewParent r8 = r8.getParent()
            goto Le3
        Led:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa.gsyvideoplayer.video.base.GSYVideoControlView.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void prepareVideo() {
        if (this.mSetUpLazy) {
            super.setUp(this.mOriginUrl, this.mCache, this.mCachePath, this.mMapHeadData, this.mTitle);
        }
        super.prepareVideo();
    }

    protected void resetProgressAndTime() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar == null || this.mTotalTimeTextView == null || this.mCurrentTimeTextView == null) {
            return;
        }
        seekBar.setProgress(0);
        this.mProgressBar.setSecondaryProgress(0);
        this.mCurrentTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(0));
        this.mTotalTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(0));
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgress(0);
            this.mBottomProgressBar.setSecondaryProgress(0);
        }
    }

    protected void resolveThumbImage(View view) {
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = -1;
            layoutParams.width = -1;
            this.mThumbImageViewLayout.addView(view, layoutParams);
        }
    }

    protected void resolveUIState(int i2) {
        if (i2 == 0) {
            changeUiToNormal();
            cancelDismissControlViewTimer();
        } else if (i2 == 1) {
            changeUiToPreparingShow();
            startDismissControlViewTimer();
        } else if (i2 == 2) {
            changeUiToPlayingShow();
            startDismissControlViewTimer();
        } else if (i2 == 3) {
            changeUiToPlayingBufferingShow();
        } else if (i2 == 5) {
            changeUiToPauseShow();
            cancelDismissControlViewTimer();
        } else if (i2 == 6) {
            changeUiToCompleteShow();
            cancelDismissControlViewTimer();
        } else if (i2 != 7) {
        } else {
            changeUiToError();
        }
    }

    public void setDismissControlTime(int i2) {
        this.mDismissControlTime = i2;
    }

    public void setEnlargeImageRes(int i2) {
        this.mEnlargeImageRes = i2;
    }

    public void setGSYVideoProgressListener(c2.d dVar) {
        this.mGSYVideoProgressListener = dVar;
    }

    public void setHideKey(boolean z3) {
        this.mHideKey = z3;
    }

    public void setIsTouchWiget(boolean z3) {
        this.mIsTouchWiget = z3;
    }

    public void setIsTouchWigetFull(boolean z3) {
        this.mIsTouchWigetFull = z3;
    }

    public void setLockClickListener(g gVar) {
        this.mLockClickListener = gVar;
    }

    public void setNeedLockFull(boolean z3) {
        this.mNeedLockFull = z3;
    }

    public void setNeedShowWifiTip(boolean z3) {
        this.mNeedShowWifiTip = z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setProgressAndTime(int i2, int i4, int i5, int i6, boolean z3) {
        c2.d dVar = this.mGSYVideoProgressListener;
        if (dVar != null && this.mCurrentState == 2) {
            dVar.a(i2, i4, i5, i6);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar == null || this.mTotalTimeTextView == null || this.mCurrentTimeTextView == null || this.mHadSeekTouch) {
            return;
        }
        if (!this.mTouchingProgressBar && (i2 != 0 || z3)) {
            seekBar.setProgress(i2);
        }
        if (getGSYVideoManager().b() > 0) {
            i4 = getGSYVideoManager().b();
        }
        if (i4 > 94) {
            i4 = 100;
        }
        setSecondaryProgress(i4);
        this.mTotalTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(i6));
        if (i5 > 0) {
            this.mCurrentTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(i5));
        }
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            if (i2 != 0 || z3) {
                progressBar.setProgress(i2);
            }
            setSecondaryProgress(i4);
        }
    }

    protected void setSecondaryProgress(int i2) {
        if (this.mProgressBar != null && i2 != 0 && !getGSYVideoManager().A()) {
            this.mProgressBar.setSecondaryProgress(i2);
        }
        if (this.mBottomProgressBar == null || i2 == 0 || getGSYVideoManager().A()) {
            return;
        }
        this.mBottomProgressBar.setSecondaryProgress(i2);
    }

    public void setSeekRatio(float f4) {
        if (f4 < 0.0f) {
            return;
        }
        this.mSeekRatio = f4;
    }

    public void setShowDragProgressTextOnSeekBar(boolean z3) {
        this.isShowDragProgressTextOnSeekBar = z3;
    }

    public void setShrinkImageRes(int i2) {
        this.mShrinkImageRes = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    public void setSmallVideoTextureView(View.OnTouchListener onTouchListener) {
        super.setSmallVideoTextureView(onTouchListener);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnTouchListener(onTouchListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void setStateAndUi(int i2) {
        TextView textView;
        this.mCurrentState = i2;
        if ((i2 == 0 && isCurrentMediaListener()) || i2 == 6 || i2 == 7) {
            this.mHadPrepared = false;
        }
        int i4 = this.mCurrentState;
        if (i4 == 0) {
            if (isCurrentMediaListener()) {
                com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ dismiss CURRENT_STATE_NORMAL");
                cancelProgressTimer();
                getGSYVideoManager().z();
                releasePauseCover();
                this.mBufferPoint = 0;
                this.mSaveChangeViewTIme = 0L;
                AudioManager audioManager = this.mAudioManager;
                if (audioManager != null) {
                    audioManager.abandonAudioFocus(this.onAudioFocusChangeListener);
                }
            }
            releaseNetWorkState();
        } else if (i4 == 1) {
            resetProgressAndTime();
        } else if (i4 != 2) {
            if (i4 == 5) {
                com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ CURRENT_STATE_PAUSE");
                startProgressTimer();
            } else if (i4 != 6) {
                if (i4 == 7 && isCurrentMediaListener()) {
                    getGSYVideoManager().z();
                }
            } else {
                com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ dismiss CURRENT_STATE_AUTO_COMPLETE");
                cancelProgressTimer();
                SeekBar seekBar = this.mProgressBar;
                if (seekBar != null) {
                    seekBar.setProgress(100);
                }
                TextView textView2 = this.mCurrentTimeTextView;
                if (textView2 != null && (textView = this.mTotalTimeTextView) != null) {
                    textView2.setText(textView.getText());
                }
                ProgressBar progressBar = this.mBottomProgressBar;
                if (progressBar != null) {
                    progressBar.setProgress(100);
                }
            }
        } else if (isCurrentMediaListener()) {
            com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ CURRENT_STATE_PLAYING");
            startProgressTimer();
        }
        resolveUIState(i2);
    }

    protected void setTextAndProgress(int i2) {
        setTextAndProgress(i2, false);
    }

    public void setThumbImageView(View view) {
        if (this.mThumbImageViewLayout != null) {
            this.mThumbImageView = view;
            resolveThumbImage(view);
        }
    }

    public void setThumbPlay(boolean z3) {
        this.mThumbPlay = z3;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public boolean setUp(String str, boolean z3, String str2) {
        return setUp(str, z3, null, str2);
    }

    public boolean setUpLazy(String str, boolean z3, File file, Map<String, String> map, String str2) {
        this.mOriginUrl = str;
        this.mCache = z3;
        this.mCachePath = file;
        this.mSetUpLazy = true;
        this.mTitle = str2;
        this.mMapHeadData = map;
        if (!isCurrentMediaListener() || System.currentTimeMillis() - this.mSaveChangeViewTIme >= 2000) {
            this.mUrl = "waiting";
            this.mCurrentState = 0;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setViewShowState(View view, int i2) {
        if (view != null) {
            view.setVisibility(i2);
        }
    }

    protected abstract void showBrightnessDialog(float f4);

    protected void showDragProgressTextOnSeekBar(boolean z3, int i2) {
        if (z3 && this.isShowDragProgressTextOnSeekBar) {
            int duration = getDuration();
            TextView textView = this.mCurrentTimeTextView;
            if (textView != null) {
                textView.setText(com.papa.gsyvideoplayer.utils.b.r((i2 * duration) / 100));
            }
        }
    }

    protected abstract void showProgressDialog(float f4, String str, int i2, String str2, int i4);

    protected abstract void showVolumeDialog(float f4, int i2);

    protected abstract void showWifiDialog();

    /* JADX INFO: Access modifiers changed from: protected */
    public void startDismissControlViewTimer() {
        cancelDismissControlViewTimer();
        this.mPostDismiss = true;
        postDelayed(this.dismissControlTask, this.mDismissControlTime);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startProgressTimer() {
        cancelProgressTimer();
        this.mPostProgress = true;
        postDelayed(this.progressTask, 300L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void touchDoubleUp() {
        if (this.mHadPlay) {
            clickStartIcon();
        }
    }

    protected void touchLongPress(MotionEvent motionEvent) {
    }

    protected void touchSurfaceDown(float f4, float f5) {
        this.mTouchingProgressBar = true;
        this.mDownX = f4;
        this.mDownY = f5;
        this.mMoveY = 0.0f;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void touchSurfaceMove(float f4, float f5, float f6) {
        int i2;
        int i4;
        int streamMaxVolume;
        if (getActivityContext() != null) {
            i2 = com.papa.gsyvideoplayer.utils.b.f((Activity) getActivityContext()) ? this.mScreenHeight : this.mScreenWidth;
            i4 = com.papa.gsyvideoplayer.utils.b.f((Activity) getActivityContext()) ? this.mScreenWidth : this.mScreenHeight;
        } else {
            i2 = 0;
            i4 = 0;
        }
        if (this.mChangePosition) {
            int duration = getDuration();
            int i5 = (int) (this.mDownPosition + (((duration * f4) / i2) / this.mSeekRatio));
            this.mSeekTimePosition = i5;
            if (i5 > duration) {
                this.mSeekTimePosition = duration;
            }
            showProgressDialog(f4, com.papa.gsyvideoplayer.utils.b.r(this.mSeekTimePosition), this.mSeekTimePosition, com.papa.gsyvideoplayer.utils.b.r(duration), duration);
        } else if (this.mChangeVolume) {
            float f7 = -f5;
            float f8 = i4;
            this.mAudioManager.setStreamVolume(3, this.mGestureDownVolume + ((int) (((this.mAudioManager.getStreamMaxVolume(3) * f7) * 3.0f) / f8)), 0);
            showVolumeDialog(-f7, (int) (((this.mGestureDownVolume * 100) / streamMaxVolume) + (((3.0f * f7) * 100.0f) / f8)));
        } else if (!this.mBrightness || Math.abs(f5) <= this.mThreshold) {
        } else {
            onBrightnessSlide((-f5) / i4);
            this.mDownY = f6;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void touchSurfaceMoveFullLogic(float f4, float f5) {
        int i2;
        if (getActivityContext() != null) {
            i2 = com.papa.gsyvideoplayer.utils.b.f((Activity) getActivityContext()) ? this.mScreenHeight : this.mScreenWidth;
        } else {
            i2 = 0;
        }
        int i4 = this.mThreshold;
        if (f4 > i4 || f5 > i4) {
            cancelProgressTimer();
            if (f4 >= this.mThreshold) {
                if (Math.abs(com.papa.gsyvideoplayer.utils.b.h(getContext()) - this.mDownX) > this.mSeekEndOffset) {
                    this.mChangePosition = true;
                    this.mDownPosition = getCurrentPositionWhenPlaying();
                    return;
                }
                this.mShowVKey = true;
                return;
            }
            boolean z3 = Math.abs(((float) com.papa.gsyvideoplayer.utils.b.g(getContext())) - this.mDownY) > ((float) this.mSeekEndOffset);
            if (this.mFirstTouch) {
                this.mBrightness = this.mDownX < ((float) i2) * 0.5f && z3;
                this.mFirstTouch = false;
            }
            if (!this.mBrightness) {
                this.mChangeVolume = z3;
                this.mGestureDownVolume = this.mAudioManager.getStreamVolume(3);
            }
            this.mShowVKey = !z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void touchSurfaceUp() {
        int i2;
        if (this.mChangePosition) {
            int duration = getDuration();
            int i4 = this.mSeekTimePosition * 100;
            if (duration == 0) {
                duration = 1;
            }
            int i5 = i4 / duration;
            ProgressBar progressBar = this.mBottomProgressBar;
            if (progressBar != null) {
                progressBar.setProgress(i5);
            }
        }
        this.mTouchingProgressBar = false;
        dismissProgressDialog();
        dismissVolumeDialog();
        dismissBrightnessDialog();
        if (this.mChangePosition && getGSYVideoManager() != null && ((i2 = this.mCurrentState) == 2 || i2 == 5)) {
            try {
                getGSYVideoManager().seekTo(this.mSeekTimePosition);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            int duration2 = getDuration();
            int i6 = this.mSeekTimePosition * 100;
            if (duration2 == 0) {
                duration2 = 1;
            }
            int i7 = i6 / duration2;
            SeekBar seekBar = this.mProgressBar;
            if (seekBar != null) {
                seekBar.setProgress(i7);
            }
            if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
                return;
            }
            com.papa.gsyvideoplayer.utils.c.h("onTouchScreenSeekPosition");
            this.mVideoAllCallBack.E(this.mOriginUrl, this.mTitle, this);
        } else if (this.mBrightness) {
            if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
                return;
            }
            com.papa.gsyvideoplayer.utils.c.h("onTouchScreenSeekLight");
            this.mVideoAllCallBack.A(this.mOriginUrl, this.mTitle, this);
        } else if (this.mChangeVolume && this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            com.papa.gsyvideoplayer.utils.c.h("onTouchScreenSeekVolume");
            this.mVideoAllCallBack.Z(this.mOriginUrl, this.mTitle, this);
        }
    }

    protected void setTextAndProgress(int i2, boolean z3) {
        int currentPositionWhenPlaying = getCurrentPositionWhenPlaying();
        int duration = getDuration();
        setProgressAndTime((currentPositionWhenPlaying * 100) / (duration == 0 ? 1 : duration), i2, currentPositionWhenPlaying, duration, z3);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public boolean setUp(String str, boolean z3, File file, String str2) {
        TextView textView;
        if (super.setUp(str, z3, file, str2)) {
            if (str2 != null && (textView = this.mTitleTextView) != null) {
                textView.setText(str2);
            }
            if (this.mIfCurrentIsFullscreen) {
                ImageView imageView = this.mFullscreenButton;
                if (imageView != null) {
                    imageView.setImageResource(getShrinkImageRes());
                    return true;
                }
                return true;
            }
            ImageView imageView2 = this.mFullscreenButton;
            if (imageView2 != null) {
                imageView2.setImageResource(getEnlargeImageRes());
                return true;
            }
            return true;
        }
        return false;
    }

    public GSYVideoControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = 2500;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostDismiss = false;
        this.isShowDragProgressTextOnSeekBar = false;
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new b());
        this.progressTask = new d();
        this.dismissControlTask = new e();
    }

    public GSYVideoControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = 2500;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostDismiss = false;
        this.isShowDragProgressTextOnSeekBar = false;
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new b());
        this.progressTask = new d();
        this.dismissControlTask = new e();
    }

    public GSYVideoControlView(Context context, Boolean bool) {
        super(context, bool);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = 2500;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostDismiss = false;
        this.isShowDragProgressTextOnSeekBar = false;
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new b());
        this.progressTask = new d();
        this.dismissControlTask = new e();
    }
}
