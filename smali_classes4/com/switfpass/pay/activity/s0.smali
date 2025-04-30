.class final Lcom/switfpass/pay/activity/s0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/switfpass/pay/utils/i;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/s0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/activity/s0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const v0, 0x7f08001d

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->showToastInfo(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/s0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->submitData(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/s0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->j(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method
