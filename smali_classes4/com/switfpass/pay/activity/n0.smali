.class final Lcom/switfpass/pay/activity/n0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/m0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/m0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/n0;->a:Lcom/switfpass/pay/activity/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/switfpass/pay/activity/n0;->a:Lcom/switfpass/pay/activity/m0;

    invoke-static {p1}, Lcom/switfpass/pay/activity/m0;->b(Lcom/switfpass/pay/activity/m0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/switfpass/pay/activity/n0;->a:Lcom/switfpass/pay/activity/m0;

    invoke-static {p2}, Lcom/switfpass/pay/activity/m0;->b(Lcom/switfpass/pay/activity/m0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->d(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->payReverse(Lcom/switfpass/pay/bean/RequestMsg;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/n0;->a:Lcom/switfpass/pay/activity/m0;

    invoke-static {p1}, Lcom/switfpass/pay/activity/m0;->b(Lcom/switfpass/pay/activity/m0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->af:Lcom/switfpass/pay/utils/l;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/activity/n0;->a:Lcom/switfpass/pay/activity/m0;

    invoke-static {p1}, Lcom/switfpass/pay/activity/m0;->b(Lcom/switfpass/pay/activity/m0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->af:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
