.class public Lcom/join/mgps/activity/AccountUpgradeActivity;
.super Lcom/BaseActivity;
.source "AccountUpgradeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AccountUpgradeActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c03e5
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/rpc/b;

.field private j:Lcom/join/mgps/activity/AccountUpgradeActivity$c;

.field k:Lcom/join/mgps/customview/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/AccountUpgradeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->G0()V

    return-void
.end method

.method private G0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u5584\u8d44\u6599\uff0c\u4eab\u53d7\u66f4\u591a\u7279\u6743"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private N0(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "^[1][0-9]{10}$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u9519\u8bef\uff01"

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private getChineseCount(Ljava/lang/String;)I
    .locals 4

    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getStringLength(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->getChineseCount(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private matchStringLength(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->getStringLength(Ljava/lang/String;)I

    move-result p1

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method H0(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->N0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->O0()V

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/SendMobileCodeRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/SendMobileCodeRequestBean;-><init>()V

    const/16 v2, 0x8

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/SendMobileCodeRequestBean;->setMobile(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SendMobileCodeRequestBean;->setType(I)V

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/SendMobileCodeRequestBean;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->i:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SendMobileCodeRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->i(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->K0()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->O0()V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->O0()V

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->O0()V

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->O0()V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110206

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method I0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->j:Lcom/join/mgps/activity/AccountUpgradeActivity$c;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->H0(Ljava/lang/String;)V

    return-void
.end method

.method K0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method L0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->Q0()V

    return-void
.end method

.method M0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->j:Lcom/join/mgps/activity/AccountUpgradeActivity$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->j:Lcom/join/mgps/activity/AccountUpgradeActivity$c;

    invoke-virtual {v0}, Lcom/join/mgps/activity/AccountUpgradeActivity$c;->onFinish()V

    :cond_0
    return-void
.end method

.method P0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c009a

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    const v3, 0x7f09100a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    const v4, 0x7f09036e

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    const v5, 0x7f090370

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u63d0\u793a"

    .line 8
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u8be5\u624b\u673a\u5df2\u7ed1\u5b9a\uff0c\u662f\u5426\u89e3\u9664\u7ed1\u5b9a\u5173\u7cfb\uff1f"

    .line 9
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "*\u7ed1\u5b9a\u6210\u529f\u540e\u5c06\u53d1\u9001\u8d26\u53f7\u5230\u4f60\u7684\u624b\u673a"

    .line 10
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u89e3\u9664\u7ed1\u5b9a"

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u53d6\u6d88"

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v2, Lcom/join/mgps/activity/AccountUpgradeActivity$a;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/join/mgps/activity/AccountUpgradeActivity$a;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/join/mgps/activity/AccountUpgradeActivity$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity$b;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method Q0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    move-object v1, p0

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/activity/AccountUpgradeActivity;->R0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->touristLogin()V

    :goto_0
    return-void
.end method

.method R0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    const-string v1, "\u4fe1\u606f\u5b8c\u5584\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->isLogined(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->touristLogin()V

    return-void

    :cond_0
    const/4 v2, 0x1

    const/16 v3, 0x14

    .line 4
    invoke-direct {p0, p1, v2, v3}, Lcom/join/mgps/activity/AccountUpgradeActivity;->matchStringLength(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "\u7528\u6237\u540d\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51651\u81f324\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57\u6216\u6c49\u5b57"

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x6

    const/16 v3, 0x10

    .line 5
    invoke-direct {p0, p2, v2, v3}, Lcom/join/mgps/activity/AccountUpgradeActivity;->matchStringLength(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    invoke-direct {p0, p3}, Lcom/join/mgps/activity/AccountUpgradeActivity;->N0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {p4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    .line 10
    :cond_5
    :try_start_0
    new-instance v3, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;-><init>()V

    const-string v4, "2"

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v3, p5}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setSubmit_number(I)V

    .line 13
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setVersion(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setMac(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setSource(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setUid(I)V

    .line 18
    invoke-virtual {v3, p3}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setMobile(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, p4}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setCode(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setNickname(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, p2}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setPassword(Ljava/lang/String;)V

    .line 22
    invoke-static {v3}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v3, p5}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 23
    iget-object p5, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->i:Lcom/join/mgps/rpc/b;

    invoke-virtual {v3}, Lcom/join/mgps/dto/TouristPerfectInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/join/mgps/rpc/b;->L(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p5

    if-eqz p5, :cond_8

    .line 24
    invoke-virtual {p5}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v0

    if-nez v0, :cond_8

    .line 25
    invoke-virtual {p5}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {p5}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->M0()V

    goto :goto_0

    .line 29
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->O0()V

    .line 30
    invoke-virtual {p5}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/join/mgps/dto/AccountTokenSuccess;

    if-nez p5, :cond_7

    return-void

    .line 31
    :cond_7
    invoke-virtual {p5}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p5}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p5}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_code()Ljava/lang/String;

    move-result-object p5

    const-string v0, "102"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_a

    const/4 v7, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 33
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/activity/AccountUpgradeActivity;->P0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 34
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->O0()V

    .line 35
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->O0()V

    .line 38
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110206

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountUpgradeActivity$c;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountUpgradeActivity$c;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity;JJ)V

    iput-object v6, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->j:Lcom/join/mgps/activity/AccountUpgradeActivity$c;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->i:Lcom/join/mgps/rpc/b;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->J0()V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->k:Lcom/join/mgps/customview/t;

    :cond_1
    return-void
.end method

.method touristLogin()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    const-string v1, "\u4fe1\u606f\u5b8c\u5584\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->isLogined(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/TouristLoginRequestBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    const-string v3, "2"

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 10
    invoke-static {v2}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->i:Lcom/join/mgps/rpc/b;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/b;->s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->L0()V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
