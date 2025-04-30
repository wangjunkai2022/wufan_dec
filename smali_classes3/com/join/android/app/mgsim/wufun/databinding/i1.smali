.class public Lcom/join/android/app/mgsim/wufun/databinding/i1;
.super Lcom/join/android/app/mgsim/wufun/databinding/h1;
.source "ActivityNoticelistActivityBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final r0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final s0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final n0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o0:Lcom/join/android/app/mgsim/wufun/databinding/w3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final p0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q0:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->r0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "bindding_load_layout_include"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v2, v2, [I

    const v4, 0x7f0c009e

    aput v4, v2, v5

    invoke-virtual {v0, v5, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->s0:Landroid/util/SparseIntArray;

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->r0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/i1;->s0:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/i1;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    .line 2
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/join/android/app/mgsim/wufun/databinding/h1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h1;->E:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->n0:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/w3;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->o0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->z0(Landroidx/databinding/ViewDataBinding;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h1;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h1;->G:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 12
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->p0:Landroid/view/View$OnClickListener;

    .line 13
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/i1;->invalidateAll()V

    return-void
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

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

.method private o1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;>;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/i1;->o1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/i1;->n1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h1;->J:Lcom/join/kotlin/ui/notice/ClickProxy;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/join/kotlin/ui/notice/ClickProxy;->onClickBack()V

    :cond_1
    return-void
.end method

.method public hasPendingBindings()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->o0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

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

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->o0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

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

.method public j1(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h1;->I:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method protected k()V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->K:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->H:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    const-wide/16 v7, 0x4b

    and-long/2addr v7, v2

    const-wide/16 v11, 0x49

    const-wide/16 v13, 0x48

    const/4 v15, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmp-long v18, v7, v4

    if-eqz v18, :cond_b

    and-long v7, v2, v13

    cmp-long v18, v7, v4

    if-eqz v18, :cond_0

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v6}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getTitle()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v10

    :goto_0
    and-long v18, v2, v11

    cmp-long v8, v18, v4

    if-eqz v8, :cond_8

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getLoadDataBinding()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v10

    .line 9
    :goto_1
    invoke-virtual {v1, v9, v8}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_2

    .line 10
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/kotlin/domain/common/LoadBindindData;

    goto :goto_2

    :cond_2
    move-object v8, v10

    :goto_2
    if-eqz v8, :cond_3

    .line 11
    invoke-virtual {v8}, Lcom/join/kotlin/domain/common/LoadBindindData;->getShowStatus()I

    move-result v20

    move/from16 v9, v20

    :cond_3
    if-ne v9, v15, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    cmp-long v21, v18, v4

    if-eqz v21, :cond_6

    if-eqz v9, :cond_5

    const-wide/16 v18, 0x100

    goto :goto_4

    :cond_5
    const-wide/16 v18, 0x80

    :goto_4
    or-long v2, v2, v18

    :cond_6
    if-eqz v9, :cond_7

    goto :goto_5

    :cond_7
    const/16 v9, 0x8

    goto :goto_6

    :cond_8
    move-object v8, v10

    :goto_5
    const/4 v9, 0x0

    :goto_6
    const-wide/16 v16, 0x4a

    and-long v18, v2, v16

    cmp-long v20, v18, v4

    if-eqz v20, :cond_a

    if-eqz v6, :cond_9

    .line 12
    invoke-virtual {v6}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getNoticeDats()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    goto :goto_7

    :cond_9
    move-object v6, v10

    .line 13
    :goto_7
    invoke-virtual {v1, v15, v6}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_a

    .line 14
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/util/ArrayList;

    :cond_a
    move-object v6, v10

    move-object v10, v8

    goto :goto_8

    :cond_b
    move-object v6, v10

    move-object v7, v6

    const/4 v9, 0x0

    :goto_8
    const-wide/16 v18, 0x40

    and-long v18, v2, v18

    cmp-long v8, v18, v4

    if-eqz v8, :cond_c

    .line 15
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->E:Landroid/widget/ImageView;

    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/i1;->p0:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v8, v15}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    :cond_c
    const-wide/16 v13, 0x44

    and-long/2addr v13, v2

    cmp-long v8, v13, v4

    if-eqz v8, :cond_d

    .line 17
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/i1;->o0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v8, v0}, Lcom/join/android/app/mgsim/wufun/databinding/w3;->i1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    :cond_d
    and-long/2addr v11, v2

    cmp-long v0, v11, v4

    if-eqz v0, :cond_e

    .line 18
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i1;->o0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v0, v10}, Lcom/join/android/app/mgsim/wufun/databinding/w3;->h1(Lcom/join/kotlin/domain/common/LoadBindindData;)V

    .line 19
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_e
    const-wide/16 v8, 0x4a

    and-long/2addr v8, v2

    cmp-long v0, v8, v4

    if-eqz v0, :cond_f

    .line 20
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0, v6}, Lcom/join/kotlin/bindingadapter/ViewbindingRecycleviewAdapterKt;->recycleviewdataBinding(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    :cond_f
    const-wide/16 v8, 0x48

    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    .line 21
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->G:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 22
    :cond_10
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i1;->o0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->n(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k1(Lcom/join/kotlin/ui/notice/ClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/notice/ClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h1;->J:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

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

.method public l1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/common/LoadBindClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h1;->K:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

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

.method public m1(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/notice/NoticeViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h1;->H:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->q0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1d

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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i1;->o0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

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

    const/16 v1, 0x13

    if-ne v1, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i1;->l1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-ne v1, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/notice/NoticeViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i1;->m1(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i1;->j1(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    if-ne v1, p1, :cond_3

    .line 4
    check-cast p2, Lcom/join/kotlin/ui/notice/ClickProxy;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i1;->k1(Lcom/join/kotlin/ui/notice/ClickProxy;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
