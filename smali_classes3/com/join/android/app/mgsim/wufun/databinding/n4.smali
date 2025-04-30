.class public Lcom/join/android/app/mgsim/wufun/databinding/n4;
.super Lcom/join/android/app/mgsim/wufun/databinding/m4;
.source "BtVideoItemLayoutBindingImpl.java"


# static fields
.field private static final u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final v0:Landroid/util/SparseIntArray;
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

.field private final s0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private t0:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

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

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->v0:Landroid/util/SparseIntArray;

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->v0:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/n4;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x6

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/join/mgps/customview/DownloadViewStroke;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/join/android/app/mgsim/wufun/databinding/m4;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/join/mgps/customview/DownloadViewStroke;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/kotlin/domain/widget/CornersLinearLayout;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->E:Lcom/join/mgps/customview/DownloadViewStroke;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->F:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->q0:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x7

    .line 9
    aget-object p1, p3, p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 10
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->z0(Landroidx/databinding/ViewDataBinding;)V

    const/4 p1, 0x2

    .line 11
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->s0:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->H:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->J:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/n4;->invalidateAll()V

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

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

    const-wide/16 v0, 0x10

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

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

.method public j1(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->o0:Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

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

.method protected k()V
    .locals 24

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m4;->p0:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/m4;->K:Ljava/lang/Boolean;

    .line 7
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/m4;->o0:Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 8
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/m4;->n0:Lcom/join/android/app/component/video/c;

    const-wide/16 v9, 0x12

    and-long v11, v2, v9

    cmp-long v14, v11, v4

    if-eqz v14, :cond_3

    .line 9
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->w0(Ljava/lang/Boolean;)Z

    move-result v6

    cmp-long v14, v11, v4

    if-eqz v14, :cond_1

    if-eqz v6, :cond_0

    const-wide/16 v11, 0x40

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x20

    :goto_0
    or-long/2addr v2, v11

    :cond_1
    if-eqz v6, :cond_2

    .line 10
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->q0:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v11, 0x7f080d32

    goto :goto_1

    :cond_2
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->q0:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v11, 0x7f080079

    :goto_1
    invoke-static {v6, v11}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-wide/16 v11, 0x14

    and-long v14, v2, v11

    cmp-long v17, v14, v4

    if-eqz v17, :cond_a

    if-eqz v7, :cond_4

    .line 11
    invoke-virtual {v7}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getTip()Ljava/lang/String;

    move-result-object v17

    .line 12
    invoke-virtual {v7}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameName()Ljava/lang/String;

    move-result-object v18

    .line 13
    invoke-virtual {v7}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v19

    .line 14
    invoke-virtual {v7}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getInfo()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    :goto_3
    const-string v13, ""

    if-ne v9, v13, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    cmp-long v20, v14, v4

    if-eqz v20, :cond_7

    if-eqz v13, :cond_6

    const-wide/16 v14, 0x100

    goto :goto_5

    :cond_6
    const-wide/16 v14, 0x80

    :goto_5
    or-long/2addr v2, v14

    :cond_7
    if-eqz v19, :cond_8

    .line 15
    invoke-virtual/range {v19 .. v19}, Lcom/join/mgps/dto/CollectionBeanSub;->getGif_ico_remote()Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-virtual/range {v19 .. v19}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v14

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_6
    if-eqz v13, :cond_9

    const/16 v13, 0x8

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    :goto_7
    move-object/from16 v21, v9

    move v14, v13

    move-object/from16 v13, v19

    move-object v9, v7

    move-object/from16 v7, v16

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_8
    const-wide/16 v22, 0x18

    and-long v22, v2, v22

    and-long/2addr v11, v2

    cmp-long v16, v11, v4

    if-eqz v16, :cond_b

    .line 17
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/m4;->E:Lcom/join/mgps/customview/DownloadViewStroke;

    const/4 v12, 0x0

    invoke-static {v11, v13, v12}, Lcom/join/kotlin/bindingadapter/ViewBindingDownloadViewKt;->downloadVIewBinding(Lcom/join/mgps/customview/DownloadViewStroke;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V

    .line 18
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/m4;->F:Landroid/widget/TextView;

    invoke-static {v11, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 19
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/m4;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v10, v15, v7, v12}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->s0:Landroid/widget/TextView;

    invoke-static {v7, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 21
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->s0:Landroid/widget/TextView;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/m4;->H:Landroid/widget/TextView;

    move-object/from16 v9, v21

    invoke-static {v7, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b
    const-wide/16 v9, 0x12

    and-long/2addr v9, v2

    cmp-long v7, v9, v4

    if-eqz v7, :cond_c

    .line 23
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->q0:Landroid/widget/LinearLayout;

    invoke-static {v7, v6}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_c
    cmp-long v6, v22, v4

    if-eqz v6, :cond_d

    .line 24
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    invoke-virtual {v6, v8}, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->i1(Lcom/join/android/app/component/video/c;)V

    :cond_d
    const-wide/16 v6, 0x11

    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_e

    .line 25
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    invoke-virtual {v2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->h1(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    .line 26
    :cond_e
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/n4;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

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

.method public k1(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->K:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

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

.method public l1(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/VideoModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->p0:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

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

.method public m1(Lcom/join/android/app/component/video/c;)V
    .locals 4
    .param p1    # Lcom/join/android/app/component/video/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m4;->n0:Lcom/join/android/app/component/video/c;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t0:J

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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/n4;->r0:Lcom/join/android/app/mgsim/wufun/databinding/hd0;

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

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/n4;->l1(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/n4;->k1(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/n4;->j1(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1a

    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Lcom/join/android/app/component/video/c;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/n4;->m1(Lcom/join/android/app/component/video/c;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
