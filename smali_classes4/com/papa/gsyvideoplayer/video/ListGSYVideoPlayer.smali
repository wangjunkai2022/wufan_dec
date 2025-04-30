.class public Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;
.super Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "ListGSYVideoPlayer.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/b;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 12

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/gsyvideoplayer/model/b;

    const-wide/16 v3, 0x0

    .line 4
    iput-wide v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 5
    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    iget-boolean v7, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    iget v8, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->e(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    .line 6
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/model/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/model/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;ZI)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/b;",
            ">;ZI)Z"
        }
    .end annotation

    .line 1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->d(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/util/List;ZILjava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/b;",
            ">;ZI",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->d(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected changeUiToNormal()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToNormal()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->n()V

    :cond_0
    return-void
.end method

.method protected cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 2
    check-cast p1, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;

    .line 3
    check-cast p2, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;

    .line 4
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    iput v0, p2, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    .line 5
    iget-object p1, p1, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    iput-object p1, p2, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    return-void
.end method

.method public d(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/b;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->e(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    move-result p1

    return p1
.end method

.method protected e(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/b;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    .line 2
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    .line 3
    iput-object p5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 4
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/gsyvideoplayer/model/b;

    .line 5
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/model/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/model/b;->a()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v2, p2

    move-object v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    move-result p2

    .line 6
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/model/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/model/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return p2
.end method

.method public onAutoCompletion()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onAutoCompletion()V

    return-void
.end method

.method public onCompletion()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseNetWorkState()V

    .line 2
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onCompletion()V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onPrepared()V

    return-void
.end method

.method protected prepareVideo()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->prepareVideo()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->n()V

    :cond_0
    return-void
.end method

.method protected resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    move-object v0, p3

    check-cast v0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/gsyvideoplayer/model/b;

    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/model/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/model/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    move-object p2, p1

    check-cast p2, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;

    .line 3
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a:Ljava/util/List;

    iget v0, p0, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->b:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/papa/gsyvideoplayer/model/b;

    .line 4
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/model/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p2, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/model/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method
