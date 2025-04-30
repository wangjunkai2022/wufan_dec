.class public Lfm/jiecao/jcvideoplayer_lib/b;
.super Ljava/lang/Object;
.source "JCMediaManager.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/jiecao/jcvideoplayer_lib/b$g;
    }
.end annotation


# static fields
.field public static g:Ljava/lang/String; = "JieCaoVideoPlayer"

.field private static h:Lfm/jiecao/jcvideoplayer_lib/b; = null

.field public static i:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView; = null

.field public static j:Landroid/graphics/SurfaceTexture; = null

.field public static k:Ljava/lang/String; = null

.field public static l:Z = false

.field public static m:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:I = 0x0

.field public static final o:I = 0x2


# instance fields
.field public a:Landroid/media/MediaPlayer;

.field public b:I

.field public c:I

.field d:Landroid/os/HandlerThread;

.field e:Lfm/jiecao/jcvideoplayer_lib/b$g;

.field f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->b:I

    .line 4
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->d:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$g;

    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfm/jiecao/jcvideoplayer_lib/b$g;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->e:Lfm/jiecao/jcvideoplayer_lib/b$g;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Landroid/os/Handler;

    return-void
.end method

.method public static b()Lfm/jiecao/jcvideoplayer_lib/b;
    .locals 1

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->h:Lfm/jiecao/jcvideoplayer_lib/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b;

    invoke-direct {v0}, Lfm/jiecao/jcvideoplayer_lib/b;-><init>()V

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->h:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 3
    :cond_0
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->h:Lfm/jiecao/jcvideoplayer_lib/b;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Point;
    .locals 3

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->b:I

    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/b;->d()V

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->e:Lfm/jiecao/jcvideoplayer_lib/b$g;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->e:Lfm/jiecao/jcvideoplayer_lib/b$g;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Landroid/os/Handler;

    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$b;

    invoke-direct {v0, p0, p2}, Lfm/jiecao/jcvideoplayer_lib/b$b;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Landroid/os/Handler;

    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$a;

    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/b$a;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Landroid/os/Handler;

    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$d;

    invoke-direct {v0, p0, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/b$d;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Landroid/os/Handler;

    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$e;

    invoke-direct {v0, p0, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/b$e;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Landroid/os/Handler;

    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$c;

    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/b$c;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSurfaceTextureAvailable ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    sget-object p2, Lfm/jiecao/jcvideoplayer_lib/b;->j:Landroid/graphics/SurfaceTexture;

    if-nez p2, :cond_0

    .line 3
    sput-object p1, Lfm/jiecao/jcvideoplayer_lib/b;->j:Landroid/graphics/SurfaceTexture;

    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/b;->c()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lfm/jiecao/jcvideoplayer_lib/b;->i:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    sget-object p1, Lfm/jiecao/jcvideoplayer_lib/b;->j:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceTextureSizeChanged ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 1
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/b;->b:I

    .line 2
    iput p3, p0, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    .line 3
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Landroid/os/Handler;

    new-instance p2, Lfm/jiecao/jcvideoplayer_lib/b$f;

    invoke-direct {p2, p0}, Lfm/jiecao/jcvideoplayer_lib/b$f;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
