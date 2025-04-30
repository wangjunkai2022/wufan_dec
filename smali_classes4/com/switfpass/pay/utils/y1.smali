.class final Lcom/switfpass/pay/utils/y1;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/d0;

.field private final synthetic b:Lcom/switfpass/pay/bean/RequestMsg;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/y1;->a:Lcom/switfpass/pay/utils/d0;

    iput-object p2, p0, Lcom/switfpass/pay/utils/y1;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/utils/y1;)Lcom/switfpass/pay/utils/d0;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/y1;->a:Lcom/switfpass/pay/utils/d0;

    return-object p0
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/utils/y1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-virtual {v0}, Lcom/switfpass/pay/utils/d0;->l()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/y1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/switfpass/pay/utils/z1;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/utils/z1;-><init>(Lcom/switfpass/pay/utils/y1;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

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

    iget-object v0, p0, Lcom/switfpass/pay/utils/y1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42\u5fae\u4fe1\u652f\u4ed8..."

    invoke-virtual {v0, v1, v2, v3}, Lcom/switfpass/pay/utils/d0;->v(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public final synthetic onSucceed(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    iget-object v0, p0, Lcom/switfpass/pay/utils/y1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-virtual {v0}, Lcom/switfpass/pay/utils/d0;->l()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/y1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->k(Lcom/switfpass/pay/utils/d0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/y1;->a:Lcom/switfpass/pay/utils/d0;

    iget-object v1, p0, Lcom/switfpass/pay/utils/y1;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-static {v0, p1, v1}, Lcom/switfpass/pay/utils/d0;->c(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/OrderBena;Lcom/switfpass/pay/bean/RequestMsg;)V

    :cond_0
    return-void
.end method
