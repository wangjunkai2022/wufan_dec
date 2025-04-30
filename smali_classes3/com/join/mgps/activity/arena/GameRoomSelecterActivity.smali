.class public Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;
.super Lcom/BaseAppCompatActivity;
.source "GameRoomSelecterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;,
        Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;,
        Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04dd
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/content/Context;

.field d:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

.field e:Lcom/join/mgps/dto/GameInfoBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field f:Lcom/join/mgps/adapter/t1;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->h:Ljava/util/List;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->F0()V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private F0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method private H0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/k;->m0()Lq1/j;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lq1/j;->u(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method G0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->e:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->e:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->e:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestArenaRoomListArgs(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/c;->q(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->F0()V

    :goto_1
    return-void
.end method

.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->d:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    .line 3
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->f(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->d:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iput-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->c:Landroid/content/Context;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v0, Lcom/join/mgps/adapter/t1;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/t1;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->f:Lcom/join/mgps/adapter/t1;

    .line 8
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/t1;->f(Lcom/join/mgps/adapter/t1$e;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->f:Lcom/join/mgps/adapter/t1;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/t1;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->g:Ljava/util/List;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->f:Lcom/join/mgps/adapter/t1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->G0()V

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->H0()V

    return-void
.end method
