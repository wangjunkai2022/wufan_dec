.class public Lcom/join/android/app/mgsim/wufun/databinding/h40;
.super Lcom/join/android/app/mgsim/wufun/databinding/g40;
.source "MustplayItemLayoutBindingImpl.java"


# static fields
.field private static final t0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final u0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final q0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s0:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->t0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "video_dbs_layout"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v4, v2, [I

    const v6, 0x7f0c05d1

    aput v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->u0:Landroid/util/SparseIntArray;

    const v1, 0x7f090f1a

    const/16 v2, 0x8

    .line 4
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->t0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/h40;->u0:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/h40;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x2

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/join/mgps/customview/DownloadViewStroke;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/join/android/app/mgsim/wufun/databinding/g40;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Lcom/join/mgps/customview/DownloadViewStroke;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/kotlin/domain/widget/CornersLinearLayout;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g40;->E:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g40;->F:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g40;->G:Lcom/join/mgps/customview/DownloadViewStroke;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g40;->H:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 8
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->q0:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x7

    .line 10
    aget-object p1, p3, p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 11
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->z0(Landroidx/databinding/ViewDataBinding;)V

    .line 12
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g40;->I:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g40;->K:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/h40;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasPendingBindings()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

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

.method public i1(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g40;->o0:Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x9

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

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

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

.method public j1(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/VideoModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g40;->p0:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x19

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
    .locals 26

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->p0:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->o0:Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 7
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->n0:Lcom/join/android/app/component/video/c;

    const-wide/16 v8, 0xa

    and-long v10, v2, v8

    const-wide/16 v14, 0x80

    const/4 v12, 0x1

    cmp-long v17, v10, v4

    if-eqz v17, :cond_a

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getTags()Ljava/util/List;

    move-result-object v17

    .line 9
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameName()Ljava/lang/String;

    move-result-object v18

    .line 10
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v19

    .line 11
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getInfo()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    if-eqz v17, :cond_1

    .line 12
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v13, v20

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-le v13, v12, :cond_2

    const/16 v21, 0x1

    goto :goto_2

    :cond_2
    const/16 v21, 0x0

    :goto_2
    if-lez v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    cmp-long v22, v10, v4

    if-eqz v22, :cond_5

    if-eqz v21, :cond_4

    or-long/2addr v2, v14

    const-wide/16 v10, 0x200

    goto :goto_4

    :cond_4
    const-wide/16 v10, 0x40

    or-long/2addr v2, v10

    const-wide/16 v10, 0x100

    :goto_4
    or-long/2addr v2, v10

    :cond_5
    and-long v10, v2, v8

    cmp-long v22, v10, v4

    if-eqz v22, :cond_7

    if-eqz v13, :cond_6

    const-wide/16 v10, 0x20

    or-long/2addr v2, v10

    const-wide/16 v10, 0x800

    goto :goto_5

    :cond_6
    const-wide/16 v10, 0x10

    or-long/2addr v2, v10

    const-wide/16 v10, 0x400

    :goto_5
    or-long/2addr v2, v10

    :cond_7
    const/16 v10, 0x8

    if-eqz v21, :cond_8

    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    const/16 v11, 0x8

    :goto_6
    if-eqz v13, :cond_9

    const/4 v10, 0x0

    :cond_9
    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v23, v19

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    :goto_7
    const-wide/16 v24, 0xc

    and-long v24, v2, v24

    and-long/2addr v14, v2

    cmp-long v19, v14, v4

    if-eqz v19, :cond_b

    if-eqz v8, :cond_b

    .line 13
    invoke-static {v8, v12}, Landroidx/databinding/ViewDataBinding;->M(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_8

    :cond_b
    const/4 v12, 0x0

    :goto_8
    const-wide/16 v14, 0x800

    and-long/2addr v14, v2

    cmp-long v16, v14, v4

    if-eqz v16, :cond_c

    if-eqz v8, :cond_c

    const/4 v14, 0x0

    .line 14
    invoke-static {v8, v14}, Landroidx/databinding/ViewDataBinding;->M(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_9

    :cond_c
    const/4 v8, 0x0

    :goto_9
    const-wide/16 v14, 0xa

    and-long/2addr v14, v2

    cmp-long v16, v14, v4

    if-eqz v16, :cond_f

    if-eqz v21, :cond_d

    goto :goto_a

    :cond_d
    const-string v12, ""

    :goto_a
    if-eqz v13, :cond_e

    goto :goto_b

    :cond_e
    const-string v8, ""

    :goto_b
    move-object v13, v8

    goto :goto_c

    :cond_f
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_c
    cmp-long v8, v14, v4

    if-eqz v8, :cond_10

    .line 15
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->E:Landroid/widget/TextView;

    invoke-static {v8, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 16
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->E:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->F:Landroid/widget/TextView;

    invoke-static {v8, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 18
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->F:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->G:Lcom/join/mgps/customview/DownloadViewStroke;

    move-object/from16 v10, v23

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/join/kotlin/bindingadapter/ViewBindingDownloadViewKt;->downloadVIewBinding(Lcom/join/mgps/customview/DownloadViewStroke;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V

    .line 20
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->H:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 21
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/g40;->I:Landroid/widget/TextView;

    invoke-static {v8, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_10
    cmp-long v6, v24, v4

    if-eqz v6, :cond_11

    .line 22
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/h40;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    invoke-virtual {v6, v7}, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->i1(Lcom/join/android/app/component/video/c;)V

    :cond_11
    const-wide/16 v6, 0x9

    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_12

    .line 23
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/h40;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    invoke-virtual {v2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->h1(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    .line 24
    :cond_12
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h40;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->n(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k1(Lcom/join/android/app/component/video/c;)V
    .locals 4
    .param p1    # Lcom/join/android/app/component/video/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g40;->n0:Lcom/join/android/app/component/video/c;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->s0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1a

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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h40;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/h40;->j1(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/h40;->i1(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lcom/join/android/app/component/video/c;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/h40;->k1(Lcom/join/android/app/component/video/c;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
