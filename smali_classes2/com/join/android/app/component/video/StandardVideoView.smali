.class public Lcom/join/android/app/component/video/StandardVideoView;
.super Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "StandardVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/StandardVideoView$i;,
        Lcom/join/android/app/component/video/StandardVideoView$j;,
        Lcom/join/android/app/component/video/StandardVideoView$k;
    }
.end annotation


# static fields
.field public static C:I = 0x1

.field public static D:Z = true


# instance fields
.field A:Ljava/lang/String;

.field private B:Z

.field public a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field b:Landroid/widget/ImageView;

.field c:J

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Lcom/join/android/app/component/video/StandardVideoView$k;

.field i:Ljava/lang/String;

.field j:J

.field k:J

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:I

.field o:Lcom/join/android/app/component/video/StandardVideoView$j;

.field p:Z

.field public q:Landroid/widget/ImageView;

.field protected r:Landroid/widget/ImageView;

.field protected s:Z

.field private t:Z

.field private u:Lcom/join/android/app/component/video/StandardVideoView$i;

.field private v:Lcom/join/android/app/component/video/StandardVideoView$i;

.field w:Landroid/os/Handler;

.field protected x:Z

.field y:Lcom/join/mgps/customview/t;

.field z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->c:J

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->i:Ljava/lang/String;

    const-wide/32 v2, 0x5f5e100

    .line 4
    iput-wide v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->j:J

    .line 5
    iput-wide v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    .line 6
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Z

    .line 10
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->t:Z

    .line 11
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView$e;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoView$e;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Landroid/os/Handler;

    .line 12
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView$h;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoView$h;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Ljava/lang/Runnable;

    const-string v0, "StandardVideoView"

    .line 13
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->A:Ljava/lang/String;

    .line 14
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->B:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->c:J

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->i:Ljava/lang/String;

    const-wide/32 v1, 0x5f5e100

    .line 18
    iput-wide v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->j:J

    .line 19
    iput-wide p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    .line 20
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Z

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Z

    .line 24
    iput-boolean p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->t:Z

    .line 25
    new-instance p2, Lcom/join/android/app/component/video/StandardVideoView$e;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/StandardVideoView$e;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Landroid/os/Handler;

    .line 26
    new-instance p2, Lcom/join/android/app/component/video/StandardVideoView$h;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/StandardVideoView$h;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Ljava/lang/Runnable;

    const-string p2, "StandardVideoView"

    .line 27
    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->A:Ljava/lang/String;

    .line 28
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->B:Z

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/video/StandardVideoView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backToNormal()V

    return-void
.end method

.method static synthetic c(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Lcom/join/android/app/component/video/StandardVideoView$i;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method protected backFromFull(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected changeUiToCompleteShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToCompleteShow()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:Lcom/join/android/app/component/video/StandardVideoView$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_4

    .line 16
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected changeUiToError()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToError()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected changeUiToNormal()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToNormal()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->x:Z

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, v2}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v1, v0}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected changeUiToPauseClear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseClear()V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToPauseShow()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseShow()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:Lcom/join/android/app/component/video/StandardVideoView$j;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 13
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0, v2}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-boolean v3, p0, Lcom/join/android/app/component/video/StandardVideoView;->B:Z

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
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

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingShow()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:Lcom/join/android/app/component/video/StandardVideoView$j;

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    :cond_2
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

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingShow()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->D:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->x:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:Lcom/join/android/app/component/video/StandardVideoView$j;

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 14
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 16
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_4

    .line 18
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 19
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/join/android/app/component/video/StandardVideoView;->e()V

    return-void
.end method

.method protected changeUiToPreparingShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPreparingShow()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:Lcom/join/android/app/component/video/StandardVideoView$j;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0, v2}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Lcom/join/android/app/component/video/StandardVideoView$i;

    if-eqz v0, :cond_3

    .line 16
    invoke-interface {v0, v2}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected clearFullscreenLayout()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->D:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0712cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->getFullId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 17
    check-cast v2, Lcom/join/android/app/component/video/StandardVideoView;

    .line 18
    iput-boolean v0, v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    :cond_4
    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backToNormal()V

    goto :goto_1

    .line 20
    :cond_5
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoView$d;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method protected cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 2
    check-cast p1, Lcom/join/android/app/component/video/StandardVideoView;

    .line 3
    check-cast p2, Lcom/join/android/app/component/video/StandardVideoView;

    .line 4
    iget-boolean p1, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    iput-boolean p1, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:Lcom/join/android/app/component/video/StandardVideoView$j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->z()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/l;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    .line 4
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->e()I

    move-result v0

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    return v1

    .line 5
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/l;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public f(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p0}, Lcom/join/android/app/component/video/StandardVideoView;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected getFullId()I
    .locals 1

    const v0, 0x7f09031d

    return v0
