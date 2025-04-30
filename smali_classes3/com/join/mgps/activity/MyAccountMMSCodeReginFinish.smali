.class public Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;
.super Lcom/BaseActivity;
.source "MyAccountMMSCodeReginFinish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$e;,
        Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$f;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04c2
.end annotation


# instance fields
.field a:Lcom/MApplication;

.field private b:Ljava/lang/String;

.field c:Lcom/join/mgps/rpc/b;

.field d:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$f;

.field i:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:I

.field private k:Ljava/lang/String;

.field private l:Lcom/join/mgps/dialog/x0;

.field m:Lcom/join/mgps/dto/AccountReginBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private n:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$e;

.field public o:Landroid/os/Handler;

.field private p:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->j:I

    .line 3
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$a;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->o:Landroid/os/Handler;

    const-string v0, "content://sms/"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->p:Landroid/net/Uri;

    return-void
.end method

.method private N0()V
    .locals 6

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c0120

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090365

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f09036b

    .line 4
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v5, "\u8fd4\u56de"

    .line 6
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "\u7b49\u5f85"

    .line 7
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09100a

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "\u63a5\u6536\u77ed\u4fe1\u7a0d\u6709\u5ef6\u8fdf\uff0c\u786e\u8ba4\u8fd4\u56de\u5417\uff1f"

    .line 9
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v1, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$c;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$c;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 12
    new-instance v2, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$d;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$d;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->N0()V

    return-void
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method G0(Lcom/join/mgps/dto/AccountReginBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    const-string v1, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->showLoding()V

    .line 3
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/AccountRegisterRequestBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/AccountRegisterRequestBean;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountReginBean;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setMobile(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountReginBean;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setPassword(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountReginBean;->getSource()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setSource(I)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountReginBean;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setCode(I)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setAvatar_src(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setGender(I)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountReginBean;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setNick_name(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setAccount(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setMac(Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    .line 14
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 15
    invoke-static {v2}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->setSign(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->c:Lcom/join/mgps/rpc/b;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->a(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->isIs_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->getGame_list_permission()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/join/mgps/Util/UtilsMy;->A3(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->K(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getReward()Lcom/join/mgps/dto/RewardBean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->I0(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->showLodingDismis()V

    goto :goto_1

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 29
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method H0(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountMMSCheckCodebean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setMobile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setCode(I)V

    .line 8
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setSign(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->c:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->g(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->M0()V

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->showLodingDismis()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->showLodingDismis()V

    goto :goto_2

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method I0(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/RewardBean;->getOn_off()I

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->a:Lcom/MApplication;

    invoke-virtual {p2}, Lcom/MApplication;->l()V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->a1(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;->b(I)Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method J0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->K0()V

    return-void
.end method

.method K0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->h:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$f;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/MMSRequesBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/MMSRequesBean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setMobile(Ljava/lang/String;)V

    .line 5
    sget v2, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_REGISTER:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setType(I)V

    .line 6
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setSign(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->c:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MMSRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->i(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->F0()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method L0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->k:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->H0(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8f93\u5165\u683c\u5f0f\u6709\u8bef"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method M0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->m:Lcom/join/mgps/dto/AccountReginBean;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountReginBean;->setCode(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->m:Lcom/join/mgps/dto/AccountReginBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->G0(Lcom/join/mgps/dto/AccountReginBean;)V

    return-void
.end method

.method afterview()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const-string v0, " "

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->c:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/MApplication;

    iput-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->a:Lcom/MApplication;

    .line 3
    invoke-virtual {v1, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->i:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->l:Lcom/join/mgps/dialog/x0;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->g:Landroid/widget/TextView;

    const-string v3, "\u586b\u5199\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->m:Lcom/join/mgps/dto/AccountReginBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountReginBean;->getMobile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->b:Ljava/lang/String;

    const-string v3, "+86"

    const-string v4, ""

    .line 8
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->b:Ljava/lang/String;

    const/4 v3, 0x3

    .line 9
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->b:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->b:Ljava/lang/String;

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+86 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$f;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$f;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;JJ)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->h:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$f;

    .line 15
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public getSmsFromPhone()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "body"

    .line 2
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date >  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0x927c0

    sub-long/2addr v3, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->p:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u609f\u996d\u6e38\u620f\u5385"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\\d+"

    .line 9
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->N0()V

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->l:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->l:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
