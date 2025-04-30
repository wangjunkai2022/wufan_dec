.class public Lcom/join/mgps/activity/MYAccountReginActivity;
.super Lcom/BaseFragmentActivity;
.source "MYAccountReginActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04c1
.end annotation


# instance fields
.field a:Lcom/MApplication;

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

.field e:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/rpc/b;

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:Lcom/join/mgps/dialog/x0;

.field n:Lcom/join/mgps/dto/AccountReginBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->i:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->j:I

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->k:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->l:J

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/MYAccountReginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->k:I

    return p1
.end method

.method static synthetic E0(Lcom/join/mgps/activity/MYAccountReginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->L0()V

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/activity/MYAccountReginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->i:I

    return p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/MYAccountReginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->j:I

    return p1
.end method

.method private L0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->k:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->j:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->h:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method H0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u6ce8\u518c\u5931\u8d25"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/MRegisterRequesBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/MRegisterRequesBean;-><init>()V

    .line 4
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/MRegisterRequesBean;->setMobile(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MRegisterRequesBean;->setAccount(Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MRegisterRequesBean;->setSign(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->f:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MRegisterRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->T(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/MYAccountReginActivity;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result p1

    const/16 p2, 0x259

    if-ne p1, p2, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e..."

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->showLodingDismis()V

    goto :goto_1

    :cond_4
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->n:Lcom/join/mgps/dto/AccountReginBean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/mgps/dto/AccountReginBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountReginBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->n:Lcom/join/mgps/dto/AccountReginBean;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->n:Lcom/join/mgps/dto/AccountReginBean;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountReginBean;->setNickname(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->n:Lcom/join/mgps/dto/AccountReginBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/AccountReginBean;->setMobile(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->n:Lcom/join/mgps/dto/AccountReginBean;

    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/AccountReginBean;->setPassword(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;->X0(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$m;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->n:Lcom/join/mgps/dto/AccountReginBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$m;->a(Lcom/join/mgps/dto/AccountReginBean;)Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$m;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method K0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->l:J

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[a-zA-Z0-9_\u4e00-\u9fa5]*$"

    .line 6
    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7528\u6237\u540d\u4e3a\u4e2d\u6587/\u5b57\u6bcd/\u6570\u5b57/\u4e0b\u5212\u7ebf\n\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-gt v3, v4, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_3

    const-string v3, "[0-9]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4e3a\u4fdd\u62a4\u4f60\u7684\u4fe1\u606f\u5b89\u5168\uff0c\u7528\u6237\u540d\u4e0d\u80fd\u7c7b\u4f3c\u624b\u673a\u53f7\u54e6"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_7

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 14
    invoke-virtual {p0, v2, v0, v1}, Lcom/join/mgps/activity/MYAccountReginActivity;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 15
    :cond_6
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_7
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u683c\u5f0f\u6709\u8bef"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 17
    :cond_8
    :goto_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7528\u6237\u540d\u4e3a1~12\u4e2a\u5b57\u7b26,\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method afterView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->f:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->a:Lcom/MApplication;

    .line 3
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 4
    iput-object p0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->o:Landroid/content/Context;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u624b\u673a\u53f7\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->m:Lcom/join/mgps/dialog/x0;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MYAccountReginActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MYAccountReginActivity$a;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MYAccountReginActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MYAccountReginActivity$b;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/MYAccountReginActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MYAccountReginActivity$c;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity;)V

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
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->m:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->m:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
