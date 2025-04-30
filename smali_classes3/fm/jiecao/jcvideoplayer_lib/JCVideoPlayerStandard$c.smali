.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;
.super Ljava/lang/Object;
.source "JCVideoPlayerStandard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget p2, p2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g()V

    :cond_0
    return-void
.end method
