.class public Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;
.super Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "FulllScreenVideoView.java"


# static fields
.field public static mute:Z = false

.field private static muteFullScrBak:Z = true


# instance fields
.field public backButton:Landroid/widget/ImageView;

.field public batteryTimeLayout:Landroid/widget/LinearLayout;

.field public battery_level:Landroid/widget/ImageView;

.field public bottomProgressBar:Landroid/widget/ProgressBar;

.field public clarity:Landroid/widget/TextView;

.field public cover:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private fixedHeight:I

.field private fixedWidth:I

.field private heightRatio:I

.field public loadingProgressBar:Landroid/widget/ProgressBar;

.field protected mAutoPlay:Landroid/widget/ImageView;

.field private matrix:Landroid/graphics/Matrix;

.field public muteImageView:Landroid/widget/ImageView;

.field private muteWhenPlay:Z

.field protected noneNetFinishActivity:Z

.field public retryTextView:Landroid/widget/TextView;

.field public thumbImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public tinyBackImageView:Landroid/widget/ImageView;

.field public titleTextView:Landroid/widget/TextView;

.field public url:Ljava/lang/String;

.field public video_current_time:Landroid/widget/TextView;

.field private widthRatio:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->noneNetFinishActivity:Z

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteWhenPlay:Z

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->noneNetFinishActivity:Z

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteWhenPlay:Z

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->url:Ljava/lang/String;

    return-void
.end method

.method private transformVideo(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    if-le p1, p2, :cond_1

    .line 4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_2

    .line 7
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    move-result v4

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    int-to-float p1, v4

    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    move-result v4

    sub-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-float p2, v4

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v3, p2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 12
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    if-eqz p1, :cond_3

    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/render/a;->x(Landroid/graphics/Matrix;)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected changeUiToCompleteShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v1, :cond_2

    .line 11
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v1, :cond_2

    .line 11
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToNormal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v1, :cond_2

    .line 12
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    :cond_2
    return-void
.end method

.method protected changeUiToPauseShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v1, :cond_2

    .line 11
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 13
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->updatePauseCover()V

    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v1, :cond_1

    .line 11
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 12
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->n()V

    :cond_1
    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v1, :cond_2

    .line 11
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToPreparingShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v1, :cond_1

    .line 11
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 12
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->n()V

    :cond_1
    return-void
.end method

.method public clickPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c059d

    return v0
.end method

.method public getResizedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->fixedHeight:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getResizedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->fixedWidth:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    const v0, 0x7f09012c

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090ff0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->thumbImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView$1;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView$1;-><init>(Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setLooping(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->initCustomView()V

    .line 10
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    return-void
.end method

.method initCustomView()V
    .locals 2

    const v0, 0x7f090aba

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteImageView:Landroid/widget/ImageView;

    const v0, 0x7f090123

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mAutoPlay:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mAutoPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget-boolean v0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mute:Z

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMuteView(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mAutoPlay:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public onAutoCompletion()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onAutoCompletion()V

    return-void
.end method

.method public onCompletion()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onCompletion()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->fixedWidth:I

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->fixedHeight:I

    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onPrepared()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteWhenPlay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMute(Z)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteWhenPlay:Z

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean v0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mute:Z

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMute(Z)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->onSurfaceAvailable(Landroid/view/Surface;)V

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/f;->e()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceUpdated(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->onSurfaceUpdated(Landroid/view/Surface;)V

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setCover(Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMuteOnly(Z)V

    .line 2
    sput-boolean p1, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mute:Z

    return-void
.end method

.method public setMuteOnly(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMuteView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMuteView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteImageView:Landroid/widget/ImageView;

    const v0, 0x7f080883

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteImageView:Landroid/widget/ImageView;

    const v0, 0x7f080882

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method
