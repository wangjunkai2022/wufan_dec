.class final Lcom/switfpass/pay/activity/R;
.super Lcom/switfpass/pay/thread/h;


# instance fields
.field private synthetic aJ:Lcom/switfpass/pay/activity/QrcodeActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/QrcodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

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

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "201"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    iget-boolean v0, v0, Lcom/switfpass/pay/activity/QrcodeActivity;->aI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/switfpass/pay/activity/QrcodeActivity;->aI:Z

    iget-object v0, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/OrderBena;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/OrderBena;->b0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/OrderBena;->G(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/OrderBena;->c0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/OrderBena;->R(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/OrderBena;->E(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {p1, v0}, Lcom/switfpass/pay/activity/PayResultActivity;->startActivity(Lcom/switfpass/pay/bean/OrderBena;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->t()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->i(Lcom/switfpass/pay/activity/QrcodeActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getString_pay_zfb_scan_state_info()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->j(Lcom/switfpass/pay/activity/QrcodeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getDrawable_n_right_select()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/R;->aJ:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->k(Lcom/switfpass/pay/activity/QrcodeActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getDrawable_n_code_green_bg()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method
