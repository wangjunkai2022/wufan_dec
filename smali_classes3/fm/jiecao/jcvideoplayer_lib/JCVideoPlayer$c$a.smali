.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;
.super Ljava/lang/Object;
.source "JCVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    .line 2
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    iget-object v1, v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    invoke-virtual {v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    move-result v1

    mul-int/lit8 v2, v0, 0x64

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3
    :goto_0
    div-int/2addr v2, v3

    .line 4
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    iget-object v3, v3, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    invoke-virtual {v3, v2, v0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setProgressAndText(III)V

    return-void
.end method
