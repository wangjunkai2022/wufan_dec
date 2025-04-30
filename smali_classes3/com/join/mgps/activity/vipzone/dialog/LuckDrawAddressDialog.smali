.class public Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;
.super Landroid/app/Activity;
.source "LuckDrawAddressDialog.java"


# instance fields
.field address1:Landroid/widget/TextView;

.field address2:Landroid/widget/EditText;

.field closed:Landroid/widget/ImageView;

.field context:Landroid/content/Context;

.field name:Landroid/widget/EditText;

.field ok:Landroid/widget/TextView;

.field phoneNumber:Landroid/widget/EditText;

.field prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

.field selectAddress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method private commitAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v2, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;

    invoke-direct {v2}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;-><init>()V

    .line 4
    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p4}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setAddress(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p3}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setCity(Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setMobilePhone(J)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getId()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setLotteryId(I)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setUid(I)V

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setUserToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-interface {p1, v1}, Lq1/h;->o0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->onClickAddressSelecter(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->onClickClosed(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClickAddressSelecter(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->phoneNumber:Landroid/widget/EditText;

    invoke-static {p1}, Ly1/a;->b(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/airsaid/pickerviewlibrary/b;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/airsaid/pickerviewlibrary/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->l(Z)Lcom/airsaid/pickerviewlibrary/widget/a;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 4
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->I(F)V

    const-string v0, "\u9009\u62e9\u57ce\u5e02"

    .line 5
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->J(Ljava/lang/String;)V

    const-string v0, "\u53d6\u6d88"

    .line 6
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->p(Ljava/lang/String;)V

    const v0, -0x777778

    .line 7
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->q(I)V

    const/high16 v0, 0x41700000    # 15.0f

    .line 8
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->r(F)V

    const-string v1, "\u786e\u5b9a"

    .line 9
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/c;->F(Ljava/lang/String;)V

    const v1, -0xffff01

    .line 10
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/c;->G(I)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->H(F)V

    const/4 v0, -0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->u(I)V

    .line 13
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$1;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V

    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/b;->S(Lf/a;)V

    .line 14
    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/a;->n()V

    return-void
.end method

.method public onClickClosed(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->phoneNumber:Landroid/widget/EditText;

    invoke-static {p1}, Ly1/a;->b(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClickOk(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->phoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u8f93\u5165\u59d3\u540d"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u8f93\u5165\u57ce\u5e02"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u8f93\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->commitAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    const p1, 0x7f0c03c2

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f090b5c

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->ok:Landroid/widget/TextView;

    const p1, 0x7f090c0c

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->phoneNumber:Landroid/widget/EditText;

    const p1, 0x7f0900a8

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address2:Landroid/widget/EditText;

    const p1, 0x7f0900a7

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address1:Landroid/widget/TextView;

    const p1, 0x7f090acd

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->name:Landroid/widget/EditText;

    const p1, 0x7f09028f

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->closed:Landroid/widget/ImageView;

    const p1, 0x7f090dfe

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->selectAddress:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/a;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->closed:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/b;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "datas"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    return-void
.end method
