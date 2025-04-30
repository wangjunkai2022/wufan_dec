.class final Lcom/switfpass/pay/utils/o1;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/d0;

.field private final synthetic b:Lcom/switfpass/pay/bean/RequestMsg;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    iput-object p2, p0, Lcom/switfpass/pay/utils/o1;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/utils/o1;)Lcom/switfpass/pay/utils/d0;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    return-object p0
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->j(Lcom/switfpass/pay/utils/d0;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->j(Lcom/switfpass/pay/utils/d0;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->k(Lcom/switfpass/pay/utils/d0;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/switfpass/pay/utils/d0;->e(Lcom/switfpass/pay/utils/d0;Z)V

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/switfpass/pay/utils/p1;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/utils/p1;-><init>(Lcom/switfpass/pay/utils/o1;Ljava/lang/Object;)V

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

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v1}, Lcom/switfpass/pay/utils/d0;->a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/switfpass/pay/utils/h;->e(Landroid/app/Activity;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final synthetic onSucceed(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->j(Lcom/switfpass/pay/utils/d0;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->j(Lcom/switfpass/pay/utils/d0;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->k(Lcom/switfpass/pay/utils/d0;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/bean/RequestMsg;->F(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->z()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/switfpass/pay/utils/o1;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/switfpass/pay/utils/o1;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v2}, Lcom/switfpass/pay/bean/RequestMsg;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/switfpass/pay/activity/QQWapPayWebView;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {p1}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u624b\u673a\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/switfpass/pay/utils/o1;->a:Lcom/switfpass/pay/utils/d0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/switfpass/pay/utils/d0;->e(Lcom/switfpass/pay/utils/d0;Z)V

    return-void
.end method
