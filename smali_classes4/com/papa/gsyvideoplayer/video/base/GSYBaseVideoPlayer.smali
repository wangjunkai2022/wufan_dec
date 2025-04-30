.class public abstract Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
.super Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;
.source "GSYBaseVideoPlayer.java"


# instance fields
.field protected isNeedAutoAdaptation:Z

.field protected mActionBar:Z

.field protected mAutoFullWithSize:Z

.field protected mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

.field protected mCheckoutTask:Ljava/lang/Runnable;

.field protected mFullAnimEnd:Z

.field protected mInnerHandler:Landroid/os/Handler;

.field private mIsOnlyRotateLand:Z

.field protected mListItemRect:[I

.field protected mListItemSize:[I

.field protected mLockLand:Z

.field protected mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

.field protected mRotateViewAuto:Z

.field protected mRotateWithSystem:Z

.field protected mShowFullAnimation:Z

.field protected mSmallClose:Landroid/view/View;

.field protected mStatusBar:Z

.field protected mSystemUiVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 16
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 18
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 19
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 20
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 21
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 22
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 23
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 24
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 26
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 29
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 31
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 32
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 33
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 34
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 35
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 36
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 37
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 39
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 42
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 43
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 44
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 45
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 46
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 47
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 48
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 49
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 50
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 52
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 3
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 5
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 6
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 7
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 8
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 9
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 10
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 11
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 13
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method private getViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private pauseFullBackCoverLogic(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private pauseFullCoverLogic()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private removeVideo(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private saveLocationStatus(Landroid/content/Context;ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->i(Landroid/content/Context;)I

    move-result v0

    .line 4
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->c(Landroid/app/Activity;)I

    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*************isTranslucent*************** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget p2, p1, v2

    sub-int/2addr p2, v0

    aput p2, p1, v2

    :cond_1
    if-eqz p3, :cond_2

    .line 8
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget p2, p1, v2

    sub-int/2addr p2, v3

    aput p2, p1, v2

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    aput p2, p1, v1

    .line 10
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    aput p2, p1, v2

    return-void
.end method


# virtual methods
.method protected autoAdaptation()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 4
    aget v3, v1, v2

    if-nez v3, :cond_0

    .line 5
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->i(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const-string v0, "\u7ad6\u5c4f\uff0c\u7cfb\u7edf\u672a\u5c06\u5e03\u5c40\u4e0b\u79fb"

    .line 6
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ad6\u5c4f\uff0c\u7cfb\u7edf\u5c06\u5e03\u5c40\u4e0b\u79fb\uff1by:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected backToNormal()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    move-object v2, v1

    check-cast v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 4
    invoke-direct {p0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->pauseFullBackCoverLogic(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 5
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 7
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-virtual {v3, v6, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 9
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    aget v6, v4, v5

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 10
    aget v4, v4, v7

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 11
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    new-instance v4, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    const-wide/16 v0, 0x190

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    :goto_0
    return-void
.end method

.method protected checkAutoFullSizeWhenFull()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSYVideoBase onPrepared isVerticalFullByVideoSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    .line 6
    invoke-virtual {p0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullWithSizeAndAdaptation(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    :cond_0
    return-void
.end method

.method protected checkAutoFullWithSizeAndAdaptation(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isFullHideStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$i;

    invoke-direct {v1, p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$i;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected checkoutState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected clearFullscreenLayout()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v2, v0}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 6
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/o;->D()V

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 12
    check-cast v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 13
    iput-boolean v0, v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$c;

    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$c;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 2
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 3
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 4
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 5
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 6
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 7
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 8
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    .line 9
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    .line 10
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 11
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    .line 12
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    .line 13
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 14
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 15
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 16
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 17
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRenderer:Lcom/papa/gsyvideoplayer/render/glrender/a;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRenderer:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 18
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    .line 19
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    .line 20
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lc2/d;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lc2/d;

    .line 21
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 22
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 23
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 24
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    .line 25
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    .line 26
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 27
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    .line 28
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 29
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    .line 30
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    iget-object v4, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v5, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 32
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_0
    iget-object v2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    iget-object v4, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v5, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isLooping()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setLooping(Z)V

    .line 35
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    invoke-virtual {p2, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWigetFull(Z)V

    .line 36
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getSpeed()F

    move-result v0

    iget-boolean v1, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    invoke-virtual {p2, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    .line 37
    iget p1, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    invoke-virtual {p2, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    return-void
.end method

.method public getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method

.method protected abstract getFullId()I
.end method

.method public getFullWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOrientationOption()Lcom/papa/gsyvideoplayer/utils/n;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSaveBeforeFullSystemUiVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    return v0
.end method

.method protected abstract getSmallId()I
.end method

.method public getSmallWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hideSmallVideo()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeVideo(Landroid/view/ViewGroup;I)V

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->l()I

    move-result v0

    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/papa/gsyvideoplayer/video/base/a;->r()Lc2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->p(Lc2/a;)V

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->i(Lc2/a;)V

    .line 8
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz v0, :cond_1

    const-string v0, "onQuitSmallWidget"

    .line 12
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lc2/h;->T(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->init(Landroid/content/Context;)V

    .line 2
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->small_close:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    return-void
.end method

.method public isAutoFullWithSize()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    return v0
.end method

.method public isFullHideActionBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    return v0
.end method

.method public isFullHideStatusBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    return v0
.end method

.method public isLockLand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    return v0
.end method

.method protected isLockLandByAutoFullSize()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNeedAutoAdaptation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    return v0
.end method

.method public isOnlyRotateLand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    return v0
.end method

.method public isRotateViewAuto()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    return v0
.end method

.method public isRotateWithSystem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    return v0
.end method

.method public isShowFullAnimation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    return v0
.end method

.method public isVerticalFullByVideoSize()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isVerticalVideo()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentVideoHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentVideoWidth()I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSYVideoBase isVerticalVideo  videoHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " videoWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSYVideoBase isVerticalVideo  mRotate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 5
    iget v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    const/16 v4, 0x5a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method protected lockTouchLogic()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isRotateViewAuto()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackFullscreen()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->clearFullscreenLayout()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/o;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/o;ZZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/o;ZZ)V
    .locals 1

    .line 2
    invoke-super {p0, p2}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p0, p1, p4, p5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->backFromFull(Landroid/content/Context;)Z

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p3, p1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInfo(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onInfo(II)V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p2

    invoke-interface {p2}, Lcom/papa/gsyvideoplayer/video/base/a;->t()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullSizeWhenFull()V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onPrepared()V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullSizeWhenFull()V

    return-void
.end method

.method protected resolveFullVideoShow(Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x11

    .line 5
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p2, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 8
    new-instance v2, Lcom/papa/gsyvideoplayer/utils/o;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getOrientationOption()Lcom/papa/gsyvideoplayer/utils/n;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Lcom/papa/gsyvideoplayer/utils/o;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/n;)V

    iput-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isRotateViewAuto()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 10
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    invoke-virtual {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->O(Z)V

    .line 11
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    invoke-virtual {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->L(Z)V

    .line 12
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    iput-object p1, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    .line 13
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v4

    .line 14
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isLockLandByAutoFullSize()Z

    move-result v5

    .line 15
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isShowFullAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    new-instance v8, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;

    move-object v2, v8

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;ZZLcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    .line 17
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/o;->E()V

    .line 19
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz p1, :cond_2

    const-string p1, "onEnterFullscreen"

    .line 22
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v3, v2, v1

    aput-object p2, v2, v0

    invoke-interface {p1, p3, v2}, Lc2/h;->t0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 25
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V

    .line 26
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullWithSizeAndAdaptation(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method protected resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/video/base/a;->l()I

    move-result p1

    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0, p3, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 6
    :cond_1
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-nez p1, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->createNetWorkState()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p2

    invoke-interface {p2}, Lcom/papa/gsyvideoplayer/video/base/a;->r()Lc2/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->p(Lc2/a;)V

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->i(Lc2/a;)V

    .line 10
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 11
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 13
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const-string p1, "onQuitFullscreen"

    .line 14
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v1, v0, p2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-interface {p1, p3, v0}, Lc2/h;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :cond_4
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 17
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    invoke-static {p1, p2}, Lcom/papa/gsyvideoplayer/utils/b;->p(Landroid/content/Context;I)V

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    iget-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    invoke-static {p1, p2, p3}, Lcom/papa/gsyvideoplayer/utils/b;->q(Landroid/content/Context;ZZ)V

    .line 20
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    return-void
.end method

.method public setAutoFullWithSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    return-void
.end method

.method public setBackFromFullScreenListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setFullHideActionBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    return-void
.end method

.method public setFullHideStatusBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    return-void
.end method

.method public setLockLand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    return-void
.end method

.method public setNeedAutoAdaptation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    return-void
.end method

.method public setOnlyRotateLand(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/utils/o;->L(Z)V

    :cond_0
    return-void
.end method

.method public setRotateViewAuto(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    :cond_0
    return-void
.end method

.method public setRotateWithSystem(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/utils/o;->O(Z)V

    :cond_0
    return-void
.end method

.method public setSaveBeforeFullSystemUiVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    return-void
.end method

.method public setShowFullAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    return-void
.end method

.method protected setSmallVideoTextureView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    new-instance v1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeVideo(Landroid/view/ViewGroup;I)V

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 8
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p1, Landroid/graphics/Point;->x:I

    iget v8, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    iget-object v7, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/papa/gsyvideoplayer/utils/b;->h(Landroid/content/Context;)I

    move-result v7

    iget v8, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    .line 12
    iget-object v8, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/papa/gsyvideoplayer/utils/b;->g(Landroid/content/Context;)I

    move-result v8

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, p1

    if-eqz p2, :cond_1

    .line 13
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->c(Landroid/app/Activity;)I

    move-result p1

    sub-int/2addr v8, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 14
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->i(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v8, p1

    .line 15
    :cond_2
    invoke-virtual {v6, v7, v8, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 16
    invoke-virtual {v4, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {p0, p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 19
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 20
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 21
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    .line 22
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    invoke-virtual {v1, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lc2/h;)V

    .line 23
    new-instance p1, Le2/a;

    invoke-direct {p1, v1, v7, v8}, Le2/a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;II)V

    invoke-virtual {v1, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/a;->i(Lc2/a;)V

    .line 25
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->p(Lc2/a;)V

    .line 26
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    if-eqz p1, :cond_3

    const-string p1, "onEnterSmallWidget"

    .line 27
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v0, p3, v5

    aput-object v1, p3, v2

    invoke-interface {p1, p2, p3}, Lc2/h;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 9

    .line 1
    const-class v0, Ljava/lang/Boolean;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    iput v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    .line 2
    invoke-static {p1, p2, p3}, Lcom/papa/gsyvideoplayer/utils/b;->l(Landroid/content/Context;ZZ)V

    .line 3
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 5
    :cond_0
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 6
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 7
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    new-array v2, v1, [I

    .line 8
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    .line 9
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    .line 10
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v2

    invoke-direct {p0, v5, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeVideo(Landroid/view/ViewGroup;I)V

    .line 11
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->pauseFullCoverLogic()V

    .line 12
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->saveLocationStatus(Landroid/content/Context;ZZ)V

    .line 15
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p3

    aput-object v0, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 17
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    aput-object v2, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p3

    aput-object v0, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    aput-object v2, v1, p3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 21
    :goto_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 22
    invoke-virtual {v0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 23
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lc2/h;)V

    .line 24
    invoke-virtual {p0, p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 25
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$f;

    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$f;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$g;

    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$g;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 32
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 33
    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 34
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-eqz v2, :cond_5

    .line 35
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 36
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget v4, v3, p3

    aget p2, v3, p2

    invoke-virtual {v2, v4, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 38
    invoke-virtual {v8, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {v5, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    new-instance p3, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;

    move-object v3, p3

    move-object v4, p0

    move-object v6, p1

    move-object v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 41
    :cond_5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-direct {p2, p3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    invoke-virtual {v8, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {v5, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x4

    .line 44
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 45
    invoke-virtual {v8, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 46
    invoke-virtual {p0, p1, v0, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveFullVideoShow(Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    .line 47
    :goto_2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 48
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 49
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/a;->i(Lc2/a;)V

    .line 50
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/a;->p(Lc2/a;)V

    .line 51
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
