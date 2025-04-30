.class public abstract Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;
.super Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;
.source "GSYVideoControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field dismissControlTask:Ljava/lang/Runnable;

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected isShowDragProgressTextOnSeekBar:Z

.field protected mBackButton:Landroid/widget/ImageView;

.field protected mBottomContainer:Landroid/view/ViewGroup;

.field protected mBottomProgressBar:Landroid/widget/ProgressBar;

.field protected mBrightness:Z

.field protected mBrightnessData:F

.field protected mChangePosition:Z

.field protected mChangeVolume:Z

.field protected mCurrentTimeTextView:Landroid/widget/TextView;

.field protected mDismissControlTime:I

.field protected mDownPosition:I

.field protected mDownX:F

.field protected mDownY:F

.field protected mEnlargeImageRes:I

.field protected mFirstTouch:Z

.field protected mFullscreenButton:Landroid/widget/ImageView;

.field protected mGSYVideoProgressListener:Lc2/d;

.field protected mGestureDownVolume:I

.field protected mHadSeekTouch:Z

.field protected mHideKey:Z

.field protected mIsTouchWiget:Z

.field protected mIsTouchWigetFull:Z

.field protected mLoadingProgressBar:Landroid/view/View;

.field protected mLockClickListener:Lc2/g;

.field protected mLockCurScreen:Z

.field protected mLockScreen:Landroid/widget/ImageView;

.field protected mMoveY:F

.field protected mNeedLockFull:Z

.field protected mNeedShowWifiTip:Z

.field protected mPostDismiss:Z

.field protected mPostProgress:Z

.field protected mProgressBar:Landroid/widget/SeekBar;

.field protected mSeekEndOffset:I

.field protected mSeekRatio:F

.field protected mSeekTimePosition:I

.field protected mSetUpLazy:Z

.field protected mShowVKey:Z

.field protected mShrinkImageRes:I

.field protected mStartButton:Landroid/view/View;

.field protected mThreshold:I

.field protected mThumbImageView:Landroid/view/View;

.field protected mThumbImageViewLayout:Landroid/widget/RelativeLayout;

.field protected mThumbPlay:Z

.field protected mTitleTextView:Landroid/widget/TextView;

.field protected mTopContainer:Landroid/view/ViewGroup;

.field protected mTotalTimeTextView:Landroid/widget/TextView;

.field protected mTouchingProgressBar:Z