.end method

.method public getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getGSYVideoManager"

    .line 2
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/c;->Q(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

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

    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->A:Ljava/lang/String;

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

    const v0, 0x7f0c05da

    return v0
.end method

.method protected getSmallId()I
    .locals 1

    const v0, 0x7f09031e

    return v0
.end method

.method public getTimeHas()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->j:J

    return-wide v0
.end method

.method public h()Lcom/join/android/app/component/video/StandardVideoView;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-object v0
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

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    const v0, 0x7f09012c

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f090ff0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090c67

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->f:Landroid/widget/TextView;

    const v0, 0x7f09088c

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->d:Landroid/view/View;

    const v0, 0x7f090c1c

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    const v0, 0x7f090312

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->g:Landroid/widget/ImageView;

    const v0, 0x7f090982

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v1, "res:///2131234008"

    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->m(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    new-instance v1, Lcom/join/android/app/component/video/StandardVideoView$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/video/StandardVideoView$a;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090427

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/EqualizerView;

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/EqualizerView;->a()V

    .line 14
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    const v0, 0x7f090ae6

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 17
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETWORK_WIFI"

    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "Wi-Fi"

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "NETWORK_"

    const-string v4, ""

    .line 21
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setThumbPlay(Z)V

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setShowPauseCover(Z)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedShowWifiTip(Z)V

    .line 25
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/c;->b()V

    .line 26
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Lcom/join/android/app/component/video/StandardVideoView$b;

    invoke-direct {v2, p0, p1}, Lcom/join/android/app/component/video/StandardVideoView$b;-><init>(Lcom/join/android/app/component/video/StandardVideoView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->initCustomView()V

    .line 28
    new-instance p1, Lcom/join/android/app/component/video/StandardVideoView$c;

    invoke-direct {p1, p0}, Lcom/join/android/app/component/video/StandardVideoView$c;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setGSYVideoProgressListener(Lc2/d;)V

    .line 29
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    return-void
.end method

.method protected initCover()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method initCustomView()V
    .locals 2

    const v0, 0x7f090aba

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->q:Landroid/widget/ImageView;

    const v0, 0x7f090123

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->D:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteView(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f090aba

    if-ne p1, v1, :cond_0

    .line 3
    sget-boolean p1, Lcom/join/android/app/component/video/StandardVideoView;->D:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    goto/16 :goto_2

    :cond_0
    const v1, 0x7f090123

    if-ne p1, v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v0

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/pref/h;->P(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string/jumbo p1, "\u5df2\u5f00\u542fWiFi\u4e0b\u81ea\u52a8\u64ad\u653e"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "\u5df2\u5173\u95edWiFi\u4e0b\u81ea\u52a8\u64ad\u653e"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const v1, 0x7f090fef

    if-eq p1, v1, :cond_3

    const v1, 0x7f09014c

    if-ne p1, v1, :cond_8

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "********"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_4
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez p1, :cond_7

    .line 11
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:Lcom/join/android/app/component/video/StandardVideoView$j;

    if-eqz p1, :cond_5

    .line 12
    invoke-interface {p1, p0}, Lcom/join/android/app/component/video/StandardVideoView$j;->a(Lcom/join/android/app/component/video/StandardVideoView;)V

    goto :goto_1

    .line 13
    :cond_5
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz p1, :cond_7

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentTime= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentState= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "startWindowFullscreen"

    invoke-static {v1, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    iget-wide v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    const-wide/16 v3, 0x1f4

    cmp-long p1, v1, v3

    if-gez p1, :cond_6

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 17
    :cond_7
    :goto_1
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-nez p1, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onClickUiToggle()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->x:Z

    .line 4
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->onClickUiToggle()V

    .line 5
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:Lcom/join/android/app/component/video/StandardVideoView$j;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, p0}, Lcom/join/android/app/component/video/StandardVideoView$j;->a(Lcom/join/android/app/component/video/StandardVideoView;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez v1, :cond_3

    .line 8
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz v1, :cond_3

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startWindowFullscreen"

    invoke-static {v2, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-wide v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->onDetachedFromWindow()V

    return-void
.end method

.method public onPrepared()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 3
    iput-boolean v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->t:Z

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->D:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 5
    :goto_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onPrepared()V

    .line 6
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/join/android/app/component/video/a;->f0()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/a;

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->x:Z

    .line 2
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->onSurfaceAvailable(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceUpdated(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->onSurfaceUpdated(Landroid/view/Surface;)V

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume()V

    return-void
.end method

.method protected releaseVideos()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/android/app/component/video/a;->n0(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoPlayConfig(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Z

    return-void
.end method

.method public setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteOnly(Z)V

    .line 2
    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoView;->D:Z

    .line 3
    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

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
    invoke-static {}, Lcom/join/android/app/component/video/a;->f0()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/a;

    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMuteView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->q:Landroid/widget/ImageView;

    const v0, 0x7f080882

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->q:Landroid/widget/ImageView;

    const v0, 0x7f080883

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setMuteWhenPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->t:Z

    return-void
.end method

.method public setNoneNetFinishActivity(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Z

    return-void
.end method

.method public setOnVideoProgressListener(Lcom/join/android/app/component/video/StandardVideoView$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->h:Lcom/join/android/app/component/video/StandardVideoView$k;

    return-void
.end method

.method public setOnclickVideoListener(Lcom/join/android/app/component/video/StandardVideoView$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:Lcom/join/android/app/component/video/StandardVideoView$j;

    return-void
.end method

.method protected setProgressAndTime(IIIIZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIIIZ)V

    int-to-long p1, p3

    .line 2
    iput-wide p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    if-lez p3, :cond_0

    sub-int/2addr p4, p3

    int-to-long p1, p4

    .line 3
    iput-wide p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->j:J

    .line 4
    invoke-static {p4}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->i:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->f:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setShowCoverWhenPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->B:Z

    return-void
.end method

.method public setSurfaceToPlay()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/a;->p(Lc2/a;)V

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    return-void
.end method

.method public setSwitchCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    return-void
.end method

.method public setSwitchTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setSwitchUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbVisibleM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/join/android/app/component/video/StandardVideoView;->i()V

    :cond_0
    return-void
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:Ljava/lang/String;

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-lt p2, v4, :cond_0

    .line 3
    invoke-super {p0, p1, v3, v1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, v2, v1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    .line 5
    :goto_0
    invoke-virtual {p0, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setAutoFullWithSize(Z)V

    .line 6
    invoke-virtual {p0, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedShowWifiTip(Z)V

    .line 9
    array-length p1, p3

    if-le p1, v3, :cond_1

    .line 10
    aget-object p1, p3, v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/pref/h;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 12
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    if-eqz p2, :cond_2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_3

    .line 13
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    return-void
.end method

.method public varargs setUpLazy(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-super/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setAutoFullWithSize(Z)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 6
    array-length p2, p3

    if-le p2, p1, :cond_0

    .line 7
    aget-object p1, p3, p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/pref/h;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public setVideoType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:I

    return-void
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    iget-object p2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    return-object p1
.end method

.method protected showWifiDialog()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/l;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/join/mgps/customview/t;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c009a

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 8
    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    const v3, 0x7f09100a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    iget-object v3, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    const v4, 0x7f09038e

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    const v5, 0x7f09036e

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 11
    iget-object v5, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    const v6, 0x7f090370

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 13
    invoke-static {v6}, Lcom/join/mgps/Util/e1;->b(Landroid/content/Context;)I

    move-result v6

    const/16 v7, 0x8

    if-nez v6, :cond_2

    const/4 v6, 0x0

    .line 14
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    :goto_0
    const-string/jumbo v3, "\u7ee7\u7eed\u89c2\u770b"

    const-string/jumbo v6, "\u60a8\u5df2\u5207\u6362\u5230\u6570\u636e\u7f51\u7edc\uff0c\u662f\u5426\u7ee7\u7eed\u89c2\u770b\u89c6\u9891\uff1f"

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f110227

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "\u5173\u95ed"

    :goto_1
    const-string/jumbo v8, "\u7f51\u7edc\u63d0\u793a"

    .line 19
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "\u53d6\u6d88"

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v2, Lcom/join/android/app/component/video/StandardVideoView$f;

    invoke-direct {v2, p0}, Lcom/join/android/app/component/video/StandardVideoView$f;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v1, Lcom/join/android/app/component/video/StandardVideoView$g;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/video/StandardVideoView$g;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_4
    :goto_2
    return-void
.end method

.method public startAfterPrepared()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public startPlayLogic()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    .line 2
    move-object p2, p1

    check-cast p2, Lcom/join/android/app/component/video/StandardVideoView;

    .line 3
    iget-object p3, p2, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 4
    iget-boolean p3, p0, Lcom/join/android/app/component/video/StandardVideoView;->B:Z

    iput-boolean p3, p2, Lcom/join/android/app/component/video/StandardVideoView;->B:Z

    .line 5
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0712cb

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 8
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startPlayLogic()V

    .line 11
    :cond_0
    invoke-static {}, Lcom/join/android/app/component/video/a;->f0()Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/component/video/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    return-object p1
.end method

.method public touchDoubleUp()V
    .locals 0

    return-void
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
