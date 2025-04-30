.class public Lcom/join/mgps/fragment/a0;
.super Landroidx/fragment/app/Fragment;
.source "DIscoveryTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/a0$e;,
        Lcom/join/mgps/fragment/a0$d;,
        Lcom/join/mgps/fragment/a0$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c01ba
.end annotation


# instance fields
.field a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
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

.field h:I

.field i:I

.field j:Landroid/content/Context;

.field k:Lcom/join/mgps/rpc/h;

.field l:I

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoverListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoverListWeiboItemBean;",
            ">;"
        }
    .end annotation
.end field

.field o:Lcom/join/mgps/fragment/a0$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/a0;->h:I

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/a0;->i:I

    return-void
.end method


# virtual methods
.method M()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->j:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->k:Lcom/join/mgps/rpc/h;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->m:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->n:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/join/mgps/fragment/a0;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    new-instance v0, Lcom/join/mgps/fragment/a0$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/a0$e;-><init>(Lcom/join/mgps/fragment/a0;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->o:Lcom/join/mgps/fragment/a0$e;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->g:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u627e\u5230\u76f8\u5173\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    new-instance v1, Lcom/join/mgps/fragment/a0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/a0$a;-><init>(Lcom/join/mgps/fragment/a0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setOnRefreshListener(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Lcom/join/mgps/fragment/a0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/a0$b;-><init>(Lcom/join/mgps/fragment/a0;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/a0;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 13
    iput v1, p0, Lcom/join/mgps/fragment/a0;->h:I

    .line 14
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/a0;->h:I

    if-ne v0, v1, :cond_1

    .line 15
    iget v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/a0;->O(I)V

    goto :goto_0

    .line 16
    :cond_1
    iget v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/a0;->loadData(I)V

    :goto_0
    return-void
.end method

.method N(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.update.position2"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/a0;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/fragment/a0;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method O(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->showLoding()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/a0;->k:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iget v2, p0, Lcom/join/mgps/fragment/a0;->i:I

    invoke-interface {v1, v0, p1, v2}, Lcom/join/mgps/rpc/h;->b(III)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DiscoverListData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DiscoverListData;->getNews_list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->S()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/a0;->U(Ljava/util/List;I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->R()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->R()V

    :goto_0
    return-void
.end method

.method P()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->e:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method Q()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method R()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->s1()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setRefreshing(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->P()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->Q()V

    :goto_0
    return-void
.end method

.method S()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method T(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoverListItemBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    if-ne v0, p2, :cond_2

    const/4 p2, 0x1

    if-ne v0, p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/a0;->m:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/a0;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->R()V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/a0;->o:Lcom/join/mgps/fragment/a0$e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method U(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoverListWeiboItemBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    if-ne v0, p2, :cond_2

    const/4 p2, 0x1

    if-ne v0, p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/a0;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/a0;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->R()V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/a0;->o:Lcom/join/mgps/fragment/a0$e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method loadData(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->showLoding()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/a0;->k:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iget v2, p0, Lcom/join/mgps/fragment/a0;->i:I

    invoke-interface {v1, v0, p1, v2}, Lcom/join/mgps/rpc/h;->C(III)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DiscoverListData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DiscoverListData;->getNews_list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->S()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/a0;->T(Ljava/util/List;I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->R()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->R()V

    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/a0;->l:I

    .line 2
    iget v1, p0, Lcom/join/mgps/fragment/a0;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/a0;->O(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/a0;->loadData(I)V

    :goto_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/a0;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
