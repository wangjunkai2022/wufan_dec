.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;
.super Ljava/util/TimerTask;
.source "JCVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;


# direct methods
.method public constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    iget v1, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2
    :cond_0
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s:Landroid/os/Handler;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;

    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
