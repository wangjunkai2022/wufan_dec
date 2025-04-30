.class public Lcom/join/mgps/fragment/z2;
.super Lcom/join/mgps/basefragment/a;
.source "GameTopicFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c020b
.end annotation


# instance fields
.field b:Lcom/join/mgps/rpc/d;

.field private c:Landroid/content/Context;

.field d:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/adapter/GameTopicAdapter;

.field public f:I

.field public g:I

.field volatile h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameTopicAdapter$g;",
            ">;"
        }
    .end annotation
.end field

.field volatile i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTopicBean;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/fragment/z2$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/z2$a;-><init>(Lcom/join/mgps/fragment/z2;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/z2;->j:Landroid/os/Handler;

    return-void
.end method

.method private X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->d:Lcom/join/mgps/customview/XListView2;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->d:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/z2$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/z2$b;-><init>(Lcom/join/mgps/fragment/z2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 3
    new-instance v0, Lcom/join/mgps/fragment/z2$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/z2$c;-><init>(Lcom/join/mgps/fragment/z2;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/z2;->h:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter;

    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/GameTopicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/z2;->e:Lcom/join/mgps/adapter/GameTopicAdapter;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->W()V

    return-void
.end method

.method private c0(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTopicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/z2;->i:Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/z2;->f:I

    .line 5
    :cond_1
    iput p1, p0, Lcom/join/mgps/fragment/z2;->f:I

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/z2;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->Q()V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->h0()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->b0()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->a0()V

    return-void
.end method

.method private f0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTopicBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameTopicBean;

    .line 4
    invoke-direct {p0, v2}, Lcom/join/mgps/fragment/z2;->g0(Lcom/join/mgps/dto/GameTopicBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private g0(Lcom/join/mgps/dto/GameTopicBean;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    new-instance v8, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getId()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getCollection_id()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getNick_name()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getUid()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v8}, Lcom/join/mgps/adapter/GameTopicAdapter$g;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getId()I

    move-result v3

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getCollection_id()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getPic_cover()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/GameTopicAdapter$g;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getId()I

    move-result v3

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getCollection_id()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/GameTopicAdapter$g;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    new-instance v8, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getId()I

    move-result v3

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getCollection_id()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getDescribe()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getView()I

    move-result v6

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getComment_count()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v0, v1, v8}, Lcom/join/mgps/adapter/GameTopicAdapter$g;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/fragment/z2;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected N()I
    .locals 1

    const v0, 0x7f0c020b

    return v0
.end method

.method protected O()I
    .locals 1

    const v0, 0x7f090539

    return v0
.end method

.method W()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/content/Context;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method Z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f110206

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/z2;->showToast(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->h0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method a0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->e:Lcom/join/mgps/adapter/GameTopicAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/z2;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/GameTopicAdapter;->l(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->e:Lcom/join/mgps/adapter/GameTopicAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/GameTopicAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/z2;->b:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/fragment/z2;->X()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->loadData()V

    return-void
.end method

.method declared-synchronized b0()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/z2;->h:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/z2;->f0(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/z2;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->h0()V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/z2;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/z2;->loadData(I)V

    return-void
.end method

.method e0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->loadData()V

    return-void
.end method

.method h0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected loadData()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/z2;->loadData(I)V

    return-void
.end method

.method protected loadData(I)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 3
    :try_start_0
    iget v3, p0, Lcom/join/mgps/fragment/z2;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    if-eq v3, v2, :cond_0

    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/z2;->g:I

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->h0()V

    return-void

    .line 6
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/join/mgps/fragment/z2;->g:I

    .line 7
    iget-object v3, p0, Lcom/join/mgps/fragment/z2;->b:Lcom/join/mgps/rpc/d;

    iget-object v4, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameTopicRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/join/mgps/rpc/d;->y(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v4

    if-ne v4, v1, :cond_4

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 11
    invoke-direct {p0, p1, v3}, Lcom/join/mgps/fragment/z2;->c0(ILjava/util/List;)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    .line 13
    :cond_3
    iput v2, p0, Lcom/join/mgps/fragment/z2;->g:I

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    goto :goto_0

    .line 15
    :cond_5
    iput v2, p0, Lcom/join/mgps/fragment/z2;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    iget p1, p0, Lcom/join/mgps/fragment/z2;->g:I

    if-eq p1, v2, :cond_6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    :try_start_2
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    iget p1, p0, Lcom/join/mgps/fragment/z2;->g:I

    if-eq p1, v2, :cond_6

    :goto_1
    iput v0, p0, Lcom/join/mgps/fragment/z2;->g:I

    .line 20
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->h0()V

    goto :goto_3

    .line 21
    :goto_2
    iget v1, p0, Lcom/join/mgps/fragment/z2;->g:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lcom/join/mgps/fragment/z2;->g:I

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->h0()V

    .line 23
    throw p1

    .line 24
    :cond_8
    iget p1, p0, Lcom/join/mgps/fragment/z2;->f:I

    if-ge p1, v1, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    .line 26
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/z2;->h0()V

    :goto_3
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
