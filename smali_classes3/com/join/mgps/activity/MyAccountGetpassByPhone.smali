.class public Lcom/join/mgps/activity/MyAccountGetpassByPhone;
.super Lcom/join/mgps/activity/BaseAccountActivity;
.source "MyAccountGetpassByPhone.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04bf
.end annotation


# instance fields
.field c:Lcom/MApplication;

.field d:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/rpc/b;

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Lcom/join/mgps/dialog/x0;

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/BaseAccountActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->j:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->k:I

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/MyAccountGetpassByPhone;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->j:I

    return p1
.end method

.method static synthetic H0(Lcom/join/mgps/activity/MyAccountGetpassByPhone;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->K0()V

    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/activity/MyAccountGetpassByPhone;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->k:I

    return p1
.end method

.method private K0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->j:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->k:I

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method J0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u518d\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->m:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->m:J

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->L0(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4e24\u6b21\u8f93\u5165\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 13
    :cond_5
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->showLoding()V

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountGetBackRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountGetBackRequest;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setMobile(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setPassword(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->i:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 7
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setCode(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->f:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountGetBackRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/rpc/b;->Y(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->success()V

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->error(Ljava/lang/String;)V

    .line 17
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->showLodingDismis()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->showLodingDismis()V

    goto :goto_2

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->error(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->f:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->c:Lcom/MApplication;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->l:Lcom/join/mgps/dialog/x0;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/BaseAccountActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u8bbe\u7f6e\u65b0\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MMSCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->i:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MyAccountGetpassByPhone$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountGetpassByPhone$a;-><init>(Lcom/join/mgps/activity/MyAccountGetpassByPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MyAccountGetpassByPhone$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountGetpassByPhone$b;-><init>(Lcom/join/mgps/activity/MyAccountGetpassByPhone;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->l:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->l:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method success()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u91cd\u7f6e\u5bc6\u7801\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountGetpassByPhone;->c:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->l()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/MyAccountLoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
