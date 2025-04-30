.class public Lcom/join/mgps/activity/GameCommentActivity;
.super Lcom/BaseActivity;
.source "GameCommentActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c02d5
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/content/Context;

.field private C:Lcom/join/mgps/adapter/GameCommentAdapter;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private E:Z

.field private F:Lcom/join/mgps/dto/AccountBean;

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field J:I

.field K:Landroid/os/Handler;

.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
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

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/android/app/common/view/ClearEditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n0:Landroid/view/ViewTreeObserver;

.field o:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;"
        }
    .end annotation
.end field

.field p:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p0:Lcom/join/mgps/dialog/x0;

.field q:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q0:Lcom/join/mgps/customview/t;

.field r:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Lcom/join/mgps/customview/KeyboardListenLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Lcom/join/mgps/rpc/d;

.field w:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field x:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field y:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field z:Lcom/join/mgps/dto/InformationCommentBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->E:Z

    .line 4
    new-instance v0, Lcom/join/mgps/activity/GameCommentActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameCommentActivity$a;-><init>(Lcom/join/mgps/activity/GameCommentActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->K:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->p0:Lcom/join/mgps/dialog/x0;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->q0:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/GameCommentActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->H:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->I:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic H0(Lcom/join/mgps/activity/GameCommentActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameCommentActivity;->E:Z

    return p0
.end method

.method static synthetic I0(Lcom/join/mgps/activity/GameCommentActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    return p1
.end method

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

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


# virtual methods
.method J0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/InformationCommentBean;

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->isTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;

    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->o0:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;

    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->o0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 10
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v2, v0, v7}, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->o0:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method K0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4e0d\u80fd\u53d1\u8868\u7a7a\u5b57\u7b26\u4e32"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u53d1\u8868\u8bc4\u8bba\u4e0d\u80fd\u5c0f\u4e8e4\u4e2a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "input_method"

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/GameCommentActivity;->S0(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->p0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method M0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->E:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->N0()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->v:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->y0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/InformationCommentBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBack;->getHot()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBack;->getAll()Ljava/util/List;

    move-result-object v2

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 10
    new-instance v5, Lcom/join/mgps/dto/InformationCommentBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 11
    invoke-virtual {v5, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setIs_hot(I)V

    .line 12
    invoke-virtual {v5, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setTitle(Z)V

    .line 13
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v2, :cond_2

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 16
    iget v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    if-ne v3, v0, :cond_1

    .line 17
    new-instance v3, Lcom/join/mgps/dto/InformationCommentBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    const/4 v5, 0x2

    .line 18
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/InformationCommentBean;->setIs_hot(I)V

    .line 19
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setTitle(Z)V

    .line 20
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    :cond_2
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameCommentActivity;->Z0(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->b1()V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLodingFailed()V

    .line 26
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->E:Z

    goto :goto_2

    .line 27
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->b1()V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLodingFailed()V

    .line 29
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->E:Z

    .line 30
    throw v0

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->b1()V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLodingFailed()V

    :goto_2
    return-void
.end method

.method public N0()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->F:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->G:I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    const/16 v3, 0xa

    iget v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->G:I

    iget-object v5, p0, Lcom/join/mgps/activity/GameCommentActivity;->x:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameCommentListRequestBean(IIILjava/lang/String;[I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->M0()V

    return-void
.end method

.method P0(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->a1(Lcom/join/mgps/dto/InformationCommentBean;)V

    return-void
.end method

.method Q0(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8bc4\u8bba\u5931\u8d25"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->Y0()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->L0()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/GameCommentActivity;->R0(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->L0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->L0()V

    .line 10
    throw p1

    :cond_1
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public R0(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x7d0

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/j;->q()Ljava/lang/String;

    move-result-object v7

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->x:Ljava/lang/String;

    iget v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->G:I

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/join/mgps/Util/UtilsMy;->r1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v9

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->postGameCommentRequestBean(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method S0(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8bc4\u8bba\u5931\u8d25"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->Y0()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->L0()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/GameCommentActivity;->T0(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/GameCommentActivity;->v:Lcom/join/mgps/rpc/d;

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/d;->n(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result p2

    const/16 v1, 0x2c2

    if-ne p2, v1, :cond_1

    const p1, 0x7f1103b4

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->L0()V

    return-void

    .line 11
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result p2

    const/16 v1, 0x326

    if-ne p2, v1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getError_info()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    const-string p2, "\u8bc4\u8bba\u6210\u529f"

    .line 14
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->X0()V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommitContextDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommitContextDataBean;->getIs_reward()Lcom/join/mgps/dto/RewardBean;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->toastData(Lcom/join/mgps/dto/RewardBean;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->L0()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f02\u5e38"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 24
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->L0()V

    .line 25
    throw p1

    :cond_5
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 26
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public T0(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15

    move-object v0, p0

    .line 1
    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x7d0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 2
    iget-object v2, v0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/j;->q()Ljava/lang/String;

    move-result-object v8

    .line 3
    iget-object v2, v0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    iget v4, v0, Lcom/join/mgps/activity/GameCommentActivity;->G:I

    iget-object v5, v0, Lcom/join/mgps/activity/GameCommentActivity;->x:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/join/mgps/Util/UtilsMy;->r1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v10

    iget-object v12, v0, Lcom/join/mgps/activity/GameCommentActivity;->H:Ljava/lang/String;

    iget-object v13, v0, Lcom/join/mgps/activity/GameCommentActivity;->I:Ljava/lang/String;

    iget v14, v0, Lcom/join/mgps/activity/GameCommentActivity;->J:I

    move-object/from16 v11, p2

    invoke-virtual/range {v3 .. v14}, Lcom/join/mgps/Util/RequestBeanUtil;->postGameCommentRelpyRequestBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    return-object v1
.end method

.method U0(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u70b9\u8d5e\u5931\u8d25"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameCommentActivity;->V0(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->v:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/d;->b(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "\u4f60\u5df2\u8d5e\u8fc7"

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 8
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PariseBackData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PariseBackData;->isVal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->a1(Lcom/join/mgps/dto/InformationCommentBean;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->P0(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->P0(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "\u6ca1\u6709\u7f51\u7edc"

    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public V0(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->F:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->G:I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->G:I

    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->postPraisedRequestBean(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method W0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->D:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->J0(Ljava/util/List;)V

    return-void
.end method

.method X0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const-string v1, "\u6dfb\u52a0\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->H:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->J:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->I:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->M0()V

    return-void
.end method

.method Y0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->p0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    return-void
.end method

.method Z0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->g:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->J0(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->C:Lcom/join/mgps/adapter/GameCommentAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->notifyDataSetChanged()V

    .line 16
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->y:Z

    if-eqz p1, :cond_2

    .line 17
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->y:Z

    .line 18
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x3

    .line 19
    iput v0, p1, Landroid/os/Message;->what:I

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->K:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method a1(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/InformationCommentBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->C:Lcom/join/mgps/adapter/GameCommentAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method afterview()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->v:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->F:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->G:I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->p0:Lcom/join/mgps/dialog/x0;

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLoding()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->M0()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const-string v1, "\u8bc4\u8bba\u4e00\u4e0b\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->j:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->o0:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->D:Ljava/util/List;

    .line 16
    new-instance v0, Lcom/join/mgps/activity/GameCommentActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameCommentActivity$b;-><init>(Lcom/join/mgps/activity/GameCommentActivity;)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->z:Lcom/join/mgps/dto/InformationCommentBean;

    if-eqz v2, :cond_1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->z:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 23
    iget-object v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->i:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->z:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->H:Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->z:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->J:I

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->z:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->I:Ljava/lang/String;

    .line 27
    :cond_1
    new-instance v2, Lcom/join/mgps/adapter/GameCommentAdapter;

    iget-object v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    iget-object v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->o0:Ljava/util/List;

    invoke-direct {v2, v3, v4, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/GameCommentAdapter$j;)V

    iput-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->C:Lcom/join/mgps/adapter/GameCommentAdapter;

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameCommentActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameCommentActivity$c;-><init>(Lcom/join/mgps/activity/GameCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameCommentActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameCommentActivity$d;-><init>(Lcom/join/mgps/activity/GameCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    return-void
.end method

.method b1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    return-void
.end method

.method back_image()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    :try_start_0
    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method c1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->F:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->G:I

    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->A:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLoding()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->M0()V

    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->D:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->h:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method toastData(Lcom/join/mgps/dto/RewardBean;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/RewardBean;->getOn_off()I

    :cond_0
    return-void
.end method
