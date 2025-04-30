.class final Lcom/switfpass/pay/utils/o;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/d0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/o;->a:Lcom/switfpass/pay/utils/d0;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/utils/o;)Lcom/switfpass/pay/utils/d0;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/o;->a:Lcom/switfpass/pay/utils/d0;

    return-object p0
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/utils/o;->a:Lcom/switfpass/pay/utils/d0;

    invoke-virtual {v0}, Lcom/switfpass/pay/utils/d0;->l()V

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u539f\u56e0\u5305\u62ec\u7528\u6237\u7f51\u7edc\u51fa\u9519"

    invoke-static {v0, v0, v1}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/utils/o;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/switfpass/pay/utils/p;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/utils/p;-><init>(Lcom/switfpass/pay/utils/o;Ljava/lang/Object;)V

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

    iget-object v0, p0, Lcom/switfpass/pay/utils/o;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42\u652f\u4ed8\u5b9d.."

    invoke-virtual {v0, v1, v2, v3}, Lcom/switfpass/pay/utils/d0;->v(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public final synthetic onSucceed(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/o;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0, p1}, Lcom/switfpass/pay/utils/d0;->b(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/OrderBena;)V

    :cond_0
    return-void
.end method
