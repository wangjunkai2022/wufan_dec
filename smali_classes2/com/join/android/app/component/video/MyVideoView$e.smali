.class Lcom/join/android/app/component/video/MyVideoView$e;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$e;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$e;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v0, p2}, Lcom/join/android/app/component/video/MyVideoView;->j(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$e;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v0}, Lcom/join/android/app/component/video/MyVideoView;->k(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$e;->a:Lcom/join/android/app/component/video/MyVideoView;

    invoke-static {v0}, Lcom/join/android/app/component/video/MyVideoView;->k(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_0
    return-void
.end method
