.class Lcom/join/android/app/component/video/MyVideoView$a;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/MyVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/MyVideoView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/MyVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/join/android/app/component/video/MyVideoView;->c(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 2
    iget-object p2, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/join/android/app/component/video/MyVideoView;->f(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->n(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MyVideoView$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->n(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MyVideoView$g;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/android/app/component/video/MyVideoView$g;->a()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->b(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->d(Lcom/join/android/app/component/video/MyVideoView;)I

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p2}, Lcom/join/android/app/component/video/MyVideoView;->b(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/join/android/app/component/video/MyVideoView$a;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p3}, Lcom/join/android/app/component/video/MyVideoView;->d(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method
