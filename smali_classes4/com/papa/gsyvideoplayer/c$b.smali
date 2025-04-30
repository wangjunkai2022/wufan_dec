.class Lcom/papa/gsyvideoplayer/c$b;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/c;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c$b;->a:Lcom/papa/gsyvideoplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$b;->a:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->E()V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$b;->a:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$b;->a:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    invoke-interface {v0}, Lc2/a;->onAutoCompletion()V

    :cond_0
    return-void
.end method
