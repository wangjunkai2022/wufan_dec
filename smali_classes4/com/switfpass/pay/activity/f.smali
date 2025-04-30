.class final Lcom/switfpass/pay/activity/f;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/QQWapPayWebView;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/QQWapPayWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/f;->a:Lcom/switfpass/pay/activity/QQWapPayWebView;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "resultCode"

    const-string v1, "NOTPAY"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/switfpass/pay/activity/f;->a:Lcom/switfpass/pay/activity/QQWapPayWebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/f;->a:Lcom/switfpass/pay/activity/QQWapPayWebView;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onPostExecute()V
    .locals 0

    invoke-super {p0}, Lcom/switfpass/pay/thread/e;->onPostExecute()V

    return-void
.end method

.method public final onPreExecute()V
    .locals 0

    invoke-super {p0}, Lcom/switfpass/pay/thread/e;->onPreExecute()V

    return-void
.end method

.method public final synthetic onSucceed(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    const/4 v0, -0x1

    const-string v1, "resultCode"

    if-eqz p1, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/switfpass/pay/activity/f;->a:Lcom/switfpass/pay/activity/QQWapPayWebView;

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-object p1, p0, Lcom/switfpass/pay/activity/f;->a:Lcom/switfpass/pay/activity/QQWapPayWebView;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "NOTPAY"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/switfpass/pay/activity/f;->a:Lcom/switfpass/pay/activity/QQWapPayWebView;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
