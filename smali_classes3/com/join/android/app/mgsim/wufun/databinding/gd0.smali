.class public Lcom/join/android/app/mgsim/wufun/databinding/gd0;
.super Lcom/join/android/app/mgsim/wufun/databinding/fd0;
.source "UserRecomendListitemBindingImpl.java"


# static fields
.field private static final w0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final x0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final s0:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final t0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final u0:Lcom/join/kotlin/ui/userrecom/UserRecomTagView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private v0:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->x0:Landroid/util/SparseIntArray;

    const v1, 0x7f09057f

    const/16 v2, 0xc

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->w0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->x0:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/gd0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15

    move-object v14, p0

    const/4 v0, 0x7

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/join/mgps/customview/DownloadViewStroke;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ProgressBar;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/join/android/app/mgsim/wufun/databinding/fd0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/join/mgps/customview/DownloadViewStroke;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->v0:J

    .line 4
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->F:Lcom/join/mgps/customview/DownloadViewStroke;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->n0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 11
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->s0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 13
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->t0:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 15
    aget-object v0, p3, v0

    check-cast v0, Lcom/join/kotlin/ui/userrecom/UserRecomTagView;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->u0:Lcom/join/kotlin/ui/userrecom/UserRecomTagView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->o0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->p0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 19
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h1(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 4
    .param p1    # Lcom/join/mgps/business/CollectionBeanSubBusiness;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->q0:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->v0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->v0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

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

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->v0:J

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

.method public i1(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/common/AppListItemShowBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->r0:Lcom/join/kotlin/domain/common/AppListItemShowBean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->v0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->v0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x12

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

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->v0:J

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

.method protected k()V
    .locals 29

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->v0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->v0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->q0:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->r0:Lcom/join/kotlin/domain/common/AppListItemShowBean;

    const-wide/16 v7, 0x5

    and-long v9, v2, v7

    cmp-long v12, v9, v4

    if-eqz v12, :cond_0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v10

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const-wide/16 v14, 0x6

    and-long v16, v2, v14

    cmp-long v19, v16, v4

    if-eqz v19, :cond_14

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getGiftShow()Z

    move-result v18

    .line 12
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getLodingInfo()Ljava/lang/String;

    move-result-object v19

    .line 13
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getProgressZipShow()Z

    move-result v20

    .line 14
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDescribeShow()Z

    move-result v21

    .line 15
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDownMessageShow()Z

    move-result v22

    .line 16
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getTagshow()Z

    move-result v23

    .line 17
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getAppSizeText()Ljava/lang/String;

    move-result-object v24

    .line 18
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDownloadProgress()I

    move-result v25

    .line 19
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getProgresShow()Z

    move-result v26

    .line 20
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getZipProgress()I

    move-result v6

    move-object/from16 v28, v19

    move/from16 v19, v18

    move-object/from16 v18, v28

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_1
    cmp-long v27, v16, v4

    if-eqz v27, :cond_3

    if-eqz v19, :cond_2

    const-wide/16 v16, 0x40

    goto :goto_2

    :cond_2
    const-wide/16 v16, 0x20

    :goto_2
    or-long v2, v2, v16

    :cond_3
    and-long v16, v2, v14

    cmp-long v27, v16, v4

    if-eqz v27, :cond_5

    if-eqz v20, :cond_4

    const-wide/16 v16, 0x10

    goto :goto_3

    :cond_4
    const-wide/16 v16, 0x8

    :goto_3
    or-long v2, v2, v16

    :cond_5
    and-long v16, v2, v14

    cmp-long v27, v16, v4

    if-eqz v27, :cond_7

    if-eqz v21, :cond_6

    const-wide/16 v16, 0x400

    goto :goto_4

    :cond_6
    const-wide/16 v16, 0x200

    :goto_4
    or-long v2, v2, v16

    :cond_7
    and-long v16, v2, v14

    cmp-long v27, v16, v4

    if-eqz v27, :cond_9

    if-eqz v22, :cond_8

    const-wide/16 v16, 0x4000

    goto :goto_5

    :cond_8
    const-wide/16 v16, 0x2000

    :goto_5
    or-long v2, v2, v16

    :cond_9
    and-long v16, v2, v14

    cmp-long v27, v16, v4

    if-eqz v27, :cond_b

    if-eqz v23, :cond_a

    const-wide/16 v16, 0x100

    goto :goto_6

    :cond_a
    const-wide/16 v16, 0x80

    :goto_6
    or-long v2, v2, v16

    :cond_b
    and-long v16, v2, v14

    cmp-long v27, v16, v4

    if-eqz v27, :cond_d

    if-eqz v26, :cond_c

    const-wide/16 v16, 0x1000

    goto :goto_7

    :cond_c
    const-wide/16 v16, 0x800

    :goto_7
    or-long v2, v2, v16

    :cond_d
    const/16 v16, 0x8

    if-eqz v19, :cond_e

    const/16 v17, 0x0

    goto :goto_8

    :cond_e
    const/16 v17, 0x8

    :goto_8
    if-eqz v20, :cond_f

    const/16 v19, 0x0

    goto :goto_9

    :cond_f
    const/16 v19, 0x8

    :goto_9
    if-eqz v21, :cond_10

    const/16 v20, 0x0

    goto :goto_a

    :cond_10
    const/16 v20, 0x8

    :goto_a
    if-eqz v22, :cond_11

    const/16 v21, 0x0

    goto :goto_b

    :cond_11
    const/16 v21, 0x8

    :goto_b
    if-eqz v23, :cond_12

    const/16 v22, 0x0

    goto :goto_c

    :cond_12
    const/16 v22, 0x8

    :goto_c
    if-eqz v26, :cond_13

    const/16 v16, 0x0

    :cond_13
    move-object/from16 v23, v0

    move/from16 v8, v16

    move-object/from16 v7, v18

    move/from16 v0, v22

    move-object/from16 v11, v24

    move-object/from16 v22, v12

    move/from16 v24, v19

    move/from16 v12, v21

    move-object/from16 v19, v10

    move-object/from16 v21, v13

    move/from16 v10, v17

    move/from16 v13, v20

    move-object/from16 v20, v9

    move/from16 v9, v25

    goto :goto_d

    :cond_14
    move-object/from16 v23, v0

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v24, 0x0

    :goto_d
    and-long/2addr v14, v2

    cmp-long v25, v14, v4

    if-eqz v25, :cond_15

    .line 21
    iget-object v14, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->E:Landroid/widget/TextView;

    invoke-static {v14, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 22
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->H:Landroid/widget/TextView;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->J:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->n0:Landroid/widget/TextView;

    invoke-static {v10, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 26
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->u0:Lcom/join/kotlin/ui/userrecom/UserRecomTagView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->o0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 28
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->o0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 29
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->p0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 30
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->p0:Landroid/widget/ProgressBar;

    move/from16 v11, v24

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_15
    const-wide/16 v6, 0x5

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_16

    .line 31
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->F:Lcom/join/mgps/customview/DownloadViewStroke;

    move-object/from16 v2, v23

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/join/kotlin/bindingadapter/ViewBindingDownloadViewKt;->downloadVIewBinding(Lcom/join/mgps/customview/DownloadViewStroke;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V

    .line 32
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v11, v22

    invoke-static {v0, v11}, Lcom/join/kotlin/bindingadapter/ViewBindingFresscoImageKt;->simpleDraweeViewBinding(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 33
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->H:Landroid/widget/TextView;

    move-object/from16 v11, v21

    invoke-static {v0, v11}, Lcom/join/kotlin/bindingadapter/ViewBindingTextviewKt;->textViewBinding(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 34
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->t0:Landroid/widget/TextView;

    move-object/from16 v9, v20

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->u0:Lcom/join/kotlin/ui/userrecom/UserRecomTagView;

    move-object/from16 v10, v19

    invoke-virtual {v0, v10}, Lcom/join/kotlin/ui/userrecom/UserRecomTagView;->setDatas(Ljava/util/List;)V

    :cond_16
    return-void

    :catchall_0
    move-exception v0

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->h1(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->i1(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
