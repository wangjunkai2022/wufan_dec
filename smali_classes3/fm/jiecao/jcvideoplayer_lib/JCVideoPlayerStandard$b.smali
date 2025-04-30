.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$b;
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
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$b;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$b;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 3
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$b;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->S()V

    const/4 p1, 0x1

    .line 4
    sput-boolean p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q0:Z

    return-void
.end method
