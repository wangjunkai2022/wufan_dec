.class final Lcom/switfpass/pay/activity/d;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/activity/d;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    return-object p0
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->e(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->e(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->f(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    new-instance v1, Lcom/switfpass/pay/activity/e;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/activity/e;-><init>(Lcom/switfpass/pay/activity/d;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPostExecute()V
    .locals 0

    invoke-super {p0}, Lcom/switfpass/pay/thread/e;->onPostExecute()V

    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    invoke-super {p0}, Lcom/switfpass/pay/thread/e;->onPreExecute()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v1, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->U:Lcom/switfpass/pay/utils/g0;

    invoke-static {v0, v1}, Lcom/switfpass/pay/utils/h;->e(Landroid/app/Activity;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->U:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final synthetic onSucceed(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/e;->onSucceed(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->U:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->e(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->e(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->f(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Z)V

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->t()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->U:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1, v1}, Lcom/switfpass/pay/bean/OrderBena;->H(Z)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->g(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/switfpass/pay/activity/PayResultActivity;->startActivity(Lcom/switfpass/pay/bean/OrderBena;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->d(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/switfpass/pay/bean/RequestMsg;->F(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/d;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->d(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u652f\u4ed8\u786e\u8ba4\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {p1, v0, v2, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
