.class public Lcom/join/android/app/mgsim/wufun/databinding/j2;
.super Lcom/join/android/app/mgsim/wufun/databinding/i2;
.source "ActivityUserrecomActivityBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/mgsim/wufun/databinding/j2$a;
    }
.end annotation


# static fields
.field private static final q0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final r0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final K:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n0:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private o0:Lcom/join/android/app/mgsim/wufun/databinding/j2$a;

.field private p0:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->r0:Landroid/util/SparseIntArray;

    const v1, 0x7f091066

    const/4 v2, 0x4

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->q0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/j2;->r0:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/j2;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/join/android/app/mgsim/wufun/databinding/i2;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->K:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->n0:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i2;->E:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i2;->F:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/j2;->invalidateAll()V

    return-void
.end method

.method private l1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;>;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

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
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

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

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/j2;->m1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/j2;->l1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

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

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i2;->I:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

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

    const-wide/16 v0, 0x20

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

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

.method public j1(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i2;->J:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

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

.method protected k()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i2;->H:Lcom/join/kotlin/ui/userrecom/RecomViewModle;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/i2;->I:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    .line 7
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/i2;->J:Landroid/view/View$OnClickListener;

    const-wide/16 v8, 0x27

    and-long/2addr v8, v2

    const-wide/16 v10, 0x26

    const-wide/16 v12, 0x25

    const/4 v14, 0x0

    cmp-long v15, v8, v4

    if-eqz v15, :cond_4

    and-long v8, v2, v12

    cmp-long v15, v8, v4

    if-eqz v15, :cond_1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->getShowDataList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v14

    :goto_0
    const/4 v9, 0x0

    .line 9
    invoke-virtual {v1, v9, v8}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_1

    .line 10
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    move-object v8, v14

    :goto_1
    and-long v15, v2, v10

    cmp-long v9, v15, v4

    if-eqz v9, :cond_3

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->getTitleMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v14

    :goto_2
    const/4 v9, 0x1

    .line 12
    invoke-virtual {v1, v9, v0}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v0, v14

    goto :goto_3

    :cond_4
    move-object v0, v14

    move-object v8, v0

    :goto_3
    const-wide/16 v15, 0x28

    and-long/2addr v15, v2

    const-wide/16 v17, 0x30

    and-long v17, v2, v17

    cmp-long v9, v17, v4

    if-eqz v9, :cond_6

    if-eqz v7, :cond_6

    .line 14
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/j2;->o0:Lcom/join/android/app/mgsim/wufun/databinding/j2$a;

    if-nez v9, :cond_5

    new-instance v9, Lcom/join/android/app/mgsim/wufun/databinding/j2$a;

    invoke-direct {v9}, Lcom/join/android/app/mgsim/wufun/databinding/j2$a;-><init>()V

    iput-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/j2;->o0:Lcom/join/android/app/mgsim/wufun/databinding/j2$a;

    :cond_5
    invoke-virtual {v9, v7}, Lcom/join/android/app/mgsim/wufun/databinding/j2$a;->a(Landroid/view/View$OnClickListener;)Lcom/join/android/app/mgsim/wufun/databinding/j2$a;

    move-result-object v14

    :cond_6
    cmp-long v7, v17, v4

    if-eqz v7, :cond_7

    .line 15
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/j2;->n0:Landroid/widget/ImageView;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    cmp-long v7, v15, v4

    if-eqz v7, :cond_8

    .line 16
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/i2;->E:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_8
    and-long v6, v2, v12

    cmp-long v9, v6, v4

    if-eqz v9, :cond_9

    .line 17
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/i2;->E:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v8}, Lcom/join/kotlin/bindingadapter/ViewbindingRecycleviewAdapterKt;->recycleviewdataBinding(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    :cond_9
    and-long/2addr v2, v10

    cmp-long v6, v2, v4

    if-eqz v6, :cond_a

    .line 18
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/i2;->F:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a
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

.method public k1(Lcom/join/kotlin/ui/userrecom/RecomViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/userrecom/RecomViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i2;->H:Lcom/join/kotlin/ui/userrecom/RecomViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j2;->p0:J

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/16 v1, 0x1d

    if-ne v1, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/userrecom/RecomViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j2;->k1(Lcom/join/kotlin/ui/userrecom/RecomViewModle;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j2;->i1(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ne v1, p1, :cond_2

    .line 3
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j2;->j1(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
