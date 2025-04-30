.class Lcom/join/android/app/component/video/StandardVideoView$e;
.super Landroid/os/Handler;
.source "StandardVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/StandardVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/StandardVideoView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$e;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$e;->a:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView$e;->a:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoView;->g:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
