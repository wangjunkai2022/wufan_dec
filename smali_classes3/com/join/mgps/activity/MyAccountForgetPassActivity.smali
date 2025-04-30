.class public Lcom/join/mgps/activity/MyAccountForgetPassActivity;
.super Lcom/join/mgps/activity/BaseAccountActivity;
.source "MyAccountForgetPassActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04be
.end annotation


# instance fields
.field c:Lcom/MApplication;

.field d:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/rpc/b;

.field private f:Ljava/lang/String;

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private h:Lcom/join/mgps/dialog/x0;

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/BaseAccountActivity;-><init>()V

    return-void
.end method


# virtual methods
.method G0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method H0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->i:J

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->J0()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u683c\u5f0f\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method I0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->f:Ljava/lang/String;

    const-string v2, "phonenumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method J0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/MMSRequesBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/MMSRequesBean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setMobile(Ljava/lang/String;)V

    .line 5
    sget v2, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_FORGOT:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setType(I)V

    .line 6
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setSign(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->e:Lcom/join/mgps/rpc/b;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->I0()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    const/16 v3, 0x259

    if-ne v2, v3, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5..."

    .line 15
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->error(Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->showLodingDismis()V

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->e:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->c:Lcom/MApplication;

    .line 3
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    const-string v0, "\u77ed\u4fe1\u627e\u56de\u5bc6\u7801"

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->F0(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->h:Lcom/join/mgps/dialog/x0;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MyAccountForgetPassActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountForgetPassActivity$a;-><init>(Lcom/join/mgps/activity/MyAccountForgetPassActivity;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->h:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountForgetPassActivity;->h:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
