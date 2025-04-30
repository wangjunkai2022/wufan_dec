.class public Lcom/papa/gsyvideoplayer/player/f;
.super Lcom/papa/gsyvideoplayer/player/a;
.source "SystemPlayerManager.java"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

.field private d:Landroid/view/Surface;

.field private e:Z

.field private f:J

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/player/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->f:J

    .line 3
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->g:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    return-void
.end method

.method private n(Landroid/content/Context;)J
    .locals 10

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3
    iget-wide v6, p0, Lcom/papa/gsyvideoplayer/player/f;->g:J

    sub-long v6, v4, v6

    cmp-long p1, v6, v0

    if-nez p1, :cond_2

    return-wide v6

    .line 4
    :cond_2
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->f:J

    sub-long v0, v2, v0

    const-wide/16 v8, 0x3e8

    mul-long v0, v0, v8

    div-long/2addr v0, v6

    .line 5
    iput-wide v4, p0, Lcom/papa/gsyvideoplayer/player/f;->g:J

    .line 6
    iput-wide v2, p0, Lcom/papa/gsyvideoplayer/player/f;->f:J

    return-wide v0
.end method

.method private o(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    :cond_1
    const-string p1, " not support setSpeed"

    .line 7
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public c(FZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/player/f;->o(F)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(FZ)V
    .locals 0

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/player/f;->n(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/papa/gsyvideoplayer/cache/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/c;",
            ">;",
            "Lcom/papa/gsyvideoplayer/cache/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/papa/gsyvideoplayer/player/f;->b:Landroid/content/Context;

    .line 2
    new-instance p3, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p3, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setAudioStreamType(I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    .line 5
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/papa/gsyvideoplayer/model/a;

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->f()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 7
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->b()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->a()Ljava/io/File;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/cache/b;->h(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->e()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, p1, p4, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->g()Z

    move-result p3

    invoke-virtual {p1, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setLooping(Z)V

    .line 10
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->d()F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->d()F

    move-result p1

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->d()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/player/f;->o(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/player/a;->e(Lcom/papa/gsyvideoplayer/model/a;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    return-object v0
.end method

.method public k(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setVolume(FF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    check-cast p1, Landroid/view/Surface;

    .line 4
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/player/f;->d:Landroid/view/Surface;

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/player/f;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->d:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->d:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->pause()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    .line 3
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->release()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->f:J

    .line 5
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->g:J

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->start()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    :cond_0
    return-void
.end method
