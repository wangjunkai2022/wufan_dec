.class public Lcom/join/mgps/fragment/w0;
.super Lcom/join/mgps/fragment/d;
.source "FriendAddFragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/z$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0204
.end annotation


# instance fields
.field a:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/KeyboardListenLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/adapter/z;

.field i:Lcom/join/mgps/rpc/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/fragment/w0;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/fragment/w0;->R()V

    return-void
.end method

.method private synthetic R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/adapter/z;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public G(Lcom/join/mgps/dto/FriendBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "2"

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/w0;->N(Lcom/join/mgps/dto/FriendBean;)V

    return-void
.end method

.method N(Lcom/join/mgps/dto/FriendBean;)V
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
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getRuid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    const-string p1, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 6
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->i:Lcom/join/mgps/rpc/i;

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/i;->b(Lcom/join/mgps/dto/FriendReqBean;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/w0;->O(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/w0;->X(Ljava/lang/String;)V
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

.method O(Ljava/lang/Boolean;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/adapter/z;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/z;->b()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/FriendBean;

    const-string v0, "INIT"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendBean;->setFriendRequestType(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method P()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/FriendActivity;->r1()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/fragment/w0;->S()V

    return-void
.end method

.method Q(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/w0;->W(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method U()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/w0;->a:Landroid/widget/EditText;

    invoke-static {v1}, Ly1/a;->b(Landroid/view/View;)V

    .line 3
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/w0;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w0;->V()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const v1, 0x7f110206

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method V()V
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
    iget-object v1, p0, Lcom/join/mgps/fragment/w0;->i:Lcom/join/mgps/rpc/i;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/fragment/w0;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/join/mgps/rpc/i;->c(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;

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

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/w0;->updateUi(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/w0;->X(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method W(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x1706

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method X(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/w0;->i:Lcom/join/mgps/rpc/i;

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/w0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    new-instance v1, Li1/a$a;

    invoke-direct {v1}, Li1/a$a;-><init>()V

    const/4 v2, 0x0

    .line 7
    iput v2, v1, Li1/a$a;->f:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Li1/a$b;->c:I

    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/w0;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/join/mgps/fragment/w0$a;

    invoke-direct {v3, p0, v1}, Lcom/join/mgps/fragment/w0$a;-><init>(Lcom/join/mgps/fragment/w0;Li1/a$a;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 10
    new-instance v1, Lcom/join/mgps/adapter/z;

    invoke-direct {v1, v0}, Lcom/join/mgps/adapter/z;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->c:Lcom/join/mgps/customview/KeyboardListenLayout;

    new-instance v1, Lcom/join/mgps/fragment/w0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/w0$b;-><init>(Lcom/join/mgps/fragment/w0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/KeyboardListenLayout;->setOnSoftKeyboardListener(Lcom/join/mgps/customview/KeyboardListenLayout$a;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/z;->f(Lcom/join/mgps/adapter/z$a;)V

    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/d;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/join/mgps/fragment/v0;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v0;-><init>(Lcom/join/mgps/fragment/w0;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/adapter/z;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/join/mgps/fragment/w0;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/w0;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/fragment/w0;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/z;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/w0;->h:Lcom/join/mgps/adapter/z;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