.field progressTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x50

    .line 2
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 4
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 5
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 6
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 9
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 10
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 11
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 12
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 13
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 15
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 16
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 17
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 18
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 19
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 20
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 21
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 22
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 23
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 24
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 25
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x50

    .line 27
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 29
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 30
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 31
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 34
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 35
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 36
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 37
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 38
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 40
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 41
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 42
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 43
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 44
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 45
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 46
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 47
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 48
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 49
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 50
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x50

    .line 52
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 54
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 55
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 56
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 57
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 59
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 60
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 61
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 62
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 63
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 65
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 66
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 67
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 68
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 69
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 70
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 71
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 72
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 73
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;

    invoke-direct {p3, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 74
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 75
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/16 p1, 0x50

    .line 77
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 79
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 80
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 81
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 82
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 84
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 85
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 86
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 87
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 88
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 89
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 90
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 91
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 92
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 93
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 94
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 95
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 96
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 97
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 98
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 99
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 100
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected cancelDismissControlViewTimer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected cancelProgressTimer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract changeUiToCompleteShow()V
.end method

.method protected abstract changeUiToError()V
.end method

.method protected abstract changeUiToNormal()V
.end method

.method protected abstract changeUiToPauseShow()V
.end method

.method protected abstract changeUiToPlayingBufferingShow()V
.end method

.method protected abstract changeUiToPlayingShow()V
.end method

.method protected abstract changeUiToPreparingShow()V
.end method

.method public clearThumbImageView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method protected clickStartIcon()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/papa/gsyvideoplayer/R$string;->no_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz v0, :cond_8

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_2

    const-string v0, "onClickStopFullscreen"

    .line 9
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object p0, v4, v2

    invoke-interface {v0, v1, v4}, Lc2/h;->M(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    const-string v0, "onClickStop"

    .line 11
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object p0, v4, v2

    invoke-interface {v0, v1, v4}, Lc2/h;->B0(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    if-ne v0, v1, :cond_7

    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_4

    const-string v0, "onClickResumeFullscreen"

    .line 15
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object p0, v5, v2

    invoke-interface {v0, v1, v5}, Lc2/h;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v0, "onClickResume"

    .line 17
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object p0, v5, v2

    invoke-interface {v0, v1, v5}, Lc2/h;->z0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    if-nez v0, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    .line 21
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :goto_2
    invoke-virtual {p0, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    goto :goto_4

    :cond_7
    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 24
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startButtonLogic()V

    goto :goto_4

    .line 25
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowNetConfirm()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showWifiDialog()V

    return-void

    .line 27
    :cond_9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startButtonLogic()V

    :cond_a
    :goto_4
    return-void
.end method

.method protected abstract dismissBrightnessDialog()V
.end method

.method protected abstract dismissProgressDialog()V
.end method

.method protected abstract dismissVolumeDialog()V
.end method

.method public getBackButton()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDismissControlTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    return v0
.end method

.method public getEnlargeImageRes()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget v0, Lcom/papa/gsyvideoplayer/R$drawable;->video_enlarge:I

    :cond_0
    return v0
.end method

.method public getFullscreenButton()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSeekRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    return v0
.end method

.method public getShrinkImageRes()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget v0, Lcom/papa/gsyvideoplayer/R$drawable;->video_shrink:I

    :cond_0
    return v0
.end method

.method public getStartButton()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    return-object v0
.end method

.method public getThumbImageView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    return-object v0
.end method

.method public getThumbImageViewLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected abstract hideAllWidget()V
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    .line 2
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->start:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 3
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    .line 4
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->back:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    .line 5
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->fullscreen:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    .line 6
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->progress:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 7
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->current:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 8
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->total:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 9
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->layout_bottom:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 10
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->layout_top:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 11
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->bottom_progressbar:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 12
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->thumb:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 13
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->lock_screen:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 14
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->loading:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 26
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_6

    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    if-eqz p1, :cond_7

    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_8

    .line 34
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 35
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    .line 36
    :cond_8
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$a;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_a
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 42
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, Lcom/papa/gsyvideoplayer/utils/b;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    :cond_b
    return-void
.end method

.method public initUIState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    return-void
.end method

.method public isHideKey()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    return v0
.end method

.method public isNeedLockFull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    return v0
.end method

.method public isNeedShowWifiTip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    return v0
.end method

.method public isShowDragProgressTextOnSeekBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    return v0
.end method

.method protected isShowNetConfirm()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchWiget()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    return v0
.end method

.method public isTouchWigetFull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    return v0
.end method

.method protected lockTouchLogic()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    sget v1, Lcom/papa/gsyvideoplayer/R$drawable;->unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    sget v1, Lcom/papa/gsyvideoplayer/R$drawable;->lock:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    :goto_0
    return-void
.end method

.method protected loopSetProgressAndTime()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAutoCompletion()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAutoCompletion()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onBrightnessSlide(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const v1, 0x3c23d70a    # 0.01f

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 3
    iput v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    add-float/2addr v2, p1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v3, v2, p1

    if-lez v3, :cond_2

    .line 6
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    :cond_2
    cmpg-float p1, v2, v1

    if-gez p1, :cond_3

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 8
    :cond_3
    :goto_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showBrightnessDialog(F)V

    .line 9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;

    invoke-direct {v0, p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 4
    :cond_0
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->start:I

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    goto/16 :goto_1

    .line 6
    :cond_1
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->surface_container:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v0, :cond_3

    iget v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 7
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz p1, :cond_2

    const-string p1, "onClickStartError"

    .line 8
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    invoke-interface {p1, v0, v3}, Lc2/h;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->prepareVideo()V

    goto/16 :goto_1

    .line 11
    :cond_3
    sget v4, Lcom/papa/gsyvideoplayer/R$id;->thumb:I

    if-ne p1, v4, :cond_8

    .line 12
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    if-nez p1, :cond_4

    return-void

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "********"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/papa/gsyvideoplayer/R$string;->no_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_5
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-nez p1, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowNetConfirm()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showWifiDialog()V

    return-void

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startPlayLogic()V

    goto :goto_1

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    goto :goto_1

    :cond_8
    if-ne p1, v0, :cond_b

    .line 20
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 21
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_9

    const-string p1, "onClickBlankFullscreen"

    .line 22
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    invoke-interface {p1, v0, v3}, Lc2/h;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    const-string p1, "onClickBlank"

    .line 24
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    invoke-interface {p1, v0, v3}, Lc2/h;->b0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    :cond_b
    :goto_1
    return-void
.end method

.method protected abstract onClickUiToggle()V
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ dismiss onDetachedFromWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onError(II)V

    .line 2
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setTextAndProgress(IZ)V

    .line 2
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onPrepared()V

    .line 3
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ surface_container onPrepared"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showDragProgressTextOnSeekBar(ZI)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const-string v0, "onClickSeekbarFullscreen"

    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v1

    aput-object p0, v3, v2

    invoke-interface {v0, v4, v3}, Lc2/h;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "onClickSeekbar"

    .line 5
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v1

    aput-object p0, v3, v2

    invoke-interface {v0, v4, v3}, Lc2/h;->e0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz v0, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    move-result v0

    mul-int p1, p1, v0

    div-int/lit8 p1, p1, 0x64

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->j(Ljava/lang/String;)V

    .line 11
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    return v3

    .line 7
    :cond_0
    sget v2, Lcom/papa/gsyvideoplayer/R$id;->fullscreen:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    return v4

    .line 8
    :cond_1
    sget v2, Lcom/papa/gsyvideoplayer/R$id;->surface_container:I

    const/4 v5, 0x2

    if-ne p1, v2, :cond_9

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v5, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    sub-float/2addr v0, p1

    .line 11
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    sub-float p1, v1, p1

    .line 12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 14
    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v5, :cond_3

    iget-boolean v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    if-nez v6, :cond_4

    :cond_3
    iget-boolean v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    .line 15
    :cond_4
    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez v5, :cond_5

    .line 16
    invoke-virtual {p0, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    .line 17
    :cond_5
    invoke-virtual {p0, v0, p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMove(FFF)V

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceUp()V

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "------------------------------ surface_container ACTION_UP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 22
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    if-eqz p1, :cond_8

    return v3

    .line 23
    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceDown(FF)V

    .line 24
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    .line 25
    :cond_9
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->progress:I

    if-ne p1, v0, :cond_e

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v3, :cond_a

    if-eq p1, v5, :cond_d

    goto :goto_3

    .line 27
    :cond_a
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "------------------------------ progress ACTION_UP"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_b

    .line 31
    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 32
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1

    :cond_b
    const/high16 p1, -0x40800000    # -1.0f

    .line 33
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    goto :goto_3

    .line 34
    :cond_c
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 35
    :cond_d
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_e

    .line 37
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 38
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_2

    :cond_e
    :goto_3
    return v4
.end method

.method protected prepareVideo()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    move-object v1, p0

    invoke-super/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    return-void
.end method

.method protected resetProgressAndTime()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected resolveThumbImage(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected resolveUIState(I)V
    .locals 1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToError()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToCompleteShow()V

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPauseShow()V

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPlayingBufferingShow()V

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPlayingShow()V

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPreparingShow()V

    .line 10
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToNormal()V

    .line 12
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    :goto_0
    return-void
.end method

.method public setDismissControlTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    return-void
.end method

.method public setEnlargeImageRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    return-void
.end method

.method public setGSYVideoProgressListener(Lc2/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lc2/d;

    return-void
.end method

.method public setHideKey(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    return-void
.end method

.method public setIsTouchWiget(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    return-void
.end method

.method public setIsTouchWigetFull(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    return-void
.end method

.method public setLockClickListener(Lc2/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockClickListener:Lc2/g;

    return-void
.end method

.method public setNeedLockFull(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    return-void
.end method

.method public setNeedShowWifiTip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    return-void
.end method

.method protected setProgressAndTime(IIIIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lc2/d;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lc2/d;->a(IIII)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    if-eqz p5, :cond_4

    .line 6
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p2

    invoke-interface {p2}, Lcom/papa/gsyvideoplayer/video/base/a;->b()I

    move-result p2

    :cond_5
    const/16 v0, 0x5e

    if-le p2, v0, :cond_6

    const/16 p2, 0x64

    .line 9
    :cond_6
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-static {p4}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p3, :cond_7

    .line 11
    iget-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_7
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz p3, :cond_a

    if-nez p1, :cond_8

    if-eqz p5, :cond_9

    .line 13
    :cond_8
    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    :cond_9
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    :cond_a
    :goto_0
    return-void
.end method

.method protected setSecondaryProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_1
    return-void
.end method

.method public setSeekRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    return-void
.end method

.method public setShowDragProgressTextOnSeekBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    return-void
.end method

.method public setShrinkImageRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    return-void
.end method

.method protected setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method protected setStateAndUi(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eq p1, v2, :cond_1

    if-ne p1, v0, :cond_2

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 4
    :cond_2
    iget v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz v3, :cond_a

    const/4 v1, 0x1

    if-eq v3, v1, :cond_9

    const/4 v1, 0x2

    if-eq v3, v1, :cond_8

    const/4 v1, 0x5

    if-eq v3, v1, :cond_7

    if-eq v3, v2, :cond_4

    if-eq v3, v0, :cond_3

    goto/16 :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->z()V

    goto/16 :goto_0

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ dismiss CURRENT_STATE_AUTO_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 15
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ CURRENT_STATE_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    goto :goto_0

    .line 17
    :cond_8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "------------------------------ CURRENT_STATE_PLAYING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    goto :goto_0

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->resetProgressAndTime()V

    goto :goto_0

    .line 21
    :cond_a
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "------------------------------ dismiss CURRENT_STATE_NORMAL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 24
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->z()V

    .line 25
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releasePauseCover()V

    .line 26
    iput v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBufferPoint:I

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 28
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_b

    .line 29
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 30
    :cond_b
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseNetWorkState()V

    .line 31
    :cond_c
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->resolveUIState(I)V

    return-void
.end method

.method protected setTextAndProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setTextAndProgress(IZ)V

    return-void
.end method

.method protected setTextAndProgress(IZ)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    move-result v4

    mul-int/lit8 v0, v3, 0x64

    if-nez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    .line 4
    :goto_0
    div-int v1, v0, v1

    move-object v0, p0

    move v2, p1

    move v5, p2

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIIIZ)V

    return-void
.end method

.method public setThumbImageView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setThumbPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    return-void
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 2
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 3
    iput-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 5
    iput-object p5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    sub-long/2addr p4, v0

    const-wide/16 v0, 0x7d0

    cmp-long p2, p4, v0

    if-gez p2, :cond_0

    return p3

    :cond_0
    const-string p2, "waiting"

    .line 9
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 10
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return p1
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected abstract showBrightnessDialog(F)V
.end method

.method protected showDragProgressTextOnSeekBar(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    mul-int p2, p2, p1

    .line 4
    div-int/lit8 p2, p2, 0x64

    invoke-static {p2}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected abstract showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
.end method

.method protected abstract showVolumeDialog(FI)V
.end method

.method protected abstract showWifiDialog()V
.end method

.method protected startDismissControlViewTimer()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected startProgressTimer()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected touchDoubleUp()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    return-void
.end method

.method protected touchLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected touchSurfaceDown(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 2
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    .line 3
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mMoveY:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 6
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 7
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 8
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 9
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    return-void
.end method

.method protected touchSurfaceMove(FFF)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->f(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/b;->f(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_1
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    move-result v9

    .line 6
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    int-to-float p2, p2

    int-to-float p3, v9

    mul-float p3, p3, p1

    int-to-float v0, v0

    div-float/2addr p3, v0

    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    div-float/2addr p3, v0

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    if-le p2, v9, :cond_3

    .line 7
    iput v9, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 8
    :cond_3
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    invoke-static {p2}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {v9}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object v8

    .line 10
    iget v7, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V

    goto :goto_2

    .line 11
    :cond_4
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-eqz p1, :cond_5

    neg-float p1, p2

    .line 12
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    int-to-float v0, p2

    mul-float v0, v0, p1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v0, v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 13
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    add-int/2addr v5, v0

    invoke-virtual {v4, p3, v5, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 14
    iget p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    mul-int/lit8 p3, p3, 0x64

    div-int/2addr p3, p2

    int-to-float p2, p3

    mul-float v3, v3, p1

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float v3, v3, p3

    div-float/2addr v3, v2

    add-float/2addr p2, v3

    float-to-int p2, p2

    neg-float p1, p1

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showVolumeDialog(FI)V

    goto :goto_2

    .line 16
    :cond_5
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-eqz p1, :cond_6

    .line 17
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    neg-float p1, p2

    int-to-float p2, v2

    div-float/2addr p1, p2

    .line 18
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onBrightnessSlide(F)V

    .line 19
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    :cond_6
    :goto_2
    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->f(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_2

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_9

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 5
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float p2, p2

    const/4 v2, 0x1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->h(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    .line 7
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 8
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    move-result p1

    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    goto :goto_3

    .line 10
    :cond_3
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->g(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    .line 12
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 13
    :goto_1
    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    if-eqz p2, :cond_7

    .line 14
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v0, v0, v3

    cmpg-float p2, p2, v0

    if-gez p2, :cond_6

    if-eqz p1, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 15
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 16
    :cond_7
    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez p2, :cond_8

    .line 17
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 18
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    :cond_8
    xor-int/2addr p1, v2

    .line 19
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    :cond_9
    :goto_3
    return-void
.end method

.method protected touchSurfaceUp()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    move-result v0

    .line 3
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    mul-int/lit8 v2, v2, 0x64

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    div-int/2addr v2, v0

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissProgressDialog()V

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissVolumeDialog()V

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissBrightnessDialog()V

    .line 10
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eq v2, v3, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 11
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v2

    iget v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    int-to-long v4, v4

    invoke-interface {v2, v4, v5}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    move-result v2

    .line 14
    iget v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    mul-int/lit8 v4, v4, 0x64

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    div-int/2addr v4, v2

    .line 15
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "onTouchScreenSeekPosition"

    .line 18
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v0

    aput-object p0, v3, v1

    invoke-interface {v2, v4, v3}, Lc2/h;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_5
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-eqz v2, :cond_6

    .line 21
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "onTouchScreenSeekLight"

    .line 22
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v0

    aput-object p0, v3, v1

    invoke-interface {v2, v4, v3}, Lc2/h;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_6
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-eqz v2, :cond_7

    .line 25
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "onTouchScreenSeekVolume"

    .line 26
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v0

    aput-object p0, v3, v1

    invoke-interface {v2, v4, v3}, Lc2/h;->Z(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method
