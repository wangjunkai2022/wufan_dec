.class Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer$a;
.super Ljava/lang/Object;
.source "GSYADVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/video/base/a;->y()Lc2/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/video/base/a;->y()Lc2/a;

    move-result-object p1

    invoke-interface {p1}, Lc2/a;->onAutoCompletion()V

    :cond_0
    return-void
.end method
