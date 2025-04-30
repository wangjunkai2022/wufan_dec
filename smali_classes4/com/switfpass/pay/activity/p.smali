.class final Lcom/switfpass/pay/activity/p;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/QrcodeActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/QrcodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/p;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    new-instance v0, Lcom/switfpass/pay/activity/s;

    invoke-direct {v0}, Lcom/switfpass/pay/activity/s;-><init>()V

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

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
    .locals 2

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/e;->onSucceed(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/activity/p;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "\u7ea2\u5305\u53d1\u9001\u6210\u529f"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
