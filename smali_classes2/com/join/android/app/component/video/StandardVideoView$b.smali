.class Lcom/join/android/app/component/video/StandardVideoView$b;
.super Ljava/lang/Object;
.source "StandardVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/StandardVideoView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/android/app/component/video/StandardVideoView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/StandardVideoView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$b;->b:Lcom/join/android/app/component/video/StandardVideoView;

    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$b;->b:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView$b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method
