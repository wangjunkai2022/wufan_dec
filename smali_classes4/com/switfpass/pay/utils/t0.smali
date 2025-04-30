.class final Lcom/switfpass/pay/utils/t0;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/d0;

.field private final synthetic b:Lcom/switfpass/pay/bean/RequestMsg;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/t0;->a:Lcom/switfpass/pay/utils/d0;

    iput-object p2, p0, Lcom/switfpass/pay/utils/t0;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/utils/t0;)Lcom/switfpass/pay/utils/d0;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/t0;->a:Lcom/switfpass/pay/utils/d0;

    return-object p0
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/utils/t0;->a:Lcom/switfpass/pay/utils/d0;

    invoke-virtual {v0}, Lcom/switfpass/pay/utils/d0;->l()V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/switfpass/pay/utils/t0;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/switfpass/pay/utils/u0;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/utils/u0;-><init>(Lcom/switfpass/pay/utils/t0;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/16 v0, 0x9

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final onPostExecute()V
    .locals 0

    invoke-super {p0}, Lcom/switfpass/pay/thread/e;->onPostExecute()V

    return-void
.end method

.method public final onPreExecute()V
    .locals 4

    invoke-super {p0}, Lcom/switfpass/pay/thread/e;->onPreExecute()V

    iget-object v0, p0, Lcom/switfpass/pay/utils/t0;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42\u652f\u4ed8\u5b9d\u652f\u4ed8.."

    invoke-virtual {v0, v1, v2, v3}, Lcom/switfpass/pay/utils/d0;->v(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public final synthetic onSucceed(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    iget-object v0, p0, Lcom/switfpass/pay/utils/t0;->a:Lcom/switfpass/pay/utils/d0;

    invoke-virtual {v0}, Lcom/switfpass/pay/utils/d0;->l()V

    if-eqz p1, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/t0;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/switfpass/pay/bean/RequestMsg;->F(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/switfpass/pay/utils/t0;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/utils/t0;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->z()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/switfpass/pay/utils/t0;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/switfpass/pay/utils/t0;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v2}, Lcom/switfpass/pay/bean/RequestMsg;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/switfpass/pay/activity/QQWapPayWebView;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/switfpass/pay/utils/t0;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {p1}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u624b\u673a\u6ca1\u6709\u5b89\u88c5\u652f\u4ed8\u5b9d\uff0c\u8bf7\u5148\u5b89\u88c5\u652f\u4ed8\u5b9d"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method
