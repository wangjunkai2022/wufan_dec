.class Lcom/join/android/app/component/video/MyVideoView$d;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->g(Lcom/join/android/app/component/video/MyVideoView;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->h(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->h(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object v1, v1, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-interface {p1, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->i(Lcom/join/android/app/component/video/MyVideoView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    :cond_2
    return v0
.end method
