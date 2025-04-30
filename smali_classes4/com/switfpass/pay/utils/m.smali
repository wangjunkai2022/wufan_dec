.class final Lcom/switfpass/pay/utils/m;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/d0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/utils/m;)Lcom/switfpass/pay/utils/d0;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    return-object p0
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->j(Lcom/switfpass/pay/utils/d0;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->j(Lcom/switfpass/pay/utils/d0;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->k(Lcom/switfpass/pay/utils/d0;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/switfpass/pay/utils/d0;->e(Lcom/switfpass/pay/utils/d0;Z)V

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/switfpass/pay/utils/n;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/utils/n;-><init>(Lcom/switfpass/pay/utils/m;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
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

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v1}, Lcom/switfpass/pay/utils/d0;->a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/switfpass/pay/utils/h;->e(Landroid/app/Activity;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final synthetic onSucceed(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->j(Lcom/switfpass/pay/utils/d0;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->j(Lcom/switfpass/pay/utils/d0;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->k(Lcom/switfpass/pay/utils/d0;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0, p1}, Lcom/switfpass/pay/utils/d0;->b(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/OrderBena;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/switfpass/pay/utils/m;->a:Lcom/switfpass/pay/utils/d0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/switfpass/pay/utils/d0;->e(Lcom/switfpass/pay/utils/d0;Z)V

    return-void
.end method
