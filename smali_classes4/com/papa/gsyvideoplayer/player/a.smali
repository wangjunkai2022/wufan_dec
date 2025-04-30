.class public abstract Lcom/papa/gsyvideoplayer/player/a;
.super Ljava/lang/Object;
.source "BasePlayerManager.java"

# interfaces
.implements Lcom/papa/gsyvideoplayer/player/c;


# instance fields
.field protected a:Lcom/papa/gsyvideoplayer/player/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/papa/gsyvideoplayer/player/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/a;->a:Lcom/papa/gsyvideoplayer/player/b;

    return-object v0
.end method

.method protected e(Lcom/papa/gsyvideoplayer/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/a;->a:Lcom/papa/gsyvideoplayer/player/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/papa/gsyvideoplayer/player/c;->j()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/papa/gsyvideoplayer/player/b;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/papa/gsyvideoplayer/model/a;)V

    :cond_0
    return-void
.end method

.method public g(Lcom/papa/gsyvideoplayer/player/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/player/a;->a:Lcom/papa/gsyvideoplayer/player/b;

    return-void
.end method
