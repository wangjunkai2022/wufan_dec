.class public Lcom/join/android/app/mgsim/wufun/databinding/j40;
.super Lcom/join/android/app/mgsim/wufun/databinding/i40;
.source "MustplayReginActivityBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final s0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final t0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final o0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p0:Lcom/join/android/app/mgsim/wufun/databinding/w3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final q0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r0:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->s0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->t0:Landroid/util/SparseIntArray;

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->s0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/j40;->t0:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/j40;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v5, 0x3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/join/android/app/mgsim/wufun/databinding/i40;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i40;->E:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->o0:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/w3;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->p0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->z0(Landroidx/databinding/ViewDataBinding;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i40;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i40;->G:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 12
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->q0:Landroid/view/View$OnClickListener;

    .line 13
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/j40;->invalidateAll()V

    return-void
.end method

.method private p1(Landroidx/lifecycle/MutableLiveData;I)Z
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

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

.method private q1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

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

.method private r1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;",
            ">;>;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

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

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/j40;->p1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/j40;->q1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i40;->J:Lcom/join/kotlin/ui/notice/ClickProxy;

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->p0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

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

    const-wide/16 v0, 0x100

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->p0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

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

.method protected k()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i40;->K:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/i40;->H:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 7
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/i40;->n0:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    .line 8
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/i40;->I:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    const-wide/16 v9, 0x177

    and-long/2addr v9, v2

    const-wide/16 v13, 0x112

    const-wide/16 v15, 0x175

    const/4 v11, 0x0

    cmp-long v17, v9, v4

    if-eqz v17, :cond_d

    and-long v9, v2, v15

    cmp-long v17, v9, v4

    if-eqz v17, :cond_2

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getRecycleViewStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    .line 10
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v10

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    :goto_0
    invoke-virtual {v1, v11, v9}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    const/4 v11, 0x2

    .line 12
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_1

    .line 13
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v10, :cond_3

    .line 14
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :cond_3
    const/4 v10, 0x0

    :goto_2
    and-long v18, v2, v13

    cmp-long v11, v18, v4

    if-eqz v11, :cond_b

    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v11

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x1

    .line 16
    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_5

    .line 17
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/kotlin/domain/common/LoadBindindData;

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_6

    .line 18
    invoke-virtual {v11}, Lcom/join/kotlin/domain/common/LoadBindindData;->getShowStatus()I

    move-result v20

    move/from16 v13, v20

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    if-ne v13, v12, :cond_7

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_6
    cmp-long v13, v18, v4

    if-eqz v13, :cond_9

    if-eqz v12, :cond_8

    const-wide/16 v13, 0x400

    goto :goto_7

    :cond_8
    const-wide/16 v13, 0x200

    :goto_7
    or-long/2addr v2, v13

    :cond_9
    if-eqz v12, :cond_a

    const/16 v17, 0x0

    goto :goto_8

    :cond_a
    const/16 v12, 0x8

    const/16 v17, 0x8

    :goto_8
    const-wide/16 v12, 0x110

    goto :goto_9

    :cond_b
    const/4 v11, 0x0

    const-wide/16 v12, 0x110

    const/16 v17, 0x0

    :goto_9
    and-long v18, v2, v12

    cmp-long v12, v18, v4

    if-eqz v12, :cond_c

    if-eqz v6, :cond_c

    .line 19
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getTitle()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    move-object v12, v11

    move/from16 v11, v17

    goto :goto_a

    :cond_c
    move-object v12, v11

    move/from16 v11, v17

    const/4 v6, 0x0

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_a
    and-long v13, v2, v15

    const-wide/16 v15, 0x100

    and-long/2addr v15, v2

    cmp-long v17, v15, v4

    if-eqz v17, :cond_e

    .line 20
    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/i40;->E:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/j40;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    const-wide/16 v4, 0x112

    and-long/2addr v4, v2

    const-wide/16 v15, 0x0

    cmp-long v17, v4, v15

    if-eqz v17, :cond_f

    .line 21
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/j40;->p0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v4, v12}, Lcom/join/android/app/mgsim/wufun/databinding/w3;->h1(Lcom/join/kotlin/domain/common/LoadBindindData;)V

    .line 22
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/i40;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_f
    const-wide/16 v4, 0x108

    and-long/2addr v4, v2

    cmp-long v11, v4, v15

    if-eqz v11, :cond_10

    .line 23
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/j40;->p0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-virtual {v4, v0}, Lcom/join/android/app/mgsim/wufun/databinding/w3;->i1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    :cond_10
    cmp-long v0, v13, v15

    if-eqz v0, :cond_11

    .line 24
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i40;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0, v10, v8, v9, v7}, Lcom/join/kotlin/bindingadapter/ViewbindingRecycleviewAdapterKt;->xrecycleviewadapterBinding(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Ljava/util/List;Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Ljava/lang/Integer;Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    :cond_11
    const-wide/16 v4, 0x110

    and-long/2addr v2, v4

    cmp-long v0, v2, v15

    if-eqz v0, :cond_12

    .line 25
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i40;->G:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 26
    :cond_12
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/j40;->p0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->n(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k1(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;)V
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i40;->I:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

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

.method public l1(Lcom/join/kotlin/ui/notice/ClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/notice/ClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i40;->J:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

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

.method public m1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/common/LoadBindClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i40;->K:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

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

.method public n1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V
    .locals 4
    .param p1    # Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i40;->n0:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

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

.method public o1(Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i40;->H:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->r0:J

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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j40;->p0:Lcom/join/android/app/mgsim/wufun/databinding/w3;

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

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j40;->m1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1b

    if-ne v1, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j40;->o1(Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-ne v1, p1, :cond_2

    .line 3
    check-cast p2, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j40;->n1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j40;->k1(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    if-ne v1, p1, :cond_4

    .line 5
    check-cast p2, Lcom/join/kotlin/ui/notice/ClickProxy;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j40;->l1(Lcom/join/kotlin/ui/notice/ClickProxy;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
