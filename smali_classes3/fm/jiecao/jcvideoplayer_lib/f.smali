.class public Lfm/jiecao/jcvideoplayer_lib/f;
.super Ljava/lang/Object;
.source "JCVideoPlayerManager.java"


# static fields
.field public static a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

.field public static b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/f;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q()V

    .line 3
    sput-object v1, Lfm/jiecao/jcvideoplayer_lib/f;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 4
    :cond_0
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q()V

    .line 6
    sput-object v1, Lfm/jiecao/jcvideoplayer_lib/f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    :cond_1
    return-void
.end method

.method public static b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    .locals 1

    .line 1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    .locals 1

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    return-object v0
.end method

.method public static d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    .locals 1

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/f;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    return-object v0
.end method

.method public static e(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V
    .locals 0

    .line 1
    sput-object p0, Lfm/jiecao/jcvideoplayer_lib/f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    return-void
.end method

.method public static f(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V
    .locals 0

    .line 1
    sput-object p0, Lfm/jiecao/jcvideoplayer_lib/f;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    return-void
.end method
