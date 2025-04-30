.class Lcom/papa/gsyvideoplayer/c$e;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/c;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
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
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c$e;->c:Lcom/papa/gsyvideoplayer/c;

    iput p2, p0, Lcom/papa/gsyvideoplayer/c$e;->a:I

    iput p3, p0, Lcom/papa/gsyvideoplayer/c$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$e;->c:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->E()V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$e;->c:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$e;->c:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    iget v1, p0, Lcom/papa/gsyvideoplayer/c$e;->a:I

    iget v2, p0, Lcom/papa/gsyvideoplayer/c$e;->b:I

    invoke-interface {v0, v1, v2}, Lc2/a;->onError(II)V

    :cond_0
    return-void
.end method
