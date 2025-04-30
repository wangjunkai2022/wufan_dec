.class public Lcom/join/mgps/fragment/i1;
.super Lcom/join/mgps/fragment/d;
.source "FriendCardFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0205
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;
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

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroidx/constraintlayout/widget/Group;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Lcom/join/mgps/rpc/i;

.field private o:Lcom/join/mgps/dto/FriendCardBean;

.field p:Lcom/join/mgps/adapter/a0;

.field q:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/fragment/i1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i1;->l0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/join/mgps/fragment/i1;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/i1;->g0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/fragment/i1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i1;->i0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/mgps/fragment/i1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i1;->h0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/mgps/fragment/i1;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/fragment/i1;->f0()V

    return-void
.end method

.method public static synthetic R(Lcom/join/mgps/fragment/i1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i1;->k0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/join/mgps/fragment/i1;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/i1;->e0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/join/mgps/fragment/i1;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/i1;->d0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/join/mgps/fragment/i1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i1;->m0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/join/mgps/fragment/i1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i1;->j0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic d0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->n0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->n0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic f0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->l:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i1;->p0()V

    :goto_0
    return-void
.end method

.method private synthetic g0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->b0(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic h0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic i0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->n0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic k0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->n0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l0(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->t0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic m0(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "0"

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->addFriends:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->X(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method X(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/dto/FriendReqBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 4
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    const-string v0, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->n:Lcom/join/mgps/rpc/i;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/i;->b(Lcom/join/mgps/dto/FriendReqBean;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->Z(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method Z(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string p1, "\u5df2\u53d1\u9001\u597d\u53cb\u7533\u8bf7"

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendCardBean;->setFriendStatus(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendCardBean;->setAddFriendStatus(Z)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->u0(Lcom/join/mgps/dto/FriendCardBean;)V

    :cond_0
    return-void
.end method

.method a0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/FriendActivity;->r1()V

    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->n:Lcom/join/mgps/rpc/i;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/adapter/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/join/mgps/adapter/a0;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/fragment/i1;->p:Lcom/join/mgps/adapter/a0;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/i1;->k:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->i:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->l:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i1;->q0()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i1;->p0()V

    return-void
.end method

.method b0(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uid"

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "delUid"

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->n:Lcom/join/mgps/rpc/i;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/i;->m(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->c0(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method c0(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string p1, "\u5df2\u5220\u9664\u597d\u53cb"

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendCardBean;->setFriendStatus(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendCardBean;->setAddFriendStatus(Z)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->u0(Lcom/join/mgps/dto/FriendCardBean;)V

    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method n0(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uid"

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "likeUid"

    .line 5
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->n:Lcom/join/mgps/rpc/i;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/i;->a(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/i1;->o0(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method o0(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u70b9\u8d5e\u6210\u529f"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendCardBean;->setLikeStatus(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendCardBean;->setLikeCount(I)V

    .line 4
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/i1;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendCardBean;->isLikeStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    const v1, 0x7f080605

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/fragment/g1;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/g1;-><init>(Lcom/join/mgps/fragment/i1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/fragment/f1;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/f1;-><init>(Lcom/join/mgps/fragment/i1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    const v0, 0x7f080604

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ruid"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->a:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/d;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/join/mgps/fragment/h1;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/h1;-><init>(Lcom/join/mgps/fragment/i1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i1;->q0()V

    :goto_0
    return-void
.end method

.method p0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/i1;->n:Lcom/join/mgps/rpc/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/fragment/i1;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/join/mgps/rpc/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FriendCardBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i1;->u0(Lcom/join/mgps/dto/FriendCardBean;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f11029b

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method q0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->p:Lcom/join/mgps/adapter/a0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/adapter/a0;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->p:Lcom/join/mgps/adapter/a0;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->j:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->c:Landroid/widget/TextView;

    const-string v1, "---"

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->g:Landroid/widget/TextView;

    const-string v1, "--"

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->i:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i1;->a:Ljava/lang/String;

    return-void
.end method

.method t0(Ljava/lang/String;)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    if-nez v1, :cond_3

    .line 3
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f1204e2

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0372

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0907ee

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090b5c

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090210

    .line 11
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080b71

    .line 12
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    iget-object v5, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f071279

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0711ef

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 16
    iget-object v5, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/4 v7, -0x1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    .line 18
    :cond_1
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 19
    :cond_2
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 20
    invoke-virtual {v5, v0}, Landroid/view/Window;->setGravity(I)V

    .line 21
    new-instance v0, Lcom/join/mgps/fragment/e1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/e1;-><init>(Lcom/join/mgps/fragment/i1;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance p1, Lcom/join/mgps/fragment/a1;

    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/a1;-><init>(Lcom/join/mgps/fragment/i1;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance p1, Lcom/join/mgps/fragment/z0;

    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/z0;-><init>(Lcom/join/mgps/fragment/i1;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->q:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method

.method u0(Lcom/join/mgps/dto/FriendCardBean;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->l:Landroidx/constraintlayout/widget/Group;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/fragment/i1;->o:Lcom/join/mgps/dto/FriendCardBean;

    .line 5
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###.0"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/join/mgps/fragment/i1;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    const v5, 0x461c4000    # 10000.0f

    div-float/2addr v6, v5

    float-to-double v5, v6

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "W"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->isLikeStatus()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    const v4, 0x7f080605

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    new-instance v4, Lcom/join/mgps/fragment/d1;

    invoke-direct {v4, p0}, Lcom/join/mgps/fragment/d1;-><init>(Lcom/join/mgps/fragment/i1;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->f:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/fragment/b1;

    invoke-direct {v4, p0}, Lcom/join/mgps/fragment/b1;-><init>(Lcom/join/mgps/fragment/i1;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    const v4, 0x7f080604

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->isOnlineStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->g:Landroid/widget/TextView;

    const-string v4, "\u5728\u7ebf"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->g:Landroid/widget/TextView;

    const-string v4, "#FF03DA00"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->g:Landroid/widget/TextView;

    const-string v4, "\u79bb\u7ebf"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->g:Landroid/widget/TextView;

    const-string v4, "#FFC4C4C4"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getUserInfo()Lcom/join/mgps/dto/FriendBean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getUserInfo()Lcom/join/mgps/dto/FriendBean;

    move-result-object v0

    .line 21
    iget-object v4, p0, Lcom/join/mgps/fragment/i1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 22
    iget-object v4, p0, Lcom/join/mgps/fragment/i1;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getMemberTitle()Lcom/join/mgps/dto/FriendBean$MemberTitle;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 24
    iget-object v4, p0, Lcom/join/mgps/fragment/i1;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getMemberTitle()Lcom/join/mgps/dto/FriendBean$MemberTitle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/FriendBean$MemberTitle;->getBattleTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v4, p0, Lcom/join/mgps/fragment/i1;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getMemberTitle()Lcom/join/mgps/dto/FriendBean$MemberTitle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/FriendBean$MemberTitle;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->isVip()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 27
    iget-object v4, p0, Lcom/join/mgps/fragment/i1;->i:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 28
    :cond_5
    iget-object v4, p0, Lcom/join/mgps/fragment/i1;->i:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 30
    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 31
    :goto_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    :goto_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->isFriendStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const-string v3, "\u5220\u9664\u597d\u53cb"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const v3, 0x7f080b50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const-string v3, "#F5F5F5"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/join/mgps/fragment/y0;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/y0;-><init>(Lcom/join/mgps/fragment/i1;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 39
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->isAddFriendStatus()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const-string v3, "\u52a0\u597d\u53cb"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const v3, 0x7f080b48

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/join/mgps/fragment/c1;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/c1;-><init>(Lcom/join/mgps/fragment/i1;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const-string v5, "\u5df2\u53d1\u9001"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const v5, 0x7f080b5b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const-string v5, "#BABABA"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_a
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getPlayGameLevels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getPlayGameLevels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->p:Lcom/join/mgps/adapter/a0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a0;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iget-object v0, p0, Lcom/join/mgps/fragment/i1;->p:Lcom/join/mgps/adapter/a0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a0;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getPlayGameLevels()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->p:Lcom/join/mgps/adapter/a0;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_8

    .line 58
    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->j:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/join/mgps/fragment/i1;->k:Landroid/widget/GridView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_8
    return-void
.end method
