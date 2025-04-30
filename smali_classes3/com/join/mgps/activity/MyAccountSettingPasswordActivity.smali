.class public Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;
.super Lcom/BaseActivity;
.source "MyAccountSettingPasswordActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0583
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
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

.field f:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/b;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method F0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->g:Lcom/join/mgps/dto/AccountBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPwd_set_up(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->g:Lcom/join/mgps/dto/AccountBean;

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->i:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method G0(Ljava/lang/String;Ljava/lang/String;)V
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
    new-instance v1, Lcom/join/mgps/dto/ModifyPasswordRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ModifyPasswordRequestBean;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->setToken(Ljava/lang/String;)V

    const-string v2, ""

    .line 4
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->setNew_passwd(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->setOld_passwd(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->setUid(I)V

    .line 8
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->setSign(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->h:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/b;->v(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result p2

    if-nez p2, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "\u4fee\u6539\u5bc6\u7801\u6210\u529f"

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->F0()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V

    :goto_0
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
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/SetPasswordRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/SetPasswordRequestBean;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SetPasswordRequestBean;->setToken(Ljava/lang/String;)V

    const-string v2, ""

    .line 4
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SetPasswordRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/SetPasswordRequestBean;->setNew_passwd(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/SetPasswordRequestBean;->setUid(I)V

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/SetPasswordRequestBean;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->h:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SetPasswordRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->u(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u8bbe\u7f6e\u79c1\u5bc6\u6210\u529f"

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->F0()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method I0()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getPwd_set_up()I

    move-result v0

    const-string v1, "\u4e24\u6b21\u8f93\u5165\u4e0d\u540c\u54e6\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    const/16 v2, 0x10

    const-string v3, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    const/4 v4, 0x6

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->H0(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v5, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u539f\u5bc6\u7801"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u786e\u8ba4\u65b0\u5bc6\u7801"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65b0\u5bc6\u7801\u4e0d\u80fd\u548c\u539f\u5bc6\u7801\u4e00\u81f4"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v4, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_8

    goto :goto_1

    .line 20
    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    invoke-virtual {p0, v5, v0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->G0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_a
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->h:Lcom/join/mgps/rpc/b;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->i:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getPwd_set_up()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u8bbe\u7f6e\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
