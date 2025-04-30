.class public Lcom/join/mgps/activity/MyAccountChangePhoneActivity;
.super Lcom/BaseActivity;
.source "MyAccountChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00b2
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

.field j:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field k:Lcom/join/mgps/rpc/b;

.field l:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:Lcom/MApplication;

.field private n:Landroid/content/Context;

.field private o:Z

.field p:Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;

.field private q:Lcom/join/mgps/dialog/x0;

.field private r:Lcom/join/mgps/customview/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;)Lcom/join/mgps/customview/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    return-object p0
.end method


# virtual methods
.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->Q0()V

    :goto_0
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

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/CheckBindRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/CheckBindRequestBean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setUid(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setCode(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setMobile(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setToken(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->k:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CheckBindRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->F(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->R0(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_code()Ljava/lang/String;

    move-result-object v0

    const-string v2, "226"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->N0()V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->R0(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 18
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 20
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 23
    throw v1

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    :cond_4
    :goto_1
    return-void
.end method

.method H0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/CheckBindRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/CheckBindRequestBean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setUid(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setCode(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->k:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CheckBindRequestBean;->getParamsv2()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->y(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->Q0()V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->R0(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 19
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 22
    throw v1

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    :cond_4
    :goto_1
    return-void
.end method

.method I0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    const-string v1, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/AccountMMSCheckCodebean;

    invoke-direct {v2}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setMobile(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 6
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setCode(I)V

    .line 9
    invoke-static {v2}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setSign(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->k:Lcom/join/mgps/rpc/b;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/b;->g(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v3

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    iput-boolean v4, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->Q0()V

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->R0(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    goto :goto_2

    :cond_4
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method J0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMobile(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->n:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->m:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->l()V

    return-void
.end method

.method K0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->O0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->O0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method L0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/TextChange;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method M0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/TextChange;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method N0()V
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
    new-instance v1, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setNew_code(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setOld_code(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setNew_mobile(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setToken(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setUid(I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->k:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->q(Ljava/util/Map;)Lcom/join/mgps/dto/UploadResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadResultMainBean;->getData()Lcom/join/mgps/dto/AccountTokenSuccess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "\u4fee\u6539\u7ed1\u5b9a\u6210\u529f"

    .line 11
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->J0()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadResultMainBean;->getData()Lcom/join/mgps/dto/AccountTokenSuccess;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method O0(Ljava/lang/String;)V
    .locals 2
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
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setMobile(Ljava/lang/String;)V

    .line 4
    sget p1, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_BIND:I

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setType(I)V

    .line 5
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setSign(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->k:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MMSRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->i(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->p:Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string p1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u6210\u529f"

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method P0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->I0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->G0()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method Q0()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->h:Landroid/widget/TextView;

    const-string v1, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    const-string v1, "\u53d1\u9001\u4e00\u6761\u9a8c\u8bc1\u6d88\u606f"

    const/4 v2, 0x7

    const-string v3, "****"

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/16 v6, 0xb

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->d:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5df2\u5411\u539f\u53f7\u7801"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->l:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5df2\u5411\u65b0\u53f7\u7801"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->l:Ljava/lang/String;

    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->O0(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method R0(Ljava/lang/String;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->n:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c009a

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    const v3, 0x7f09100a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    const v4, 0x7f09036e

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

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
    new-instance p1, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$a;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$b;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->k:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->m:Lcom/MApplication;

    .line 3
    iput-object p0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->n:Landroid/content/Context;

    .line 4
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u66f4\u6362\u7ed1\u5b9a\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;JJ)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->p:Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->q:Lcom/join/mgps/dialog/x0;

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->Q0()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->O0(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->q:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->q:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->r:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean p2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->o:Z

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->Q0()V

    :goto_0
    return p2

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->q:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->q:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->q:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->q:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
