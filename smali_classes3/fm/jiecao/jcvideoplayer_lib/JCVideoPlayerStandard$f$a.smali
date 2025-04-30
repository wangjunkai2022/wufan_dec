.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f$a;
.super Ljava/lang/Object;
.source "JCVideoPlayerStandard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f$a;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget v1, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 7
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->P0:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method
