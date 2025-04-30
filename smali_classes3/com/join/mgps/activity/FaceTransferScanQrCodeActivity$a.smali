.class Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$a;
.super Ljava/lang/Object;
.source "FaceTransferScanQrCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->initView()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$a;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$a;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
