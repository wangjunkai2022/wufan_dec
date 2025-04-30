.class public Lcom/switfpass/pay/activity/PayResultActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/switfpass/pay/bean/OrderBena;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/Button;

.field private t:Lnet/tsz/afinal/FinalBitmap;

.field private u:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/activity/PayResultActivity;)Lcom/switfpass/pay/bean/OrderBena;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    return-object p0
.end method

.method public static startActivity(Lcom/switfpass/pay/bean/OrderBena;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "order"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-class p0, Lcom/switfpass/pay/activity/PayResultActivity;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected b(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_Result()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "order"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/switfpass/pay/bean/OrderBena;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-static {p0}, Lnet/tsz/afinal/FinalBitmap;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalBitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->t:Lnet/tsz/afinal/FinalBitmap;

    :try_start_0
    invoke-static {}, Lcom/switfpass/pay/utils/o0;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/tsz/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lnet/tsz/afinal/FinalBitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_pay_transNo()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->u:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_iv_pay_image()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->h:Landroid/widget/ImageView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_logo_lay()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->p:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_img_lay()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->q:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_logo_title()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->g:Landroid/widget/ImageView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_orderNo()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_order_time()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_order_state()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_tv_bank()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_money()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_iv_payType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_finsh()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_pay_body()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_pay_mch_order()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_pay_wx_order()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tx_pay_wx_title()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->m:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_rl_pay_mch()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->o:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_tv_pay_mch()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->n:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_layBack()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->r:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_pay_complete()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/activity/PayResultActivity;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->s:Landroid/widget/Button;

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->t:Lnet/tsz/afinal/FinalBitmap;

    iget-object v3, p0, Lcom/switfpass/pay/activity/PayResultActivity;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v4}, Lcom/switfpass/pay/bean/OrderBena;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lnet/tsz/afinal/FinalBitmap;->display(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/OrderBena;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/switfpass/pay/utils/o0;->e(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getString_pay_success_prompt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->r()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->r()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/switfpass/pay/MainApplication;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->r()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/switfpass/pay/MainApplication;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->r()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/switfpass/pay/MainApplication;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->r()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/switfpass/pay/MainApplication;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->r()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/switfpass/pay/MainApplication;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_icon_pay_color()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getString_pay_zfb_order_no()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_icon_qq_color()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getString_pay_qq_order_no()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->i:Landroid/widget/TextView;

    new-instance v0, Lcom/switfpass/pay/activity/f0;

    invoke-direct {v0, p0}, Lcom/switfpass/pay/activity/f0;-><init>(Lcom/switfpass/pay/activity/PayResultActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->r:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/switfpass/pay/activity/g0;

    invoke-direct {v0, p0}, Lcom/switfpass/pay/activity/g0;-><init>(Lcom/switfpass/pay/activity/PayResultActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->s:Landroid/widget/Button;

    new-instance v0, Lcom/switfpass/pay/activity/h0;

    invoke-direct {v0, p0}, Lcom/switfpass/pay/activity/h0;-><init>(Lcom/switfpass/pay/activity/PayResultActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayResultActivity;->f:Lcom/switfpass/pay/bean/OrderBena;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    const/4 p2, 0x7

    const-string v0, "\u652f\u4ed8\u72b6\u6001\uff1a\u8be5\u7b14\u8ba2\u5355\u5df2\u652f\u4ed8"

    invoke-static {p1, p2, v0}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p2}, Lcom/switfpass/pay/handle/a;->a(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
