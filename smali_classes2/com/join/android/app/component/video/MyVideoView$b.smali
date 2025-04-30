.class Lcom/join/android/app/component/video/MyVideoView$b;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->p(Lcom/join/android/app/component/video/MyVideoView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v0}, Lcom/join/android/app/component/video/MyVideoView;->q(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v0}, Lcom/join/android/app/component/video/MyVideoView;->q(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object v2, v2, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v0}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v0}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MediaController;->setEnabled(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->c(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/join/android/app/component/video/MyVideoView;->f(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->b(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->d(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v1}, Lcom/join/android/app/component/video/MyVideoView;->b(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v2}, Lcom/join/android/app/component/video/MyVideoView;->d(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->s(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v1}, Lcom/join/android/app/component/video/MyVideoView;->b(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result v1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    .line 11
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->u(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v1}, Lcom/join/android/app/component/video/MyVideoView;->d(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->w(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object v1, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->w(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 14
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1, v0}, Lcom/join/android/app/component/video/MyVideoView;->x(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->y(Lcom/join/android/app/component/video/MyVideoView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 17
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1, v0}, Lcom/join/android/app/component/video/MyVideoView;->z(Lcom/join/android/app/component/video/MyVideoView;Z)Z

    .line 18
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->show()V

    goto :goto_0

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->w(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MyVideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_7

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    goto :goto_0

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->w(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object v1, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->w(Lcom/join/android/app/component/video/MyVideoView;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 25
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1, v0}, Lcom/join/android/app/component/video/MyVideoView;->x(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->y(Lcom/join/android/app/component/video/MyVideoView;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 28
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$b;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1, v0}, Lcom/join/android/app/component/video/MyVideoView;->z(Lcom/join/android/app/component/video/MyVideoView;Z)Z

    :cond_7
    :goto_0
    return-void
.end method
