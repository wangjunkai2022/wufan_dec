.class Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer$a;
.super Ljava/lang/Object;
.source "StandardGSYVideoPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->showWifiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void
.end method
