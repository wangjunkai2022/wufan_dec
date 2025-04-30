.class public Lfm/jiecao/jcvideoplayer_lib/b$g;
.super Landroid/os/Handler;
.source "JCMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lfm/jiecao/jcvideoplayer_lib/b;


# direct methods
.method public constructor <init>(Lfm/jiecao/jcvideoplayer_lib/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    goto/16 :goto_0

    .line 4
    :cond_1
    :try_start_0
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    const/4 v1, 0x0

    iput v1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:I

    .line 5
    iput v1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    .line 6
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 7
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    .line 8
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 9
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    sget-boolean v2, Lfm/jiecao/jcvideoplayer_lib/b;->l:Z

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 10
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object v2, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 11
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object v2, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 12
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object v2, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 13
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 14
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object v3, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 15
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object v3, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 16
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object v3, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 17
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object v3, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 18
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 19
    const-class p1, Landroid/media/MediaPlayer;

    const-string v3, "setDataSource"

    new-array v4, v0, [Ljava/lang/Class;

    .line 20
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/util/Map;

    aput-object v5, v4, v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 21
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object v3, v3, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lfm/jiecao/jcvideoplayer_lib/b;->k:Ljava/lang/String;

    aput-object v4, v0, v1

    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/b;->m:Ljava/util/Map;

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 23
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    new-instance v0, Landroid/view/Surface;

    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/b;->j:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
