package com.papa.gsyvideoplayer.video.base;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Handler;
import android.transition.TransitionManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.papa.gsyvideoplayer.R;
import com.papa.gsyvideoplayer.utils.n;
import com.papa.gsyvideoplayer.utils.o;
/* loaded from: classes4.dex */
public abstract class GSYBaseVideoPlayer extends GSYVideoControlView {
    protected boolean isNeedAutoAdaptation;
    protected boolean mActionBar;
    protected boolean mAutoFullWithSize;
    protected View.OnClickListener mBackFromFullScreenListener;
    protected Runnable mCheckoutTask;
    protected boolean mFullAnimEnd;
    protected Handler mInnerHandler;
    private boolean mIsOnlyRotateLand;
    protected int[] mListItemRect;
    protected int[] mListItemSize;
    protected boolean mLockLand;
    protected o mOrientationUtils;
    protected boolean mRotateViewAuto;
    protected boolean mRotateWithSystem;
    protected boolean mShowFullAnimation;
    protected View mSmallClose;
    protected boolean mStatusBar;
    protected int mSystemUiVisibility;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseVideoPlayer.this.hideSmallVideo();
            GSYBaseVideoPlayer.this.releaseVideos();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f55336a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f55337b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ GSYBaseVideoPlayer f55338c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ FrameLayout f55339d;

