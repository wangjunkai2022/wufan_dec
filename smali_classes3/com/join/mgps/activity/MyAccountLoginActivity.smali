.class public Lcom/join/mgps/activity/MyAccountLoginActivity;
.super Lcom/join/mgps/activity/BaseAccountActivity;
.source "MyAccountLoginActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04c0
.end annotation


# static fields
.field private static final B:I = 0x1

.field private static final C:I = 0x2

.field private static final D:I = 0x3

.field private static final E:I = 0x4

.field private static final F:I = 0x5


# instance fields
.field private A:Z

.field c:Lcom/MApplication;

.field d:Lcom/join/mgps/rpc/b;

.field e:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field g:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:Lcom/join/mgps/dialog/x0;

.field q:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field r:Z

.field private s:Landroid/os/Handler;

.field t:Lcom/join/mgps/rpc/b;

.field private u:J

.field v:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field w:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private x:Z

.field private y:Lcom/join/mgps/dto/AccountReginBean;

.field z:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/BaseAccountActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->n:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->o:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->r:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->x:Z

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/MyAccountLoginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->n:I

    return p1
.end method

.method static synthetic H0(Lcom/join/mgps/activity/MyAccountLoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->J0()V

    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/activity/MyAccountLoginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->o:I

    return p1
.end method

.method private J0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->o:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->n:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private K0(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/a2;

    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$f;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity$f;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;I)V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/a2;-><init>(Landroid/app/Activity;Lcom/join/mgps/dialog/a2$c;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string p1, "\u662f\u5426\u540c\u610f\u609f\u996d\u6e38\u620f\u5385\u300a\u7528\u6237\u4f7f\u7528\u534f\u8bae\u300b\u548c\u300a\u514d\u8d23\u58f0\u660e\u300b"

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/a2;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private authorize(Lcn/sharesdk/framework/Platform;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->u:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->u:J

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u3002"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->x:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->x:Z

    .line 7
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 9
    :cond_4
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 10
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLoding()V

    .line 13
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 16
    iput-boolean v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->x:Z

    .line 17
    iput-boolean v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->A:Z

    goto :goto_0

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->A:Z

    :goto_0
    return-void
.end method


# virtual methods
.method L0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/MyAccountForgetPassActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method M0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->K0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    :cond_0
    return-void
.end method

.method N0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->K0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    :cond_0
    return-void
.end method

.method O0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->K0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    :cond_0
    return-void
.end method

.method P0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$"

    .line 3
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/join/mgps/Util/g2;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4

    invoke-static {v0}, Lcom/join/mgps/Util/g2;->a(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x18

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 6
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/MyAccountLoginActivity;->K0(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->getLogin(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7528\u6237\u540d\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51651\u81f324\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57\u6216\u6c49\u5b57"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method Q0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method R0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->K0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->h1(Landroid/content/Context;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->a(I)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->startForResult(I)Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method S0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->setUid(I)V

    const-string v2, ""

    .line 5
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->setToke(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->t:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->j(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    move-result v0

    const/16 v1, 0x321

    if-ne v0, v1, :cond_1

    const-string v0, "\u4f60\u7684\u767b\u5f55\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u3002"

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method afterView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->d:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->t:Lcom/join/mgps/rpc/b;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->c:Lcom/MApplication;

    .line 4
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    const-string v0, "\u767b\u5f55"

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->F0(Ljava/lang/String;)V

    .line 8
    iput-object p0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->z:Landroid/content/Context;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->m:Landroid/widget/TextView;

    const-string v1, "\u300a\u609f\u996d\u6e38\u620f\u5385\u7528\u6237\u4f7f\u7528\u534f\u8bae\u300b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$a;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$b;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$c;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$d;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->w:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->loginPermissHasallow()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->k:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->k:Landroid/widget/CheckBox;

    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$e;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->init()V

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

.method getLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountLoginRequestbean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountLoginRequestbean;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountLoginRequestbean;->setAccount(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/AccountLoginRequestbean;->setPassword(Ljava/lang/String;)V

    const-string p1, ""

    .line 6
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountLoginRequestbean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountLoginRequestbean;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->d:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginRequestbean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->k(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountresultData;->isIs_success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountresultData;->getUser_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountBean;

    .line 12
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/AccountBean;->setPass(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2, v1, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountresultData;->getGame_list_permission()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->A3(Landroid/content/Context;Ljava/util/List;)V

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->K(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountresultData;->getUser_info()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginSuccess(Lcom/join/mgps/dto/AccountBean;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 23
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->h1(Landroid/content/Context;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->a(I)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->b(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    move-result-object p1

    const/16 v0, 0x2711

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->startForResult(I)Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iput-boolean v6, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->A:Z

    const-string v1, ""

    .line 3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/ShareDataBean;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ShareDataBean;->getRes()Ljava/util/HashMap;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ShareDataBean;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    .line 8
    sget-object v8, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "gender"

    const-string v10, "nickname"

    const/4 v11, 0x1

    if-eqz v8, :cond_5

    :goto_0
    const/4 v7, 0x1

    .line 9
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 11
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 12
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    :cond_2
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 14
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 15
    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "\u7537"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x2

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 16
    :goto_2
    sget-object v12, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 17
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 19
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 20
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_7
    const-string v12, "sex"

    .line 21
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 22
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    :cond_8
    const/4 v8, 0x2

    .line 24
    :cond_9
    sget-object v10, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x3

    .line 25
    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "name"

    .line 27
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 28
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    :cond_b
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 30
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 31
    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "m"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_4

    :cond_c
    const/4 v7, 0x2

    goto :goto_4

    :cond_d
    move-object v3, v1

    move v4, v7

    const/4 v1, 0x3

    goto :goto_5

    :cond_e
    move-object v3, v1

    move v4, v7

    move v1, v8

    .line 32
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLoding()V

    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v2, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/ShareDataBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ShareDataBean;->getUserIcon()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountLoginActivity;->login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    .line 36
    :cond_f
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u6388\u6743"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_6
    return v6
.end method

.method init()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->v:I

    const/16 v1, 0x2bd

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->S0()V

    .line 3
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/AccountReginBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountReginBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->y:Lcom/join/mgps/dto/AccountReginBean;

    .line 4
    iget v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->q:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountReginBean;->setSource(I)V

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->s:Landroid/os/Handler;

    return-void
.end method

.method joinDevice()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->z:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->t:Lcom/join/mgps/rpc/b;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->R(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->isResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->getMsg()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method login()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->u:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->u:J

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->x:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity_;->g1(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountLoginActivity_$x;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->q:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity_$x;->b(I)Lcom/join/mgps/activity/MyAccountLoginActivity_$x;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 6
    :try_start_0
    new-instance p4, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-direct {p4}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;-><init>()V

    .line 7
    invoke-virtual {p4, p2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setUnique_id(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setType(I)V

    .line 9
    iget p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->q:I

    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ""

    if-nez p5, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setAvatar_src(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p4, p5}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setAvatar_src(Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p4, p2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setGender(I)V

    .line 13
    invoke-virtual {p4, p3}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setNickname(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMac(Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    .line 16
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 17
    invoke-static {p4}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSign(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->t:Lcom/join/mgps/rpc/b;

    invoke-virtual {p4}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/b;->e(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getError()I

    move-result p2

    if-nez p2, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object p3

    invoke-virtual {p2, p3, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountLoginresultData;->getGame_list_permission()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->A3(Landroid/content/Context;Ljava/util/List;)V

    .line 23
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->K(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getReward()Lcom/join/mgps/dto/RewardBean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginSuccess(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_code()I

    move-result p2

    const/16 p3, 0x3e9

    if-ne p2, p3, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 27
    invoke-virtual {p0, p4}, Lcom/join/mgps/activity/MyAccountLoginActivity;->goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultBean;->getData()Lcom/join/mgps/dto/AccountLoginresultData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 30
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u767b\u5f55\u5931\u8d25"

    .line 33
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showMessage(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    goto :goto_1

    :cond_4
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 35
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showMessage(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    :goto_1
    return-void
.end method

.method loginSuccess(Lcom/join/mgps/dto/AccountBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->w:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clipboard"

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 4
    sget-object v2, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sput-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->z:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p1

    const-string v0, "accountloginSuccess"

    const-string v1, "xxx"

    invoke-virtual {p1, v0, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->joinDevice()V

    const/16 p1, 0x271b

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->c:Lcom/MApplication;

    invoke-virtual {p1}, Lcom/MApplication;->l()V

    return-void
.end method

.method loginSuccess(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 12
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clipboard"

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 14
    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 15
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/RewardBean;->getOn_off()I

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->joinDevice()V

    .line 19
    iget p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->q:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->z:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p1

    const-string p2, "accountloginSuccess"

    const-string v0, "xxx"

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 23
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x2711

    if-ne p1, p3, :cond_0

    if-ne p2, p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->x:Z

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->s:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->x:Z

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p2

    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/join/mgps/dto/ShareDataBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ShareDataBean;-><init>()V

    .line 7
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ShareDataBean;->setType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/ShareDataBean;->setUserId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/ShareDataBean;->setRes(Ljava/util/HashMap;)V

    .line 10
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/ShareDataBean;->setUserIcon(Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x4

    .line 13
    iput p2, p1, Landroid/os/Message;->what:I

    .line 14
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->s:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->x:Z

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WechatClientNotExistException"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WechatTimelineNotSupportedException"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WechatFavoriteNotSupportedException"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u6388\u6743\u5931\u8d25"

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\u5ba2\u7aef\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef\u3002"

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showMessage(Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0x8

    if-ne p2, p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->s:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->r:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->r:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->A:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method shengming()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/static/wf_mianze.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string v1, "\u514d\u8d23\u58f0\u660e"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->z:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->r:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->p:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method xieyi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/static/yhxkxy.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string v1, "\u7528\u6237\u4f7f\u7528\u534f\u8bae"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->z:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
