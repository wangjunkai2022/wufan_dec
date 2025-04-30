.class public Lcom/join/android/app/mgsim/wufun/databinding/ti;
.super Lcom/join/android/app/mgsim/wufun/databinding/si;
.source "GameDetailModCloudListLayoutDatabindingBindingImpl.java"


# static fields
.field private static final o0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final p0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final J:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final K:Landroidx/core/widget/NestedScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private n0:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->o0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "bindding_load_layout_include"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v4, v2, [I

    const v6, 0x7f0c009e

    aput v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->p0:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->o0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/ti;->p0:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ti;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/join/android/app/mgsim/wufun/databinding/w3;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v4, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/android/app/mgsim/wufun/databinding/si;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/join/android/app/mgsim/wufun/databinding/w3;Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/si;->E:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->z0(Landroidx/databinding/ViewDataBinding;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->J:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->K:Landroidx/core/widget/NestedScrollView;

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/si;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/ti;->invalidateAll()V

    return-void
.end method

.method private l1(Lcom/join/android/app/mgsim/wufun/databinding/w3;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private m1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;>;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private n1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/ti;->m1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/ti;->l1(Lcom/join/android/app/mgsim/wufun/databinding/w3;I)Z

    move-result p1

    return p1
.end method

.method public hasPendingBindings()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 3
    monitor-exit p0

    return v4

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/si;->E:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i1(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/si;->H:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/si;->E:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 5
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/common/LoadBindClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/si;->I:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected k()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/si;->G:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/si;->I:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    const-wide/16 v7, 0x4e

    and-long/2addr v7, v2

    const-wide/16 v9, 0x4c

    const-wide/16 v11, 0x4a

    cmp-long v15, v7, v4

    if-eqz v15, :cond_a

    and-long v7, v2, v11

    cmp-long v15, v7, v4

    if-eqz v15, :cond_7

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    const/4 v13, 0x1

    .line 8
    invoke-virtual {v1, v13, v15}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_1

    .line 9
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/kotlin/domain/common/LoadBindindData;

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_2

    .line 10
    invoke-virtual {v15}, Lcom/join/kotlin/domain/common/LoadBindindData;->getShowStatus()I

    move-result v16

    move/from16 v14, v16

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-ne v14, v13, :cond_3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    cmp-long v14, v7, v4

    if-eqz v14, :cond_5

    if-eqz v13, :cond_4

    const-wide/16 v7, 0x100

    goto :goto_4

    :cond_4
    const-wide/16 v7, 0x80

    :goto_4
    or-long/2addr v2, v7

    :cond_5
    if-eqz v13, :cond_6

    const/4 v14, 0x0

    goto :goto_5

    :cond_6
    const/16 v14, 0x8

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    and-long v7, v2, v9

    cmp-long v13, v7, v4

    if-eqz v13, :cond_9

    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    const/4 v7, 0x2

    .line 12
    invoke-virtual {v1, v7, v0}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_9

    .line 13
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/List;

    move-object v0, v13

    move-object v13, v15

    goto :goto_7

    :cond_9
    move-object v13, v15

    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7
    const-wide/16 v7, 0x50

    and-long/2addr v7, v2

    and-long/2addr v11, v2

    cmp-long v15, v11, v4

    if-eqz v15, :cond_b

    .line 14
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/si;->E:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v11, v13}, Lcom/join/android/app/mgsim/wufun/databinding/w3;->h1(Lcom/join/kotlin/domain/common/LoadBindindData;)V

    .line 15
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/si;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    cmp-long v11, v7, v4

    if-eqz v11, :cond_c

    .line 16
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/si;->E:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v7, v6}, Lcom/join/android/app/mgsim/wufun/databinding/w3;->i1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    :cond_c
    and-long/2addr v2, v9

    cmp-long v6, v2, v4

    if-eqz v6, :cond_d

    .line 17
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/si;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v2, v0}, Lcom/join/kotlin/bindingadapter/ViewbindingRecycleviewAdapterKt;->recycleviewdataBinding(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 18
    :cond_d
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/si;->E:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->n(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k1(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/si;->G:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ti;->n0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/si;->E:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/16 v1, 0x1b

    if-ne v1, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ti;->k1(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    if-ne v1, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ti;->j1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ti;->i1(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
