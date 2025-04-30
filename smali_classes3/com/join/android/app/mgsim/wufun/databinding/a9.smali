.class public Lcom/join/android/app/mgsim/wufun/databinding/a9;
.super Lcom/join/android/app/mgsim/wufun/databinding/z8;
.source "DatabGamelistLayoutBindingImpl.java"


# static fields
.field private static final K:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final n0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final I:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private J:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->K:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/a9;->n0:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/a9;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/z8;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/join/android/app/component/xrecyclerview/XRecyclerView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/z8;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/a9;->invalidateAll()V

    return-void
.end method

.method private l1(Landroidx/lifecycle/MutableLiveData;I)Z
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

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
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/a9;->l1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i1(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
            "Ljava/lang/Object;",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/z8;->G:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

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

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V
    .locals 0
    .param p1    # Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/z8;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    return-void
.end method

.method protected k()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/z8;->G:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    .line 6
    iget-object v5, p0, Lcom/join/android/app/mgsim/wufun/databinding/z8;->H:Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;

    const-wide/16 v6, 0x1d

    and-long/2addr v0, v6

    const/4 v6, 0x0

    cmp-long v7, v0, v2

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v5}, Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    const/4 v7, 0x0

    .line 8
    invoke-virtual {p0, v7, v5}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    cmp-long v7, v0, v2

    if-eqz v7, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/z8;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0, v5, v4, v6, v6}, Lcom/join/kotlin/bindingadapter/ViewbindingRecycleviewAdapterKt;->xrecycleviewadapterBinding(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Ljava/util/List;Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Ljava/lang/Integer;Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k1(Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/z8;->H:Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a9;->J:J

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/16 v1, 0x17

    if-ne v1, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/a9;->j1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/a9;->i1(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1b

    if-ne v1, p1, :cond_2

    .line 3
    check-cast p2, Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/a9;->k1(Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
