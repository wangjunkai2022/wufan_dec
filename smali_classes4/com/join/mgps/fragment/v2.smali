.class public Lcom/join/mgps/fragment/v2;
.super Landroidx/fragment/app/Fragment;
.source "GameSingleCompanyFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0250
.end annotation


# instance fields
.field a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/XListView2;
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

.field e:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/rpc/d;

.field private g:Lcom/join/mgps/adapter/f2;

.field private h:Landroid/content/Context;

.field private i:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk1/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/v2;->i:Z

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/v2;->k:I

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/v2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/v2;->i:Z

    return p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/v2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/v2;->k:I

    return p1
.end method


# virtual methods
.method O()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->f:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/f2;

    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/f2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->g:Lcom/join/mgps/adapter/f2;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/adapter/f2;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->j:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->showLoding()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->P()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->b:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->b:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/v2$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/v2$a;-><init>(Lcom/join/mgps/fragment/v2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->b:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/v2$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/v2$b;-><init>(Lcom/join/mgps/fragment/v2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->b:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->g:Lcom/join/mgps/adapter/f2;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method P()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/v2;->i:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget v2, p0, Lcom/join/mgps/fragment/v2;->k:I

    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/v2;->Q(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/fragment/v2;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->F0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameSignleCompanyListbean;

    if-eqz v2, :cond_7

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameSignleCompanyListbean;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    if-eqz v5, :cond_1

    .line 11
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GameOLHeadAdBean;

    invoke-virtual {v4, v6}, Lk1/b;->d(Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    .line 13
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_1
    :goto_1
    new-instance v4, Lk1/b;

    invoke-direct {v4}, Lk1/b;-><init>()V

    .line 15
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GameOLHeadAdBean;

    invoke-virtual {v4, v6}, Lk1/b;->c(Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v0, :cond_3

    .line 17
    new-instance v4, Lk1/b;

    invoke-direct {v4}, Lk1/b;-><init>()V

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameOLHeadAdBean;

    invoke-virtual {v4, v2}, Lk1/b;->c(Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    .line 19
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3
    iget v2, p0, Lcom/join/mgps/fragment/v2;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/join/mgps/fragment/v2;->k:I

    .line 21
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/v2;->showMain(Ljava/util/List;)V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->T()V

    goto :goto_3

    .line 23
    :cond_4
    iget v2, p0, Lcom/join/mgps/fragment/v2;->k:I

    if-ne v2, v0, :cond_5

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->showLodingFailed()V

    goto :goto_3

    .line 25
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->S()V

    goto :goto_3

    .line 26
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->T()V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 28
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->T()V

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/fragment/v2;->i:Z

    goto :goto_5

    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/fragment/v2;->i:Z

    .line 32
    throw v0

    .line 33
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->T()V

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->showLodingFailed()V

    :goto_5
    return-void
.end method

.method public Q(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameOLRequest(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method R()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/v2;->k:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->P()V

    return-void
.end method

.method S()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method T()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

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

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/v2;->k:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->showLoding()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->P()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk1/b;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/fragment/v2;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget p1, p0, Lcom/join/mgps/fragment/v2;->k:I

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   showMain"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "infoo"

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->g:Lcom/join/mgps/adapter/f2;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method
