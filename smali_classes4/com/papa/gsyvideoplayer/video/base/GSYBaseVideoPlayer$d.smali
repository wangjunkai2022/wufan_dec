.class Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;
.super Ljava/lang/Object;
.source "GSYBaseVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backToNormal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

.field final synthetic d:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;->d:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;->c:Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;->d:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;->b:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;->c:Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method
