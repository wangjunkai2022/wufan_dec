.class Lcom/join/android/app/component/video/MyVideoView$c;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->e(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->e(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$c;->a:Lcom/join/android/app/component/video/MyVideoView;

    iget-object v0, v0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
