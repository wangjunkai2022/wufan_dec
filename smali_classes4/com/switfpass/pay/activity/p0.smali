.class final Lcom/switfpass/pay/activity/p0;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

.field private final synthetic b:Lcom/switfpass/pay/bean/RequestMsg;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Lcom/switfpass/pay/bean/RequestMsg;Z)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iput-object p2, p0, Lcom/switfpass/pay/activity/p0;->b:Lcom/switfpass/pay/bean/RequestMsg;

    iput-boolean p3, p0, Lcom/switfpass/pay/activity/p0;->c:Z

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/activity/p0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    return-object p0
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->f(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Z)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    new-instance v1, Lcom/switfpass/pay/activity/q0;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/activity/q0;-><init>(Lcom/switfpass/pay/activity/p0;Ljava/lang/Object;)V

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

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v1, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->U:Lcom/switfpass/pay/utils/g0;

    invoke-static {v0, v1}, Lcom/switfpass/pay/utils/h;->e(Landroid/app/Activity;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final synthetic onSucceed(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/e;->onSucceed(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/switfpass/pay/utils/o0;->d(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/bean/RequestMsg;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->f(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Z)V

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->t()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-boolean v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->ae:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->ae:Z

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1, v1}, Lcom/switfpass/pay/bean/OrderBena;->H(Z)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->g(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/switfpass/pay/activity/PayResultActivity;->startActivity(Lcom/switfpass/pay/bean/OrderBena;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->finish()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/switfpass/pay/activity/p0;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1, v1}, Lcom/switfpass/pay/bean/OrderBena;->H(Z)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->g(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/switfpass/pay/activity/PayResultActivity;->startActivity(Lcom/switfpass/pay/bean/OrderBena;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->finish()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object p1, p1, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const-string v0, "\u8be5\u7b14\u8ba2\u5355\u72b6\u6001\uff1a\u672a\u652f\u4ed8\uff0c\u8bf7\u51b2\u6b63\u8be5\u7b14\u8ba2\u5355\u6216\u8005\u7ee7\u7eed\u67e5\u8be2\u786e\u8ba4\u8be5\u7b14\u8ba2\u5355\u662f\u5426\u5df2\u7ecf\u652f\u4ed8\u6210\u529f!"

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->showToastInfo(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->h(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->count:I

    const/4 v3, 0x4

    if-ge v0, v3, :cond_6

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object p1, p1, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const-wide/16 v2, 0x5

    invoke-static {p1, v2, v3}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;J)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget v0, p1, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->count:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->count:I

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    new-instance v7, Lcom/switfpass/pay/utils/l;

    iget-object v1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const v0, 0x7f08000f

    invoke-virtual {v1, v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const v3, 0x7f08001f

    invoke-virtual {v0, v3}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    const/4 v6, 0x0

    const-string v3, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/switfpass/pay/utils/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/switfpass/pay/utils/i;)V

    invoke-static {p1, v7}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Lcom/switfpass/pay/utils/l;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/switfpass/pay/utils/h;->e(Landroid/app/Activity;Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object p1

    new-instance v0, Lcom/switfpass/pay/activity/r0;

    invoke-direct {v0}, Lcom/switfpass/pay/activity/r0;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->c(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->i(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    invoke-static {}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result.state-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object p1, p1, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->h(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/switfpass/pay/activity/p0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object p1, p1, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->V:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_8
    return-void
.end method
