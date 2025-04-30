.class public Lcom/join/mgps/fragment/g;
.super Lcom/join/mgps/fragment/d;
.source "ChoiceFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c00c6
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/rpc/d;

.field e:Landroid/content/Context;

.field f:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n:Lcom/join/mgps/adapter/c;

.field private o:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/c$i0;",
            ">;"
        }
    .end annotation
.end field

.field q:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/g;->h:Z

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/g;->i:I

    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/g;->j:I

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/g;->k:I

    .line 6
    iput v0, p0, Lcom/join/mgps/fragment/g;->l:I

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/g;->V()V

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/g;->k:I

    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/g;->l:I

    return p0
.end method

.method private V()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/g;->l:I

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/g;->k:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->n:Lcom/join/mgps/adapter/c;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/c;->C(I)V

    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g;->W(I)V

    return-void
.end method


# virtual methods
.method J()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->U()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/fragment/g;->V()V

    return-void
.end method

.method P(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x10

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u7cbe\u9009\u54e6~"

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/fragment/g$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/g$f;-><init>(Lcom/join/mgps/fragment/g;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0809bc

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/fragment/g$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/g$e;-><init>(Lcom/join/mgps/fragment/g;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25~"

    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/fragment/g$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/g$g;-><init>(Lcom/join/mgps/fragment/g;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/fragment/g$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/g$d;-><init>(Lcom/join/mgps/fragment/g;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->d0()V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->d0()V

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method public Q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->n:Lcom/join/mgps/adapter/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/adapter/c;->d()I

    move-result v0

    return v0
.end method

.method R()Lcom/join/mgps/dto/HomeGameCarefullyBean;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomeGameCarefully:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1, v2}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/HomeGameCarefullyBean;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/HomeGameCarefullyBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method S()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/c;

    iget-object v1, p0, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/g;->n:Lcom/join/mgps/adapter/c;

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/g;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/join/mgps/fragment/g;->n:Lcom/join/mgps/adapter/c;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 8
    new-instance v0, Lcom/join/mgps/fragment/g$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/g$a;-><init>(Lcom/join/mgps/fragment/g;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/g;->q:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    return-void
.end method

.method U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->R()Lcom/join/mgps/dto/HomeGameCarefullyBean;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/join/mgps/fragment/g;->c0(Lcom/join/mgps/dto/HomeGameCarefullyBean;II)V

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g;->P(I)V

    :cond_0
    return-void
.end method

.method W(I)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/g;->l:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->e0()V

    return-void

    .line 3
    :cond_1
    iput p1, p0, Lcom/join/mgps/fragment/g;->l:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f110186

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v4

    iget v5, p0, Lcom/join/mgps/fragment/g;->i:I

    iget-object v6, p0, Lcom/join/mgps/fragment/g;->g:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getHomeGameCarefullyRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/join/mgps/fragment/g;->d:Lcom/join/mgps/rpc/d;

    invoke-interface {v5, v4}, Lcom/join/mgps/rpc/d;->X0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v4

    if-nez v4, :cond_4

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->showMessage(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/g;->P(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget p1, p0, Lcom/join/mgps/fragment/g;->l:I

    if-eq p1, v1, :cond_3

    .line 11
    iput v3, p0, Lcom/join/mgps/fragment/g;->l:I

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->e0()V

    return-void

    .line 13
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 14
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 15
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 16
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/HomeGameCarefullyBean;

    if-ne p1, v6, :cond_5

    .line 17
    iput p1, p0, Lcom/join/mgps/fragment/g;->k:I

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {v4}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 19
    iput p1, p0, Lcom/join/mgps/fragment/g;->k:I

    .line 20
    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/join/mgps/fragment/g;->b0(Lcom/join/mgps/dto/HomeGameCarefullyBean;I)V

    if-ne p1, v6, :cond_6

    .line 21
    invoke-virtual {p0, v4}, Lcom/join/mgps/fragment/g;->X(Lcom/join/mgps/dto/HomeGameCarefullyBean;)V

    :cond_6
    const/4 p1, 0x2

    .line 22
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->P(I)V

    goto :goto_1

    .line 23
    :cond_7
    iput v1, p0, Lcom/join/mgps/fragment/g;->l:I

    if-ne p1, v6, :cond_8

    const/16 p1, 0xa

    .line 24
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->P(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_8
    iget p1, p0, Lcom/join/mgps/fragment/g;->l:I

    if-eq p1, v1, :cond_9

    .line 26
    iput v3, p0, Lcom/join/mgps/fragment/g;->l:I

    .line 27
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->e0()V

    return-void

    .line 28
    :cond_a
    :try_start_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 29
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->showMessage(Ljava/lang/String;)V

    .line 30
    :cond_b
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/g;->P(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :goto_1
    iget p1, p0, Lcom/join/mgps/fragment/g;->l:I

    if-eq p1, v1, :cond_d

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 32
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 34
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->showMessage(Ljava/lang/String;)V

    .line 35
    :cond_c
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/g;->P(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    iget p1, p0, Lcom/join/mgps/fragment/g;->l:I

    if-eq p1, v1, :cond_d

    .line 37
    :goto_2
    iput v3, p0, Lcom/join/mgps/fragment/g;->l:I

    .line 38
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->e0()V

    goto :goto_4

    .line 39
    :goto_3
    iget v0, p0, Lcom/join/mgps/fragment/g;->l:I

    if-eq v0, v1, :cond_e

    .line 40
    iput v3, p0, Lcom/join/mgps/fragment/g;->l:I

    .line 41
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->e0()V

    .line 42
    throw p1

    .line 43
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_10

    const p1, 0x7f110206

    .line 44
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    :cond_10
    const/16 p1, 0x9

    .line 45
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->P(I)V

    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->e0()V

    :goto_4
    return-void
.end method

.method X(Lcom/join/mgps/dto/HomeGameCarefullyBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomeGameCarefully:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p1

    invoke-virtual {p1, v1}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method Z()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->index:Lcom/papa/sim/statistic/Where;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f1102ae

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, ""

    .line 4
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->n:Lcom/join/mgps/adapter/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/c;->C(I)V

    return-void
.end method

.method afterViews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/g;->d:Lcom/join/mgps/rpc/d;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/b1;->a(Landroid/content/Context;)Lcom/join/mgps/dto/FirstIntentData;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/g;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isShowEditorRecoomand()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/g;->g:Ljava/lang/String;

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/fragment/g;->h:Z

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->S()V

    .line 11
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/g;->P(I)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/join/mgps/fragment/g;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstRunGameCarefullyLong()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/androidannotations/api/sharedpreferences/k;->j(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/join/mgps/fragment/g;->h:Z

    if-eqz v0, :cond_3

    .line 13
    :cond_2
    iput v1, p0, Lcom/join/mgps/fragment/g;->i:I

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->J()V

    return-void
.end method

.method b0(Lcom/join/mgps/dto/HomeGameCarefullyBean;I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1
    iget v2, p0, Lcom/join/mgps/fragment/g;->i:I

    if-ne v2, v1, :cond_0

    iput v0, p0, Lcom/join/mgps/fragment/g;->i:I

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->isFirstRunGameCarefullyLong()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/fragment/g;->c0(Lcom/join/mgps/dto/HomeGameCarefullyBean;II)V

    return-void
.end method

.method c0(Lcom/join/mgps/dto/HomeGameCarefullyBean;II)V
    .locals 25
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    :cond_1
    const/4 v3, 0x6

    const/16 v5, 0x68

    const/4 v6, 0x5

    const/4 v7, 0x7

    const-string v8, ""

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    move/from16 v12, p2

    if-ne v12, v11, :cond_16

    .line 2
    :try_start_0
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 3
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v12}, Lcom/join/mgps/pref/PrefDef_;->isShowEditorRecoomand()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v12

    invoke-virtual {v12}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getVisitor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getVisitor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getVisitor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v12

    .line 7
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v13}, Lcom/join/mgps/pref/PrefDef_;->isShowEditorRecoomand()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v14}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 v13, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getEditor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v12

    const/4 v13, 0x0

    :goto_0
    if-eqz v12, :cond_3

    .line 9
    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const/16 v14, 0x65

    .line 10
    invoke-virtual {v12, v14}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 11
    iget-object v14, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v15, Lcom/join/mgps/adapter/c$i0;

    invoke-direct {v15, v11, v12}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v15, v13}, Lcom/join/mgps/adapter/c$i0;->k(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v14, Lcom/join/mgps/adapter/c$i0;

    invoke-direct {v14, v9, v12}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v11, :cond_3

    .line 13
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v13}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v14

    iget-object v13, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    .line 14
    invoke-static {v13}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v15

    .line 15
    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v16

    const-string v17, "eidtButton"

    const-string v18, ""

    const-string v19, "\u7f16\u8f91\u63a8\u8350"

    .line 16
    invoke-virtual/range {v14 .. v19}, Lcom/papa/sim/statistic/p;->e2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBuy_advert_recommend()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBuy_advert_recommend()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v12

    const/16 v13, 0x66

    .line 19
    invoke-virtual {v12, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 20
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v14, Lcom/join/mgps/adapter/c$i0;

    invoke-direct {v14, v11, v12}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v9}, Lcom/join/mgps/adapter/c$i0;->k(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v14, Lcom/join/mgps/adapter/c$i0;

    const/4 v15, 0x3

    invoke-direct {v14, v15, v12}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v14, Lcom/join/mgps/adapter/c$i0;

    const/4 v15, 0x4

    invoke-direct {v14, v15, v12}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v11, :cond_4

    .line 23
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v13}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v14

    iget-object v13, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    .line 24
    invoke-static {v13}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v15

    .line 25
    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v16

    const-string v17, "adButton"

    const-string v18, ""

    const-string v19, "\u5e7f\u544a\u8d5e\u52a9"

    .line 26
    invoke-virtual/range {v14 .. v19}, Lcom/papa/sim/statistic/p;->e2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 28
    new-instance v12, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-direct {v12}, Lcom/join/mgps/dto/TodayWufunEmuClassify;-><init>()V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/g;->Q()I

    move-result v14

    const/4 v15, 0x0

    .line 30
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_8

    if-nez v14, :cond_5

    if-nez v15, :cond_5

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/fragment/g;->a0(I)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    move v14, v2

    goto :goto_2

    .line 34
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    move-result v2

    if-ne v14, v2, :cond_6

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    move-object v12, v2

    .line 36
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 37
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_list()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lcom/join/mgps/dto/TodayWufunBroadcast;

    const/16 v4, 0x67

    .line 39
    invoke-virtual {v9, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    const/4 v9, 0x2

    goto :goto_3

    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x2

    goto :goto_1

    .line 40
    :cond_8
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/c$i0;

    invoke-direct {v4, v10, v13}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/c$i0;

    const/16 v9, 0x10

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    move-result-object v14

    invoke-direct {v4, v9, v14}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/c$i0;

    const/16 v9, 0x11

    invoke-direct {v4, v9, v12}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getToday_refresh()Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "1-"

    if-eqz v2, :cond_f

    .line 44
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getToday_refresh()Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getToday_refresh()Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 45
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getToday_refresh()Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    move-result-object v2

    .line 46
    iget-object v9, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v12, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getAddTimes()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v12, v6, v14}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 48
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 49
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 50
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v14, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v15

    invoke-direct {v14, v3, v15}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v9}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v14, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v15

    invoke-direct {v14, v7, v15}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v9}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v11, :cond_c

    .line 52
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v12}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v19

    iget-object v12, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    .line 53
    invoke-static {v12}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v20

    .line 54
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v12

    goto :goto_4

    :cond_b
    move-object/from16 v21, v8

    :goto_4
    const-string v22, "todayButton"

    const-string v24, "\u4eca\u65e5\u609f\u996d"

    move-object/from16 v23, v9

    .line 55
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/p;->e2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v9, 0x1

    goto :goto_5

    :cond_d
    const/4 v9, 0x0

    .line 56
    :goto_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    move-result-object v12

    if-eqz v12, :cond_10

    .line 57
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 58
    iget-object v14, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v15, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    move-result-object v10

    const/16 v7, 0xd

    invoke-direct {v15, v7, v10}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lcom/join/mgps/adapter/c$i0;->i(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v7, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v10, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    move-result-object v14

    const/16 v15, 0xe

    invoke-direct {v10, v15, v14}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Lcom/join/mgps/adapter/c$i0;->i(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v11, :cond_10

    .line 60
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v19

    iget-object v0, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    .line 61
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v20

    .line 62
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_6

    :cond_e
    move-object/from16 v21, v8

    :goto_6
    const-string v22, "todayButton"

    const-string v24, "\u4eca\u65e5\u609f\u996d"

    move-object/from16 v23, v12

    .line 63
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/p;->e2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    const/4 v9, 0x0

    .line 64
    :cond_10
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getCarefully_special()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xc

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getCarefully_special()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 65
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v7, Lcom/join/mgps/adapter/c$i0;

    const/16 v10, 0x8

    invoke-direct {v7, v10, v13}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 66
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getCarefully_special()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_11

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getCarefully_special()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/BannerBean;

    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 69
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v14, Lcom/join/mgps/adapter/c$i0;

    const/16 v15, 0x9

    invoke-direct {v14, v15, v7}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v0}, Lcom/join/mgps/adapter/c$i0;->j(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v12}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v19

    iget-object v12, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    .line 71
    invoke-static {v12}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v20

    .line 72
    invoke-virtual {v7}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v21

    const-string v22, "todayButton"

    const-string v24, "\u7cbe\u9009\u4e13\u9898"

    move-object/from16 v23, v10

    .line 73
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/p;->e2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 74
    :cond_11
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v7, Lcom/join/mgps/adapter/c$i0;

    invoke-direct {v7, v2, v13}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_bespeak_recommend()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_bespeak_recommend()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 76
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v7, Lcom/join/mgps/adapter/c$i0;

    const/16 v10, 0xa

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBespeak_list_url()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v10, v12}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 77
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_bespeak_recommend()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_14

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_bespeak_recommend()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 79
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v9, v11

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 80
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v14, Lcom/join/mgps/adapter/c$i0;

    const/16 v15, 0xb

    invoke-direct {v14, v15, v7}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v0}, Lcom/join/mgps/adapter/c$i0;->j(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v12}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v19

    iget-object v12, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    .line 82
    invoke-static {v12}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v20

    if-eqz v7, :cond_13

    .line 83
    invoke-virtual {v7}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v7

    goto :goto_a

    :cond_13
    move-object/from16 v21, v8

    :goto_a
    const-string v22, "todayButton"

    const-string v24, "\u65b0\u6e38\u9884\u7ea6"

    move-object/from16 v23, v10

    .line 84
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/p;->e2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 85
    :cond_14
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/c$i0;

    invoke-direct {v4, v2, v13}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_15
    iput v11, v1, Lcom/join/mgps/fragment/g;->j:I

    .line 87
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v10, 0x0

    .line 88
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_1c

    .line 89
    iget v0, v1, Lcom/join/mgps/fragment/g;->j:I

    add-int/2addr v0, v11

    iput v0, v1, Lcom/join/mgps/fragment/g;->j:I

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    .line 91
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getAddTimes()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/join/mgps/fragment/g;->j:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v7, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v9

    invoke-direct {v7, v3, v9}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v2}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    iget v9, v1, Lcom/join/mgps/fragment/g;->j:I

    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/c$i0;->m(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v7, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v9

    const/4 v12, 0x7

    invoke-direct {v7, v12, v9}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v2}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    iget v9, v1, Lcom/join/mgps/fragment/g;->j:I

    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/c$i0;->m(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget v4, v1, Lcom/join/mgps/fragment/g;->j:I

    const/4 v7, 0x7

    if-gt v4, v7, :cond_18

    .line 98
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v19

    iget-object v4, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    .line 99
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v20

    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    goto :goto_c

    :cond_17
    move-object/from16 v21, v8

    :goto_c
    const-string v22, "todayButton"

    const-string v24, "\u4eca\u65e5\u609f\u996d"

    move-object/from16 v23, v2

    .line 101
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/p;->e2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_18
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/join/mgps/fragment/g;->j:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v7, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    move-result-object v9

    const/16 v12, 0xd

    invoke-direct {v7, v12, v9}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/c$i0;->i(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    iget v9, v1, Lcom/join/mgps/fragment/g;->j:I

    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/c$i0;->m(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    new-instance v7, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    move-result-object v9

    const/16 v13, 0xe

    invoke-direct {v7, v13, v9}, Lcom/join/mgps/adapter/c$i0;-><init>(ILjava/lang/Object;)V

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/c$i0;->i(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/join/mgps/adapter/c$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    iget v14, v1, Lcom/join/mgps/fragment/g;->j:I

    invoke-virtual {v7, v14}, Lcom/join/mgps/adapter/c$i0;->m(I)Lcom/join/mgps/adapter/c$i0;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget v4, v1, Lcom/join/mgps/fragment/g;->j:I

    const/4 v7, 0x7

    if-gt v4, v7, :cond_1b

    .line 107
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v19

    iget-object v4, v1, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    .line 108
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v20

    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_d

    :cond_19
    move-object/from16 v21, v8

    :goto_d
    const-string v22, "todayButton"

    const-string v24, "\u4eca\u65e5\u609f\u996d"

    move-object/from16 v23, v2

    .line 110
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/p;->e2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    :cond_1a
    const/4 v7, 0x7

    const/4 v9, 0x2

    const/16 v12, 0xd

    const/16 v13, 0xe

    :cond_1b
    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 113
    :cond_1c
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->n:Lcom/join/mgps/adapter/c;

    iget-object v2, v1, Lcom/join/mgps/fragment/g;->p:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/c;->D(Ljava/util/List;)V

    .line 114
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->n:Lcom/join/mgps/adapter/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method d0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/fragment/g$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/g$c;-><init>(Lcom/join/mgps/fragment/g;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method e0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/fragment/g$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/g$b;-><init>(Lcom/join/mgps/fragment/g;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
