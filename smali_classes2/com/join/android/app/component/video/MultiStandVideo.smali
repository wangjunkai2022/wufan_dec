.class public Lcom/join/android/app/component/video/MultiStandVideo;
.super Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "MultiStandVideo.java"


# static fields
.field private static final f:Ljava/lang/String; = "MultiStandVideo"

.field public static g:Z = true


# instance fields
.field public a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field c:Ljava/lang/String;

.field private d:I

.field protected e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/video/MultiStandVideo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic b(Lcom/join/android/app/component/video/MultiStandVideo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic c(Lcom/join/android/app/component/video/MultiStandVideo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic d(Lcom/join/android/app/component/video/MultiStandVideo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    return p0
.end method

.method static synthetic e(Lcom/join/android/app/component/video/MultiStandVideo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic f(Lcom/join/android/app/component/video/MultiStandVideo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic g(Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backToNormal()V

    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    return-void

    .line 6
    :cond_1
    :try_start_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x258

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 8
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9
    new-instance v1, Lcom/join/android/app/component/video/MultiStandVideo$b;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/video/MultiStandVideo$b;-><init>(Lcom/join/android/app/component/video/MultiStandVideo;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->changeTextureViewShowType()V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/a;->o()V

    :cond_2
    return-void
.end method

.method private l(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x258

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7
    new-instance v1, Lcom/join/android/app/component/video/MultiStandVideo$c;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/video/MultiStandVideo$c;-><init>(Lcom/join/android/app/component/video/MultiStandVideo;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected backFromFull(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getGSYVideoManager()Lcom/join/android/app/component/video/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getGSYVideoManager()Lcom/join/android/app/component/video/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/component/video/b;->c0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected changeUiToCompleteShow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->k()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:changeUiToCompleteShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected changeUiToError()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const-string v1, "    key:"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoPlayVideoMini:changeUiToError "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoPlayVideoMini:changeUiToError1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected changeUiToNormal()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MultiStandVideo;->e:Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->k()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:changeUiToNormal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected changeUiToPauseClear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseClear()V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:changeUiToPauseClear "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected changeUiToPauseShow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->k()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:changeUiToPauseShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected changeUiToPlayingBufferingClear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingClear()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:changeUiToPlayingBufferingClear "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:changeUiToPlayingBufferingShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected changeUiToPlayingClear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingClear()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:changeUiToPlayingClear "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/join/android/app/component/video/MultiStandVideo;->h(Landroid/view/View;)V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    sget-boolean v0, Lcom/join/android/app/component/video/MultiStandVideo;->g:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/MultiStandVideo;->setMute(Z)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MultiStandVideo;->e:Z

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 13
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:changeUiToPlayingShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected changeUiToPreparingShow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:changeUiToPreparingShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected clearFullscreenLayout()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/MultiStandVideo;->setMute(Z)V

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0712cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 6
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 8
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v2, v0}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 11
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/o;->D()V

    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 14
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getFullId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 17
    check-cast v2, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 18
    iput-boolean v0, v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    :cond_4
    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backToNormal()V

    goto :goto_1

    .line 20
    :cond_5
    new-instance v0, Lcom/join/android/app/component/video/MultiStandVideo$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MultiStandVideo$d;-><init>(Lcom/join/android/app/component/video/MultiStandVideo;)V

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method protected getFullId()I
    .locals 1

    const v0, 0x7f09031d

    return v0
.end method

.method public getGSYVideoManager()Lcom/join/android/app/component/video/b;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    invoke-static {v0, v1, v2}, Lcom/join/android/app/component/video/b;->d0(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/android/app/component/video/b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/c;->Q(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getGSYVideoManager()Lcom/join/android/app/component/video/b;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    const/16 v1, -0x16

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " used getKey() ******* PlayPosition never set. ********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " used getKey() ******* PlayTag never set. ********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiStandVideo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c05d6

    return v0
.end method

.method public getPos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    return v0
.end method

.method protected getSmallId()I
    .locals 1

    const v0, 0x7f09031e

    return v0
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:hideAllWidget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/MultiStandVideo;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->k()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/MultiStandVideo;->c:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xf

    invoke-static {p1, v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->K(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    const p1, 0x7f090ff0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090fef

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f090dd2

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 12
    :cond_3
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setThumbPlay(Z)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setShowPauseCover(Z)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedShowWifiTip(Z)V

    .line 15
    new-instance p1, Lcom/join/android/app/component/video/MultiStandVideo$a;

    invoke-direct {p1, p0}, Lcom/join/android/app/component/video/MultiStandVideo$a;-><init>(Lcom/join/android/app/component/video/MultiStandVideo;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 16
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090ff0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lc2/h;

    instance-of v0, p1, Ll1/n;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ll1/n;

    .line 5
    invoke-interface {p1}, Ll1/n;->d0()V

    :cond_0
    return-void
.end method

.method public onInfo(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onInfo(II)V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getGSYVideoManager()Lcom/join/android/app/component/video/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/c;->t()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->j()V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/join/android/app/component/video/MultiStandVideo;->g:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/MultiStandVideo;->setMute(Z)V

    .line 2
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onPrepared()V

    .line 3
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getGSYVideoManager()Lcom/join/android/app/component/video/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MultiStandVideo;->e:Z

    .line 2
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "autoPlayVideoMini:onStartTrackingTouch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "    key:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected releaseVideos()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getGSYVideoManager()Lcom/join/android/app/component/video/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v1

    invoke-interface {v1}, Lc2/a;->onCompletion()V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->z()V

    :cond_1
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/MultiStandVideo;->setMuteOnly(Z)V

    return-void
.end method

.method public setMuteOnly(Z)V
    .locals 3

    :try_start_0
    const-string v0, "setMuteOnly "

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getGSYVideoManager()Lcom/join/android/app/component/video/b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getGSYVideoManager()Lcom/join/android/app/component/video/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPos(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 2
    iget-object p2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    return-object p1
.end method

.method public startAfterPrepared()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:startAfterPrepared "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public startPlayLogic()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini:startPlayLogic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/MultiStandVideo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    .line 2
    move-object p2, p1

    check-cast p2, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 3
    iget-object p3, p0, Lcom/join/android/app/component/video/MultiStandVideo;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/join/android/app/component/video/MultiStandVideo;->i(Ljava/lang/String;)V

    .line 4
    iget p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startPlayLogic()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->getGSYVideoManager()Lcom/join/android/app/component/video/b;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p1, p3}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    :cond_1
    return-object p2
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    return-void
.end method

.method protected updateStartImage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENPlayView;

    const/4 v2, 0x7

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 2
    check-cast v0, Lmoe/codeest/enviews/ENPlayView;

    const/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1}, Lmoe/codeest/enviews/ENPlayView;->setDuration(I)V

    .line 4
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-ne v1, v3, :cond_0

    .line 5
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->d()V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->c()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->c()V

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 9
    check-cast v0, Landroid/widget/ImageView;

    .line 10
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-ne v1, v3, :cond_3

    const v1, 0x7f080cdb

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_4

    const v1, 0x7f080ccc

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const v1, 0x7f080cde

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_0
    return-void
.end method
