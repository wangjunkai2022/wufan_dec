.class Lfm/jiecao/jcvideoplayer_lib/b$d;
.super Ljava/lang/Object;
.source "JCMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/b;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lfm/jiecao/jcvideoplayer_lib/b;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/b;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->c:Lfm/jiecao/jcvideoplayer_lib/b;

    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->a:I

    iput p3, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object v0

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->a:I

    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->b:I

    invoke-virtual {v0, v1, v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->r(II)V

    :cond_0
    return-void
.end method
