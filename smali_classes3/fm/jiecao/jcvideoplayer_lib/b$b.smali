.class Lfm/jiecao/jcvideoplayer_lib/b$b;
.super Ljava/lang/Object;
.source "JCMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/b;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfm/jiecao/jcvideoplayer_lib/b;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$b;->b:Lfm/jiecao/jcvideoplayer_lib/b;

    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/b$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object v0

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/b$b;->a:I

    invoke-virtual {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setBufferProgress(I)V

    :cond_0
    return-void
.end method
