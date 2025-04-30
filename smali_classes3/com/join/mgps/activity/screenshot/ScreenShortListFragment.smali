.class public Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScreenShortListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;,
        Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;,
        Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0567
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

.field allItemBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field client:Lcom/join/mgps/rpc/d;

.field context:Landroid/content/Context;

.field gameId:Ljava/lang/String;

.field loading_none:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pn:I

.field recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field typeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    return-void
.end method


# virtual methods
.method afterview()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->client:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gameId"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->gameId:Ljava/lang/String;

    const-string v1, "typeId"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->typeId:I

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loadListData(I)V

    .line 9
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;)V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0710e2    # 1.7953344E38f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    return-void
.end method

.method loadListData(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->gameId:Ljava/lang/String;

    iget v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->typeId:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getScreenShortListRequest(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->client:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->w(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->updateUi(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showNone()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showNone()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showError()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showError()V

    :goto_0
    return-void
.end method

.method showError()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->s1()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_faile:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method showNone()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_faile:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loading_none:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    :goto_0
    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_faile:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->s1()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
