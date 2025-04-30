.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$d;
.super Ljava/lang/Object;
.source "JCVideoPlayerStandard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->O(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$d;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$d;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$d;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g()V

    :cond_0
    return-void
.end method
