.class public Lcom/join/android/app/mgsim/wufun/databinding/e4;
.super Lcom/join/android/app/mgsim/wufun/databinding/d4;
.source "BtListitemBindingImpl.java"


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

.field private final u0:Landroid/widget/TextView;
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

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/e4;->x0:Landroid/util/SparseIntArray;

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/e4;->w0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/e4;->x0:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/e4;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    invoke-direct/range {v0 .. v13}, Lcom/join/android/app/mgsim/wufun/databinding/d4;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/join/mgps/customview/DownloadViewStroke;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e4;->v0:J

    .line 4
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d4;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d4;->F:Lcom/join/mgps/customview/DownloadViewStroke;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d4;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d4;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d4;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d4;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d4;->n0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 11
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e4;->s0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 13
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e4;->t0:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 15
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e4;->u0:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d4;->o0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d4;->p0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 19
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/e4;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h1(Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/d4;->q0:Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e4;->v0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e4;->v0:J

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e4;->v0:J

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/d4;->r0:Lcom/join/kotlin/domain/common/AppListItemShowBean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e4;->v0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e4;->v0:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e4;->v0:J

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
    .locals 37

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/e4;->v0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/e4;->v0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->q0:Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->r0:Lcom/join/kotlin/domain/common/AppListItemShowBean;

    const-wide/16 v7, 0x7

    and-long v9, v2, v7

    const-wide/16 v11, 0x5

    const-wide/16 v13, 0x6

    cmp-long v17, v9, v4

    if-eqz v17, :cond_17

    and-long v9, v2, v11

    cmp-long v17, v9, v4

    if-eqz v17, :cond_0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getIcon()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getTags()Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getInfo()Ljava/lang/String;

    move-result-object v17

    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameName()Ljava/lang/String;

    move-result-object v18

    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getIconGif()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDownloadStatus()I

    move-result v20

    goto :goto_2

    :cond_2
    const/16 v20, 0x0

    :goto_2
    and-long v21, v2, v13

    cmp-long v23, v21, v4

    if-eqz v23, :cond_16

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getGiftShow()Z

    move-result v16

    .line 15
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getLodingInfo()Ljava/lang/String;

    move-result-object v23

    .line 16
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getProgressZipShow()Z

    move-result v24

    .line 17
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDescribeShow()Z

    move-result v25

    .line 18
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDownMessageShow()Z

    move-result v26

    .line 19
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getTagshow()Z

    move-result v27

    .line 20
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getAppSizeText()Ljava/lang/String;

    move-result-object v28

    .line 21
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getDownloadProgress()I

    move-result v29

    .line 22
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getProgresShow()Z

    move-result v30

    .line 23
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->getZipProgress()I

    move-result v6

    move-object/from16 v36, v23

    move/from16 v23, v16

    move-object/from16 v16, v36

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_3
    cmp-long v31, v21, v4

    if-eqz v31, :cond_5

    if-eqz v23, :cond_4

    const-wide/16 v21, 0x40

    goto :goto_4

    :cond_4
    const-wide/16 v21, 0x20

    :goto_4
    or-long v2, v2, v21

    :cond_5
    and-long v21, v2, v13

    cmp-long v31, v21, v4

    if-eqz v31, :cond_7

    if-eqz v24, :cond_6

    const-wide/16 v21, 0x10

    goto :goto_5

    :cond_6
    const-wide/16 v21, 0x8

    :goto_5
    or-long v2, v2, v21

    :cond_7
    and-long v21, v2, v13

    cmp-long v31, v21, v4

    if-eqz v31, :cond_9

    if-eqz v25, :cond_8

    const-wide/16 v21, 0x400

    goto :goto_6

    :cond_8
    const-wide/16 v21, 0x200

    :goto_6
    or-long v2, v2, v21

    :cond_9
    and-long v21, v2, v13

    cmp-long v31, v21, v4

    if-eqz v31, :cond_b

    if-eqz v26, :cond_a

    const-wide/16 v21, 0x4000

    goto :goto_7

    :cond_a
    const-wide/16 v21, 0x2000

    :goto_7
    or-long v2, v2, v21

    :cond_b
    and-long v21, v2, v13

    cmp-long v31, v21, v4

    if-eqz v31, :cond_d

    if-eqz v27, :cond_c

    const-wide/16 v21, 0x100

    goto :goto_8

    :cond_c
    const-wide/16 v21, 0x80

    :goto_8
    or-long v2, v2, v21

    :cond_d
    and-long v21, v2, v13

    cmp-long v31, v21, v4

    if-eqz v31, :cond_f

    if-eqz v30, :cond_e

    const-wide/16 v21, 0x1000

    goto :goto_9

    :cond_e
    const-wide/16 v21, 0x800

    :goto_9
    or-long v2, v2, v21

    :cond_f
    const/16 v21, 0x8

    if-eqz v23, :cond_10

    const/16 v22, 0x0

    goto :goto_a

    :cond_10
    const/16 v22, 0x8

    :goto_a
    if-eqz v24, :cond_11

    const/16 v23, 0x0

    goto :goto_b

    :cond_11
    const/16 v23, 0x8

    :goto_b
    if-eqz v25, :cond_12

    const/16 v24, 0x0

    goto :goto_c

    :cond_12
    const/16 v24, 0x8

    :goto_c
    if-eqz v26, :cond_13

    const/16 v25, 0x0

    goto :goto_d

    :cond_13
    const/16 v25, 0x8

    :goto_d
    if-eqz v27, :cond_14

    const/16 v26, 0x0

    goto :goto_e

    :cond_14
    const/16 v26, 0x8

    :goto_e
    if-eqz v30, :cond_15

    const/16 v21, 0x0

    :cond_15
    move-object/from16 v35, v10

    move-object/from16 v33, v17

    move-object/from16 v34, v18

    move-object/from16 v32, v19

    move/from16 v12, v21

    move/from16 v7, v22

    move/from16 v15, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v8, v29

    move-object/from16 v22, v0

    move-object/from16 v21, v9

    move-object/from16 v9, v16

    move/from16 v24, v23

    move-object/from16 v0, v28

    move/from16 v23, v20

    goto :goto_f

    :cond_16
    move-object/from16 v22, v0

    move-object/from16 v21, v9

    move-object/from16 v35, v10

    move-object/from16 v33, v17

    move-object/from16 v34, v18

    move-object/from16 v32, v19

    move/from16 v23, v20

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v24, 0x0

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_f
    and-long/2addr v13, v2

    cmp-long v25, v13, v4

    if-eqz v25, :cond_18

    .line 24
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->E:Landroid/widget/TextView;

    invoke-static {v13, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->n0:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/e4;->u0:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->o0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 31
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->o0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 32
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->p0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 33
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->p0:Landroid/widget/ProgressBar;

    move/from16 v15, v24

    invoke-virtual {v0, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_18
    const-wide/16 v6, 0x7

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_19

    .line 34
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->F:Lcom/join/mgps/customview/DownloadViewStroke;

    move-object/from16 v6, v22

    move/from16 v15, v23

    invoke-static {v0, v6, v15}, Lcom/join/kotlin/bindingadapter/ViewBindingDownloadViewKt;->downloadVIewBinding(Lcom/join/mgps/customview/DownloadViewStroke;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V

    :cond_19
    const-wide/16 v6, 0x5

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1a

    .line 35
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v9, v21

    move-object/from16 v2, v32

    const/4 v3, 0x0

    invoke-static {v0, v9, v2, v3}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/d4;->H:Landroid/widget/TextView;

    move-object/from16 v2, v33

    invoke-static {v0, v2}, Lcom/join/kotlin/bindingadapter/ViewBindingTextviewKt;->textViewBinding(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 37
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/e4;->t0:Landroid/widget/TextView;

    move-object/from16 v2, v34

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/e4;->u0:Landroid/widget/TextView;

    move-object/from16 v10, v35

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception v0

    .line 39
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
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/e4;->h1(Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/e4;->i1(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
