.class public Lcom/join/mgps/activity/BuildGameFromActivity;
.super Lcom/BaseActivity;
.source "BuildGameFromActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0025
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/content/Context;

.field e:[Landroid/text/InputFilter;

.field f:Lcom/join/mgps/rpc/b;

.field g:Lcom/join/mgps/dto/AccountBean;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->d:Landroid/content/Context;

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->h:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->i:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->f:Lcom/join/mgps/rpc/b;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->g:Lcom/join/mgps/dto/AccountBean;

    .line 6
    new-instance v0, Lcom/join/mgps/Util/d1;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Lcom/join/mgps/Util/d1;-><init>(ILandroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 7
    iput-object v1, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->e:[Landroid/text/InputFilter;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method F0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method G0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildGameFromActivity;->getData()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4e0d\u80fd\u4e3a\u7a7a\u4e14\u4e0d\u80fd\u8f93\u5165\u8868\u60c5\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method getData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v1, "uid"

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "token"

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "group_title"

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "device_id"

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "version"

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->f:Lcom/join/mgps/rpc/b;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->p(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->isState()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "\u521b\u5efa\u6210\u529f\uff01"

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->F0(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->getCode()I

    move-result v1

    const/16 v2, 0x2712

    if-ne v1, v2, :cond_1

    const-string v0, "\u6e38\u620f\u5355\u91cd\u590d\uff01"

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->F0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x2711

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->getCode()I

    move-result v0

    if-ne v1, v0, :cond_2

    const-string v0, "\u6e38\u620f\u5355\u4e0d\u5b58\u5728\uff01"

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->F0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u521b\u5efa\u5931\u8d25\uff01"

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->F0(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "\u6682\u65e0\u7f51\u7edc\uff01"

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->F0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method iv_back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