        b(boolean z3, boolean z4, GSYBaseVideoPlayer gSYBaseVideoPlayer, FrameLayout frameLayout) {
            this.f55336a = z3;
            this.f55337b = z4;
            this.f55338c = gSYBaseVideoPlayer;
            this.f55339d = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            o oVar;
            if (!this.f55336a && this.f55337b && (oVar = GSYBaseVideoPlayer.this.mOrientationUtils) != null && oVar.r() != 1) {
                GSYBaseVideoPlayer.this.mOrientationUtils.E();
            }
            this.f55338c.setVisibility(0);
            this.f55339d.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYBaseVideoPlayer.this.backToNormal();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f55342a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewGroup f55343b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ GSYVideoPlayer f55344c;

        d(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
            this.f55342a = view;
            this.f55343b = viewGroup;
            this.f55344c = gSYVideoPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYBaseVideoPlayer.this.resolveNormalVideoShow(this.f55342a, this.f55343b, this.f55344c);
        }
    }

    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i4;
            GSYVideoPlayer fullWindowPlayer = GSYBaseVideoPlayer.this.getFullWindowPlayer();
            if (fullWindowPlayer == null || (i2 = fullWindowPlayer.mCurrentState) == (i4 = GSYBaseVideoPlayer.this.mCurrentState) || i2 != 3 || i4 == 1) {
                return;
            }
            fullWindowPlayer.setStateAndUi(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = GSYBaseVideoPlayer.this;
            View.OnClickListener onClickListener = gSYBaseVideoPlayer.mBackFromFullScreenListener;
            if (onClickListener == null) {
                gSYBaseVideoPlayer.clearFullscreenLayout();
            } else {
                onClickListener.onClick(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = GSYBaseVideoPlayer.this;
            View.OnClickListener onClickListener = gSYBaseVideoPlayer.mBackFromFullScreenListener;
            if (onClickListener == null) {
                gSYBaseVideoPlayer.clearFullscreenLayout();
            } else {
                onClickListener.onClick(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f55349a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f55350b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ GSYBaseVideoPlayer f55351c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ FrameLayout f55352d;

        h(ViewGroup viewGroup, Context context, GSYBaseVideoPlayer gSYBaseVideoPlayer, FrameLayout frameLayout) {
            this.f55349a = viewGroup;
            this.f55350b = context;
            this.f55351c = gSYBaseVideoPlayer;
            this.f55352d = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition(this.f55349a);
            GSYBaseVideoPlayer.this.resolveFullVideoShow(this.f55350b, this.f55351c, this.f55352d);
            GSYBaseVideoPlayer.this.mFullAnimEnd = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GSYBaseVideoPlayer f55354a;

        i(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
            this.f55354a = gSYBaseVideoPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f55354a.getCurrentPlayer().autoAdaptation();
        }
    }

    public GSYBaseVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mIsOnlyRotateLand = false;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new e();
    }

    private ViewGroup getViewGroup() {
        return (ViewGroup) com.papa.gsyvideoplayer.utils.b.o(getContext()).findViewById(16908290);
    }

    private void pauseFullBackCoverLogic(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        if (gSYBaseVideoPlayer.mCurrentState == 5 && gSYBaseVideoPlayer.mTextureView != null && this.mShowPauseCover) {
            Bitmap bitmap = gSYBaseVideoPlayer.mFullPauseBitmap;
            if (bitmap != null && !bitmap.isRecycled() && this.mShowPauseCover) {
                this.mFullPauseBitmap = gSYBaseVideoPlayer.mFullPauseBitmap;
            } else if (this.mShowPauseCover) {
                try {
                    initCover();
                } catch (Exception e4) {
                    e4.printStackTrace();
                    this.mFullPauseBitmap = null;
                }
            }
        }
    }

    private void pauseFullCoverLogic() {
        if (this.mCurrentState != 5 || this.mTextureView == null) {
            return;
        }
        Bitmap bitmap = this.mFullPauseBitmap;
        if ((bitmap == null || bitmap.isRecycled()) && this.mShowPauseCover) {
            try {
                initCover();
            } catch (Exception e4) {
                e4.printStackTrace();
                this.mFullPauseBitmap = null;
            }
        }
    }

    private void removeVideo(ViewGroup viewGroup, int i2) {
        View findViewById = viewGroup.findViewById(i2);
        if (findViewById == null || findViewById.getParent() == null) {
            return;
        }
        viewGroup.removeView((ViewGroup) findViewById.getParent());
    }

    private void saveLocationStatus(Context context, boolean z3, boolean z4) {
        getLocationOnScreen(this.mListItemRect);
        if (context instanceof Activity) {
            int i2 = com.papa.gsyvideoplayer.utils.b.i(context);
            Activity activity = (Activity) context;
            int c4 = com.papa.gsyvideoplayer.utils.b.c(activity);
            boolean z5 = (activity.getWindow().getAttributes().flags & 67108864) == 67108864;
            com.papa.gsyvideoplayer.utils.c.h("*************isTranslucent*************** " + z5);
            if (z3 && !z5) {
                int[] iArr = this.mListItemRect;
                iArr[1] = iArr[1] - i2;
            }
            if (z4) {
                int[] iArr2 = this.mListItemRect;
                iArr2[1] = iArr2[1] - c4;
            }
        }
        this.mListItemSize[0] = getWidth();
        this.mListItemSize[1] = getHeight();
    }

    protected void autoAdaptation() {
        Context context = getContext();
        if (isVerticalVideo()) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                setPadding(0, com.papa.gsyvideoplayer.utils.b.i(context), 0, 0);
                com.papa.gsyvideoplayer.utils.c.h("竖屏，系统未将布局下移");
                return;
            }
            com.papa.gsyvideoplayer.utils.c.h("竖屏，系统将布局下移；y:" + iArr[1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void backToNormal() {
        ViewGroup viewGroup = getViewGroup();
        View findViewById = viewGroup.findViewById(getFullId());
        if (findViewById != null) {
            GSYVideoPlayer gSYVideoPlayer = (GSYVideoPlayer) findViewById;
            pauseFullBackCoverLogic(gSYVideoPlayer);
            if (this.mShowFullAnimation) {
                TransitionManager.beginDelayedTransition(viewGroup);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYVideoPlayer.getLayoutParams();
                int[] iArr = this.mListItemRect;
                layoutParams.setMargins(iArr[0], iArr[1], 0, 0);
                int[] iArr2 = this.mListItemSize;
                layoutParams.width = iArr2[0];
                layoutParams.height = iArr2[1];
                layoutParams.gravity = 0;
                gSYVideoPlayer.setLayoutParams(layoutParams);
                this.mInnerHandler.postDelayed(new d(findViewById, viewGroup, gSYVideoPlayer), 400L);
                return;
            }
            resolveNormalVideoShow(findViewById, viewGroup, gSYVideoPlayer);
            return;
        }
        resolveNormalVideoShow(null, viewGroup, null);
    }

    protected void checkAutoFullSizeWhenFull() {
        o oVar;
        if (this.mIfCurrentIsFullscreen) {
            boolean isVerticalFullByVideoSize = isVerticalFullByVideoSize();
            com.papa.gsyvideoplayer.utils.c.h("GSYVideoBase onPrepared isVerticalFullByVideoSize " + isVerticalFullByVideoSize);
            if (!isVerticalFullByVideoSize || (oVar = this.mOrientationUtils) == null) {
                return;
            }
            oVar.q();
            checkAutoFullWithSizeAndAdaptation(this);
        }
    }

    protected void checkAutoFullWithSizeAndAdaptation(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        if (gSYBaseVideoPlayer != null && this.isNeedAutoAdaptation && isAutoFullWithSize() && isVerticalVideo() && isFullHideStatusBar()) {
            this.mInnerHandler.postDelayed(new i(gSYBaseVideoPlayer), 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkoutState() {
        removeCallbacks(this.mCheckoutTask);
        this.mInnerHandler.postDelayed(this.mCheckoutTask, 500L);
    }

    protected void clearFullscreenLayout() {
        int i2;
        if (this.mFullAnimEnd) {
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
            View findViewById = getViewGroup().findViewById(getFullId());
            if (findViewById != null) {
                ((GSYVideoPlayer) findViewById).mIfCurrentIsFullscreen = false;
            }
            this.mInnerHandler.postDelayed(new c(), i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        gSYBaseVideoPlayer2.mHadPlay = gSYBaseVideoPlayer.mHadPlay;
        gSYBaseVideoPlayer2.mPlayTag = gSYBaseVideoPlayer.mPlayTag;
        gSYBaseVideoPlayer2.mPlayPosition = gSYBaseVideoPlayer.mPlayPosition;
        gSYBaseVideoPlayer2.mEffectFilter = gSYBaseVideoPlayer.mEffectFilter;
        gSYBaseVideoPlayer2.mFullPauseBitmap = gSYBaseVideoPlayer.mFullPauseBitmap;
        gSYBaseVideoPlayer2.mNeedShowWifiTip = gSYBaseVideoPlayer.mNeedShowWifiTip;
        gSYBaseVideoPlayer2.mShrinkImageRes = gSYBaseVideoPlayer.mShrinkImageRes;
        gSYBaseVideoPlayer2.mEnlargeImageRes = gSYBaseVideoPlayer.mEnlargeImageRes;
        gSYBaseVideoPlayer2.mRotate = gSYBaseVideoPlayer.mRotate;
        gSYBaseVideoPlayer2.mShowPauseCover = gSYBaseVideoPlayer.mShowPauseCover;
        gSYBaseVideoPlayer2.mDismissControlTime = gSYBaseVideoPlayer.mDismissControlTime;
        gSYBaseVideoPlayer2.mSeekRatio = gSYBaseVideoPlayer.mSeekRatio;
        gSYBaseVideoPlayer2.mNetChanged = gSYBaseVideoPlayer.mNetChanged;
        gSYBaseVideoPlayer2.mNetSate = gSYBaseVideoPlayer.mNetSate;
        gSYBaseVideoPlayer2.mRotateWithSystem = gSYBaseVideoPlayer.mRotateWithSystem;
        gSYBaseVideoPlayer2.mBackUpPlayingBufferState = gSYBaseVideoPlayer.mBackUpPlayingBufferState;
        gSYBaseVideoPlayer2.mRenderer = gSYBaseVideoPlayer.mRenderer;
        gSYBaseVideoPlayer2.mMode = gSYBaseVideoPlayer.mMode;
        gSYBaseVideoPlayer2.mBackFromFullScreenListener = gSYBaseVideoPlayer.mBackFromFullScreenListener;
        gSYBaseVideoPlayer2.mGSYVideoProgressListener = gSYBaseVideoPlayer.mGSYVideoProgressListener;
        gSYBaseVideoPlayer2.mHadPrepared = gSYBaseVideoPlayer.mHadPrepared;
        gSYBaseVideoPlayer2.mStartAfterPrepared = gSYBaseVideoPlayer.mStartAfterPrepared;
        gSYBaseVideoPlayer2.mPauseBeforePrepared = gSYBaseVideoPlayer.mPauseBeforePrepared;
        gSYBaseVideoPlayer2.mReleaseWhenLossAudio = gSYBaseVideoPlayer.mReleaseWhenLossAudio;
        gSYBaseVideoPlayer2.mVideoAllCallBack = gSYBaseVideoPlayer.mVideoAllCallBack;
        gSYBaseVideoPlayer2.mActionBar = gSYBaseVideoPlayer.mActionBar;
        gSYBaseVideoPlayer2.mStatusBar = gSYBaseVideoPlayer.mStatusBar;
        gSYBaseVideoPlayer2.mAutoFullWithSize = gSYBaseVideoPlayer.mAutoFullWithSize;
        gSYBaseVideoPlayer2.mOverrideExtension = gSYBaseVideoPlayer.mOverrideExtension;
        if (gSYBaseVideoPlayer.mSetUpLazy) {
            gSYBaseVideoPlayer2.setUpLazy(gSYBaseVideoPlayer.mOriginUrl, gSYBaseVideoPlayer.mCache, gSYBaseVideoPlayer.mCachePath, gSYBaseVideoPlayer.mMapHeadData, gSYBaseVideoPlayer.mTitle);
            gSYBaseVideoPlayer2.mUrl = gSYBaseVideoPlayer.mUrl;
        } else {
            gSYBaseVideoPlayer2.setUp(gSYBaseVideoPlayer.mOriginUrl, gSYBaseVideoPlayer.mCache, gSYBaseVideoPlayer.mCachePath, gSYBaseVideoPlayer.mMapHeadData, gSYBaseVideoPlayer.mTitle);
        }
        gSYBaseVideoPlayer2.setLooping(gSYBaseVideoPlayer.isLooping());
        gSYBaseVideoPlayer2.setIsTouchWigetFull(gSYBaseVideoPlayer.mIsTouchWigetFull);
        gSYBaseVideoPlayer2.setSpeed(gSYBaseVideoPlayer.getSpeed(), gSYBaseVideoPlayer.mSoundTouch);
        gSYBaseVideoPlayer2.setStateAndUi(gSYBaseVideoPlayer.mCurrentState);
    }

    public GSYBaseVideoPlayer getCurrentPlayer() {
        if (getFullWindowPlayer() != null) {
            return getFullWindowPlayer();
        }
        return getSmallWindowPlayer() != null ? getSmallWindowPlayer() : this;
    }

    protected abstract int getFullId();

    public GSYVideoPlayer getFullWindowPlayer() {
        View findViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(getContext()).findViewById(16908290)).findViewById(getFullId());
        if (findViewById != null) {
            return (GSYVideoPlayer) findViewById;
        }
        return null;
    }

    public n getOrientationOption() {
        return null;
    }

    public int getSaveBeforeFullSystemUiVisibility() {
        return this.mSystemUiVisibility;
    }

    protected abstract int getSmallId();

    public GSYVideoPlayer getSmallWindowPlayer() {
        View findViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(getContext()).findViewById(16908290)).findViewById(getSmallId());
        if (findViewById != null) {
            return (GSYVideoPlayer) findViewById;
        }
        return null;
    }

    public void hideSmallVideo() {
        ViewGroup viewGroup = getViewGroup();
        GSYVideoPlayer gSYVideoPlayer = (GSYVideoPlayer) viewGroup.findViewById(getSmallId());
        removeVideo(viewGroup, getSmallId());
        this.mCurrentState = getGSYVideoManager().l();
        if (gSYVideoPlayer != null) {
            cloneParams(gSYVideoPlayer, this);
        }
        getGSYVideoManager().p(getGSYVideoManager().r());
        getGSYVideoManager().i(null);
        setStateAndUi(this.mCurrentState);
        addTextureView();
        this.mSaveChangeViewTIme = System.currentTimeMillis();
        if (this.mVideoAllCallBack != null) {
            com.papa.gsyvideoplayer.utils.c.h("onQuitSmallWidget");
            this.mVideoAllCallBack.T(this.mOriginUrl, this.mTitle, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        super.init(context);
        this.mSmallClose = findViewById(R.id.small_close);
    }

    public boolean isAutoFullWithSize() {
        return this.mAutoFullWithSize;
    }

    public boolean isFullHideActionBar() {
        return this.mActionBar;
    }

    public boolean isFullHideStatusBar() {
        return this.mStatusBar;
    }

    public boolean isLockLand() {
        return this.mLockLand;
    }

    protected boolean isLockLandByAutoFullSize() {
        boolean z3 = this.mLockLand;
        if (isAutoFullWithSize()) {
            return true;
        }
        return z3;
    }

    public boolean isNeedAutoAdaptation() {
        return this.isNeedAutoAdaptation;
    }

    public boolean isOnlyRotateLand() {
        return this.mIsOnlyRotateLand;
    }

    public boolean isRotateViewAuto() {
        if (this.mAutoFullWithSize) {
            return false;
        }
        return this.mRotateViewAuto;
    }

    public boolean isRotateWithSystem() {
        return this.mRotateWithSystem;
    }

    public boolean isShowFullAnimation() {
        return this.mShowFullAnimation;
    }

    public boolean isVerticalFullByVideoSize() {
        return isVerticalVideo() && isAutoFullWithSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isVerticalVideo() {
        int currentVideoHeight = getCurrentVideoHeight();
        int currentVideoWidth = getCurrentVideoWidth();
        com.papa.gsyvideoplayer.utils.c.h("GSYVideoBase isVerticalVideo  videoHeight " + currentVideoHeight + " videoWidth " + currentVideoWidth);
        StringBuilder sb = new StringBuilder();
        sb.append("GSYVideoBase isVerticalVideo  mRotate ");
        sb.append(this.mRotate);
        com.papa.gsyvideoplayer.utils.c.h(sb.toString());
        if (currentVideoHeight <= 0 || currentVideoWidth <= 0) {
            return false;
        }
        int i2 = this.mRotate;
        if (i2 == 90 || i2 == 270) {
            if (currentVideoWidth <= currentVideoHeight) {
                return false;
            }
        } else if (currentVideoHeight <= currentVideoWidth) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void lockTouchLogic() {
        super.lockTouchLogic();
        if (!this.mLockCurScreen) {
            o oVar = this.mOrientationUtils;
            if (oVar != null) {
                oVar.I(isRotateViewAuto());
                return;
            }
            return;
        }
        o oVar2 = this.mOrientationUtils;
        if (oVar2 != null) {
            oVar2.I(false);
        }
    }

    @Override // c2.a
    public void onBackFullscreen() {
        clearFullscreenLayout();
    }

    public void onConfigurationChanged(Activity activity, Configuration configuration, o oVar) {
        onConfigurationChanged(activity, configuration, oVar, true, true);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onInfo(int i2, int i4) {
        super.onInfo(i2, i4);
        if (i2 == getGSYVideoManager().t()) {
            checkAutoFullSizeWhenFull();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onPrepared() {
        super.onPrepared();
        checkAutoFullSizeWhenFull();
    }

    protected void resolveFullVideoShow(Context context, GSYBaseVideoPlayer gSYBaseVideoPlayer, FrameLayout frameLayout) {
        o oVar;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYBaseVideoPlayer.getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 17;
        gSYBaseVideoPlayer.setLayoutParams(layoutParams);
        gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
        o oVar2 = new o((Activity) context, gSYBaseVideoPlayer, getOrientationOption());
        this.mOrientationUtils = oVar2;
        oVar2.I(isRotateViewAuto());
        this.mOrientationUtils.O(this.mRotateWithSystem);
        this.mOrientationUtils.L(this.mIsOnlyRotateLand);
        gSYBaseVideoPlayer.mOrientationUtils = this.mOrientationUtils;
        boolean isVerticalFullByVideoSize = isVerticalFullByVideoSize();
        boolean isLockLandByAutoFullSize = isLockLandByAutoFullSize();
        if (isShowFullAnimation()) {
            this.mInnerHandler.postDelayed(new b(isVerticalFullByVideoSize, isLockLandByAutoFullSize, gSYBaseVideoPlayer, frameLayout), 300L);
        } else {
            if (!isVerticalFullByVideoSize && isLockLandByAutoFullSize && (oVar = this.mOrientationUtils) != null) {
                oVar.E();
            }
            gSYBaseVideoPlayer.setVisibility(0);
            frameLayout.setVisibility(0);
        }
        if (this.mVideoAllCallBack != null) {
            com.papa.gsyvideoplayer.utils.c.e("onEnterFullscreen");
            this.mVideoAllCallBack.t0(this.mOriginUrl, this.mTitle, gSYBaseVideoPlayer);
        }
        this.mIfCurrentIsFullscreen = true;
        checkoutState();
        checkAutoFullWithSizeAndAdaptation(gSYBaseVideoPlayer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resolveNormalVideoShow(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
        if (view != null && view.getParent() != null) {
            viewGroup.removeView((ViewGroup) view.getParent());
        }
        this.mCurrentState = getGSYVideoManager().l();
        if (gSYVideoPlayer != null) {
            cloneParams(gSYVideoPlayer, this);
        }
        int i2 = this.mCurrentState;
        if (i2 != 0 || i2 != 6) {
            createNetWorkState();
        }
        getGSYVideoManager().p(getGSYVideoManager().r());
        getGSYVideoManager().i(null);
        setStateAndUi(this.mCurrentState);
        addTextureView();
        this.mSaveChangeViewTIme = System.currentTimeMillis();
        if (this.mVideoAllCallBack != null) {
            com.papa.gsyvideoplayer.utils.c.e("onQuitFullscreen");
            this.mVideoAllCallBack.y(this.mOriginUrl, this.mTitle, this);
        }
        this.mIfCurrentIsFullscreen = false;
        if (this.mHideKey) {
            com.papa.gsyvideoplayer.utils.b.p(this.mContext, this.mSystemUiVisibility);
        }
        com.papa.gsyvideoplayer.utils.b.q(this.mContext, this.mActionBar, this.mStatusBar);
        if (getFullscreenButton() != null) {
            getFullscreenButton().setImageResource(getEnlargeImageRes());
        }
    }

    public void setAutoFullWithSize(boolean z3) {
        this.mAutoFullWithSize = z3;
    }

    public void setBackFromFullScreenListener(View.OnClickListener onClickListener) {
        this.mBackFromFullScreenListener = onClickListener;
    }

    public void setFullHideActionBar(boolean z3) {
        this.mActionBar = z3;
    }

    public void setFullHideStatusBar(boolean z3) {
        this.mStatusBar = z3;
    }

    public void setLockLand(boolean z3) {
        this.mLockLand = z3;
    }

    public void setNeedAutoAdaptation(boolean z3) {
        this.isNeedAutoAdaptation = z3;
    }

    public void setOnlyRotateLand(boolean z3) {
        this.mIsOnlyRotateLand = z3;
        o oVar = this.mOrientationUtils;
        if (oVar != null) {
            oVar.L(z3);
        }
    }

    public void setRotateViewAuto(boolean z3) {
        this.mRotateViewAuto = z3;
        o oVar = this.mOrientationUtils;
        if (oVar != null) {
            oVar.I(z3);
        }
    }

    public void setRotateWithSystem(boolean z3) {
        this.mRotateWithSystem = z3;
        o oVar = this.mOrientationUtils;
        if (oVar != null) {
            oVar.O(z3);
        }
    }

    public void setSaveBeforeFullSystemUiVisibility(int i2) {
        this.mSystemUiVisibility = i2;
    }

    public void setShowFullAnimation(boolean z3) {
        this.mShowFullAnimation = z3;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    protected void setSmallVideoTextureView() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setOnTouchListener(null);
            this.mProgressBar.setVisibility(4);
        }
        ImageView imageView = this.mFullscreenButton;
        if (imageView != null) {
            imageView.setOnTouchListener(null);
            this.mFullscreenButton.setVisibility(4);
        }
        TextView textView = this.mCurrentTimeTextView;
        if (textView != null) {
            textView.setVisibility(4);
        }
        ViewGroup viewGroup = this.mTextureViewContainer;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(null);
        }
        View view = this.mSmallClose;
        if (view != null) {
            view.setVisibility(0);
            this.mSmallClose.setOnClickListener(new a());
        }
    }

    public GSYBaseVideoPlayer showSmallVideo(Point point, boolean z3, boolean z4) {
        ViewGroup viewGroup = getViewGroup();
        removeVideo(viewGroup, getSmallId());
        if (this.mTextureViewContainer.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        try {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = (GSYBaseVideoPlayer) getClass().getConstructor(Context.class).newInstance(getActivityContext());
            gSYBaseVideoPlayer.setId(getSmallId());
            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            FrameLayout frameLayout = new FrameLayout(this.mContext);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(point.x, point.y);
            int h4 = com.papa.gsyvideoplayer.utils.b.h(this.mContext) - point.x;
            int g4 = com.papa.gsyvideoplayer.utils.b.g(this.mContext) - point.y;
            if (z3) {
                g4 -= com.papa.gsyvideoplayer.utils.b.c((Activity) this.mContext);
            }
            if (z4) {
                g4 -= com.papa.gsyvideoplayer.utils.b.i(this.mContext);
            }
            layoutParams2.setMargins(h4, g4, 0, 0);
            frameLayout.addView(gSYBaseVideoPlayer, layoutParams2);
            viewGroup.addView(frameLayout, layoutParams);
            cloneParams(this, gSYBaseVideoPlayer);
            gSYBaseVideoPlayer.setIsTouchWiget(false);
            gSYBaseVideoPlayer.addTextureView();
            gSYBaseVideoPlayer.onClickUiToggle();
            gSYBaseVideoPlayer.setVideoAllCallBack(this.mVideoAllCallBack);
            gSYBaseVideoPlayer.setSmallVideoTextureView(new e2.a(gSYBaseVideoPlayer, h4, g4));
            getGSYVideoManager().i(this);
            getGSYVideoManager().p(gSYBaseVideoPlayer);
            if (this.mVideoAllCallBack != null) {
                com.papa.gsyvideoplayer.utils.c.e("onEnterSmallWidget");
                this.mVideoAllCallBack.i(this.mOriginUrl, this.mTitle, gSYBaseVideoPlayer);
            }
            return gSYBaseVideoPlayer;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z3, boolean z4) {
        boolean z5;
        this.mSystemUiVisibility = ((Activity) context).getWindow().getDecorView().getSystemUiVisibility();
        com.papa.gsyvideoplayer.utils.b.l(context, z3, z4);
        if (this.mHideKey) {
            com.papa.gsyvideoplayer.utils.b.k(context);
        }
        this.mActionBar = z3;
        this.mStatusBar = z4;
        this.mListItemRect = new int[2];
        this.mListItemSize = new int[2];
        ViewGroup viewGroup = getViewGroup();
        removeVideo(viewGroup, getFullId());
        pauseFullCoverLogic();
        if (this.mTextureViewContainer.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        saveLocationStatus(context, z4, z3);
        cancelProgressTimer();
        try {
            getClass().getConstructor(Context.class, Boolean.class);
            z5 = true;
        } catch (Exception unused) {
            z5 = false;
        }
        try {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = !z5 ? (GSYBaseVideoPlayer) getClass().getConstructor(Context.class).newInstance(this.mContext) : (GSYBaseVideoPlayer) getClass().getConstructor(Context.class, Boolean.class).newInstance(this.mContext, Boolean.TRUE);
            gSYBaseVideoPlayer.setId(getFullId());
            gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
            gSYBaseVideoPlayer.setVideoAllCallBack(this.mVideoAllCallBack);
            cloneParams(this, gSYBaseVideoPlayer);
            if (gSYBaseVideoPlayer.getFullscreenButton() != null) {
                gSYBaseVideoPlayer.getFullscreenButton().setImageResource(getShrinkImageRes());
                gSYBaseVideoPlayer.getFullscreenButton().setOnClickListener(new f());
            }
            if (gSYBaseVideoPlayer.getBackButton() != null) {
                gSYBaseVideoPlayer.getBackButton().setVisibility(0);
                gSYBaseVideoPlayer.getBackButton().setOnClickListener(new g());
            }
            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackgroundColor(-16777216);
            if (this.mShowFullAnimation) {
                this.mFullAnimEnd = false;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(getWidth(), getHeight());
                int[] iArr = this.mListItemRect;
                layoutParams2.setMargins(iArr[0], iArr[1], 0, 0);
                frameLayout.addView(gSYBaseVideoPlayer, layoutParams2);
                viewGroup.addView(frameLayout, layoutParams);
                this.mInnerHandler.postDelayed(new h(viewGroup, context, gSYBaseVideoPlayer, frameLayout), 300L);
            } else {
                frameLayout.addView(gSYBaseVideoPlayer, new FrameLayout.LayoutParams(getWidth(), getHeight()));
                viewGroup.addView(frameLayout, layoutParams);
                gSYBaseVideoPlayer.setVisibility(4);
                frameLayout.setVisibility(4);
                resolveFullVideoShow(context, gSYBaseVideoPlayer, frameLayout);
            }
            gSYBaseVideoPlayer.addTextureView();
            gSYBaseVideoPlayer.startProgressTimer();
            getGSYVideoManager().i(this);
            getGSYVideoManager().p(gSYBaseVideoPlayer);
            checkoutState();
            return gSYBaseVideoPlayer;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public void onConfigurationChanged(Activity activity, Configuration configuration, o oVar, boolean z3, boolean z4) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            if (isIfCurrentIsFullscreen()) {
                return;
            }
            startWindowFullscreen(activity, z3, z4);
            return;
        }
        if (isIfCurrentIsFullscreen() && !isVerticalFullByVideoSize()) {
            backFromFull(activity);
        }
        if (oVar != null) {
            oVar.I(true);
        }
    }

    public GSYBaseVideoPlayer(Context context) {
        super(context);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mIsOnlyRotateLand = false;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new e();
    }

    public GSYBaseVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mIsOnlyRotateLand = false;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new e();
    }

    public GSYBaseVideoPlayer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mIsOnlyRotateLand = false;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new e();
    }
}
