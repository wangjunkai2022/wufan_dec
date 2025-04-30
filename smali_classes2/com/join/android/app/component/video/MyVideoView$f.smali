.class Lcom/join/android/app/component/video/MyVideoView$f;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1, p3}, Lcom/join/android/app/component/video/MyVideoView;->t(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1, p4}, Lcom/join/android/app/component/video/MyVideoView;->v(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object p2, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->o(Lcom/join/android/app/component/video/MyVideoView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->b(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->d(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    if-ne p1, p4, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->w(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object p2, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->w(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/join/android/app/component/video/MyVideoView;->x(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->show()V

    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v0, p1}, Lcom/join/android/app/component/video/MyVideoView;->l(Lcom/join/android/app/component/video/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->m(Lcom/join/android/app/component/video/MyVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/android/app/component/video/MyVideoView;->l(Lcom/join/android/app/component/video/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->a:Lcom/join/android/app/component/video/MyVideoView;

    iput-object v0, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method
