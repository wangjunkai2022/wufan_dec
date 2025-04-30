.class Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$c;
.super Ljava/lang/Object;
.source "FaceTransferScanQrCodeActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$c;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method
