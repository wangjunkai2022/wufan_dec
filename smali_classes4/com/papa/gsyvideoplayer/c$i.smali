.class Lcom/papa/gsyvideoplayer/c$i;
.super Landroid/os/Handler;
.source "GSYVideoBaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/gsyvideoplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    invoke-static {v0, p1}, Lcom/papa/gsyvideoplayer/c;->D(Lcom/papa/gsyvideoplayer/c;Landroid/os/Message;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    iget-object p1, p1, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/player/c;->release()V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    iget-object p1, p1, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/cache/b;->release()V

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    const/4 v0, 0x0

    iput v0, p1, Lcom/papa/gsyvideoplayer/c;->o:I

    .line 9
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/c;->q:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 10
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/c;->E()V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$i;->a:Lcom/papa/gsyvideoplayer/c;

    invoke-static {v0, p1}, Lcom/papa/gsyvideoplayer/c;->C(Lcom/papa/gsyvideoplayer/c;Landroid/os/Message;)V

    :goto_0
    return-void
.end method
