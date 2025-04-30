.class public Lcom/join/mgps/activity/MyAccountBindPhoneActivity;
.super Lcom/BaseActivity;
.source "MyAccountBindPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountBindPhoneActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c009c
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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

.field i:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/rpc/b;

.field k:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private l:Landroid/content/Context;

.field private m:Lcom/join/mgps/dialog/x0;

.field private n:Lcom/join/mgps/customview/t;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field q:Lcom/join/mgps/activity/MyAccountBindPhoneActivity$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/MyAccountBindPhoneActivity;)Lcom/join/mgps/customview/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    return-object p0
.end method


# virtual methods
.method F0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method G0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountBindPhoneRequestbean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountBindPhoneRequestbean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBindPhoneRequestbean;->setUid(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBindPhoneRequestbean;->setCode(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBindPhoneRequestbean;->setMobile(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBindPhoneRequestbean;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBindPhoneRequestbean;->setToken(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->j:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBindPhoneRequestbean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->M(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLodingDismis()V

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u7ed1\u5b9a\u6210\u529f"

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->I0()V

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLodingDismis()V

    .line 18
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLodingDismis()V

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    .line 21
    throw v1

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLodingDismis()V

    :goto_1
    return-void
.end method

.method H0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/CheckBindRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/CheckBindRequestBean;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CheckBindRequestBean;->setUid(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CheckBindRequestBean;->setCode(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CheckBindRequestBean;->setMobile(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CheckBindRequestBean;->setToken(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->j:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckBindRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->F(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->M0(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "226"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->G0()V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->M0(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLodingDismis()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLodingDismis()V

    .line 22
    throw v0

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLodingDismis()V

    :goto_2
    return-void
.end method

.method I0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->k:Lcom/join/mgps/dto/AccountBean;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMobile(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->k:Lcom/join/mgps/dto/AccountBean;

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->l:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method J0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->o:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->p:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->K0()V

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
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/MMSRequesBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/MMSRequesBean;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setMobile(Ljava/lang/String;)V

    .line 4
    sget v2, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_BIND:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setType(I)V

    .line 5
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setSign(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->j:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MMSRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->i(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->q:Lcom/join/mgps/activity/MyAccountBindPhoneActivity$c;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u6210\u529f"

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method L0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->o:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->p:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->p:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->H0()V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u683c\u5f0f\u6709\u8bef"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method M0(Ljava/lang/String;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->l:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c009a

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    const v3, 0x7f09100a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    const v4, 0x7f09036e

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    const v5, 0x7f090370

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u63d0\u793a"

    .line 8
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8be5\u624b\u673a\u53f7\u5df2\u4e0e\u8d26\u53f7\u201c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u201d\u7ed1\u5b9a\uff0c\u662f\u5426\u89e3\u9664\u7ed1\u5b9a\u5173\u7cfb\uff1f"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "*\u7ed1\u5b9a\u6210\u529f\u540e\u5c06\u53d1\u9001\u8d26\u53f7\u5230\u4f60\u7684\u624b\u673a"

    .line 10
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u89e3\u9664\u7ed1\u5b9a"

    .line 11
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u53d6\u6d88"

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance p1, Lcom/join/mgps/activity/MyAccountBindPhoneActivity$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity$a;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/join/mgps/activity/MyAccountBindPhoneActivity$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity$b;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method afterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->j:Lcom/join/mgps/rpc/b;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->l:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->k:Lcom/join/mgps/dto/AccountBean;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->m:Lcom/join/mgps/dialog/x0;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity$c;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity$c;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity;JJ)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->q:Lcom/join/mgps/activity/MyAccountBindPhoneActivity$c;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->m:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->m:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->n:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->m:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->m:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->m:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->m:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
