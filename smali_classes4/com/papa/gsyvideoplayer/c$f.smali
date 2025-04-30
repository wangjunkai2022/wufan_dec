.class Lcom/papa/gsyvideoplayer/c$f;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/c;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/papa/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/c;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c$f;->c:Lcom/papa/gsyvideoplayer/c;

    iput p2, p0, Lcom/papa/gsyvideoplayer/c$f;->a:I

    iput p3, p0, Lcom/papa/gsyvideoplayer/c$f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$f;->c:Lcom/papa/gsyvideoplayer/c;

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/c;->r:Z

    if-eqz v1, :cond_1

    .line 2
    iget v1, p0, Lcom/papa/gsyvideoplayer/c$f;->a:I

    const/16 v2, 0x2bd

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->b0()V

    goto :goto_0

    :cond_0
    const/16 v2, 0x2be

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->E()V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$f;->c:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$f;->c:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    iget v1, p0, Lcom/papa/gsyvideoplayer/c$f;->a:I

    iget v2, p0, Lcom/papa/gsyvideoplayer/c$f;->b:I

    invoke-interface {v0, v1, v2}, Lc2/a;->onInfo(II)V

    :cond_2
    return-void
.end method
