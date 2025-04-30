.class public Lcom/join/mgps/activity/AccountBindPhoneNew;
.super Lcom/join/mgps/activity/BaseAccountActivity;
.source "AccountBindPhoneNew.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c009d
.end annotation


# instance fields
.field A:I

.field private B:Landroid/os/Handler;

.field c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field d:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Lcom/join/mgps/rpc/b;

.field t:Landroid/app/Dialog;

.field u:I

.field v:I

.field w:Lcom/join/mgps/dto/AccountBean;

.field x:Lcom/join/mgps/dto/AccountBean;

.field y:Z

.field z:Lcom/join/mgps/dto/AccountAnonymousReginRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/BaseAccountActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->u:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->v:I

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->y:Z

    const/16 v0, 0x3c

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->A:I

    .line 6
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$f;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->B:Landroid/os/Handler;

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/AccountBindPhoneNew;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->showKeyborad(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/AccountBindPhoneNew;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->B:Landroid/os/Handler;

    return-object p0
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

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->getChineseCount(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private matchStringLength(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->getStringLength(Ljava/lang/String;)I

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

.method private showKeyborad(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const-string p1, "input_method"

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method


# virtual methods
.method I0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setMobile(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setCode(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setDevice_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setMac(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->B(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    new-instance v0, Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setMobile(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setCode(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setPassword(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->S0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    .line 19
    throw v0

    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    :goto_2
    return-void
.end method

.method J0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/16 v0, 0x3c

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->A:I

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->Q0()V

    return-void
.end method

.method K0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountChangeNickNameRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setUid(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setNick_name(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setAvatar_src(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/rpc/b;->G(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x2711

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    .line 16
    throw p1

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    :goto_2
    return-void
.end method

.method M0(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountChangeNickNameRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setUid(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setNick_name(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setAvatar_src(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/rpc/b;->Z(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x2711

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    .line 16
    throw p1

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    :goto_2
    return-void
.end method

.method N0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/join/mgps/activity/AccountBindPhoneNew;->matchStringLength(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->y:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->I0()V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneRegin()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRegin()V

    :goto_0
    return-void
.end method

.method O0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->x:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setUid(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->x:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setToken(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setNick_name(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setDevice_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setMac(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->getParamsPhone()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/b;->H(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->joinDevice()V

    const/16 p1, 0x2711

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    .line 19
    throw p1

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    :goto_2
    return-void
.end method

.method P0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->x:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setUid(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->x:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setToken(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getUnique_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setUnique_id(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setType(I)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setNick_name(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setDevice_id(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setMac(Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setSign(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->getParamsThird()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/b;->o(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->joinDevice()V

    const/16 p1, 0x2711

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    .line 21
    throw p1

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 22
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    :goto_2
    return-void
.end method

.method Q0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountSendRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountSendRequest;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountSendRequest;->setMobile(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountSendRequest;->setUid(I)V

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountSendRequest;->setSign(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountSendRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->C(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->R0()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    .line 14
    throw v0

    :cond_3
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    :goto_2
    return-void
.end method

.method R0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u8bbe\u7f6e\u5bc6\u7801"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->F0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->n:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->B:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method S0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u8bbe\u7f6e\u5934\u50cf/\u6635\u79f0"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->F0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->z:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const-string v0, "\u7ed1\u5b9a\u624b\u673a\u53f7"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->F0(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->t:Landroid/app/Dialog;

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->x:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->y:Z

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$a;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$b;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$c;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$d;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$e;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/join/mgps/Util/n;->g(Landroid/widget/EditText;)V

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

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

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
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

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

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->K(Landroid/content/Context;)V

    return-void
.end method

.method nextStep()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->Q0()V

    return-void
.end method

.method nickNameBution()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x14

    .line 2
    invoke-direct {p0, v0, v1, v2}, Lcom/join/mgps/activity/AccountBindPhoneNew;->matchStringLength(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "\u7528\u6237\u540d\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51651\u81f324\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57\u6216\u6c49\u5b57"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->t:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->y:Z

    if-eqz v2, :cond_2

    .line 6
    iget v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->d:I

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->z:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->O0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->z:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->P0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    goto :goto_0

    .line 9
    :cond_2
    iget v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->d:I

    if-ne v2, v1, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->L0(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->M0(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x2711

    if-ne p1, p3, :cond_0

    if-ne p2, p3, :cond_0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    return-void
.end method

.method phoneRegin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;-><init>()V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSource(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMobile(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setPassword(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setCode(Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/MApplication;->w0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setShare_code(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMac(Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    .line 10
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 11
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSign(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->U(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->joinDevice()V

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->showFinishPage(Lcom/join/mgps/dto/AccountBean;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
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
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    .line 22
    throw v0

    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    :goto_2
    return-void
.end method

.method showFinishPage(Lcom/join/mgps/dto/AccountBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u8bbe\u7f6e\u5934\u50cf/\u6635\u79f0"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->F0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->d:I

    const v1, 0x7f080c9f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->l:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->l:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method thirdRegin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSource(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMobile(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setPassword(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setCode(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    sget-object v2, Lcom/MApplication;->w0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setShare_code(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMac(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->s:Lcom/join/mgps/rpc/b;

    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->N(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->joinDevice()V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->showFinishPage(Lcom/join/mgps/dto/AccountBean;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    .line 21
    throw v0

    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    :goto_2
    return-void
.end method

.method userIcon()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/MGChooseIconActivity_;->V0(Landroid/content/Context;)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;->b(I)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;->startForResult(I)Lorg/androidannotations/api/builder/f;

    return-void
.end method
