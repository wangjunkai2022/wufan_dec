.class Lcom/papa/gsyvideoplayer/c$h;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/gsyvideoplayer/c;
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
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c$h;->a:Lcom/papa/gsyvideoplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$h;->a:Lcom/papa/gsyvideoplayer/c;

    iget-object v0, v0, Lcom/papa/gsyvideoplayer/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const-string v0, "time out for error listener"

    .line 2
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$h;->a:Lcom/papa/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()Lc2/a;

    move-result-object v0

    const/16 v1, -0xc0

    invoke-interface {v0, v1, v1}, Lc2/a;->onError(II)V

    :cond_0
    return-void
.end method
