.class final Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$a;
.super Ljava/lang/Object;
.source "JCVideoPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    const/4 v0, -0x2

    const-string v1, "]"

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_LOSS ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    move-result-object p1

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    move-result-object p1

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    move-result-object p1

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 7
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method
