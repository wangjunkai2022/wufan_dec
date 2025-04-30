.class public abstract Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;
.super Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
.source "GSYVideoPlayer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method protected backFromFull(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/d;->c0(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected getFullId()I
    .locals 1

    .line 1
    sget v0, Lcom/papa/gsyvideoplayer/d;->A:I

    return v0
.end method

.method public getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/c;->Q(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    move-result-object v0

    return-object v0
.end method

.method protected getSmallId()I
    .locals 1

    .line 1
    sget v0, Lcom/papa/gsyvideoplayer/d;->z:I

    return v0
.end method

.method protected releaseVideos()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V

    return-void
.end method
