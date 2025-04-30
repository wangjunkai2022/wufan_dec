.class public Lcom/switfpass/pay/activity/BasePayActivity;
.super Landroid/app/Activity;


# instance fields
.field protected a:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/activity/BasePayActivity;->a:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/BasePayActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/BasePayActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/BasePayActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/activity/BasePayActivity;->a:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dismissMyLoading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public b(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/BasePayActivity;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/switfpass/pay/activity/BasePayActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_1
    iget-object p1, p0, Lcom/switfpass/pay/activity/BasePayActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/BasePayActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "showNewLoading "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected c(I)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/activity/z;

    invoke-direct {v0, p0, p1}, Lcom/switfpass/pay/activity/z;-><init>(Lcom/switfpass/pay/activity/BasePayActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/activity/a0;

    invoke-direct {v0, p0, p1}, Lcom/switfpass/pay/activity/a0;-><init>(Lcom/switfpass/pay/activity/BasePayActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    return-void
.end method
