.class public Lcom/join/android/app/mgsim/wufun/databinding/x3;
.super Lcom/join/android/app/mgsim/wufun/databinding/w3;
.source "BinddingLoadLayoutIncludeBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final A0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final z0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final v0:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final x0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y0:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->A0:Landroid/util/SparseIntArray;

    const v1, 0x7f09098f

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090f6e

    const/4 v2, 0x7

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090481

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0909ac

    const/16 v2, 0x9

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090e25

    const/16 v2, 0xa

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090b23

    const/16 v2, 0xb

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090b22

    const/16 v2, 0xc

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090e20

    const/16 v2, 0xd

    .line 9
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->z0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/x3;->A0:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/x3;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x8

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x5

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x6

    aget-object v6, p3, v6

    check-cast v6, Lcom/join/mgps/customview/LoadingImageView;

    const/16 v7, 0x9

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v15, 0x2

    aget-object v8, p3, v15

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    aget-object v9, p3, v14

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v10, 0xc

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0xb

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/ImageView;

    const/4 v12, 0x3

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v13, 0xd

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v16, 0x4

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/Button;

    move-object/from16 v14, v16

    const/16 v16, 0xa

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/16 v16, 0x7

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x0

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lcom/join/android/app/mgsim/wufun/databinding/w3;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/customview/LoadingImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x3;->y0:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/w3;->F:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/w3;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/w3;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x3;->v0:Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/w3;->o0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/w3;->q0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 11
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 12
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x3;->w0:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x3;->x0:Landroid/view/View$OnClickListener;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/x3;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->u0:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 2
    invoke-interface {p1}, Lcom/join/kotlin/domain/common/LoadBindClickProxy;->onClickSetNetWork()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->u0:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 4
    invoke-interface {p1}, Lcom/join/kotlin/domain/common/LoadBindClickProxy;->onClickReload()V

    :cond_4
    :goto_0
    return-void
.end method

.method public h1(Lcom/join/kotlin/domain/common/LoadBindindData;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/common/LoadBindindData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->t0:Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->y0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->y0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->y0:J

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

.method public i1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/common/LoadBindClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->u0:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->y0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->y0:J

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

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->y0:J

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
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->y0:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->y0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->t0:Lcom/join/kotlin/domain/common/LoadBindindData;

    const-wide/16 v5, 0x6

    and-long v7, v0, v5

    const/4 v9, 0x0

    cmp-long v10, v7, v2

    if-eqz v10, :cond_d

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/join/kotlin/domain/common/LoadBindindData;->getShowStatus()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v10, 0x4

    const/4 v11, 0x1

    if-ne v4, v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    const/4 v12, 0x2

    if-ne v4, v12, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x3

    if-ne v4, v13, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    cmp-long v4, v7, v2

    if-eqz v4, :cond_5

    if-eqz v10, :cond_4

    const-wide/16 v7, 0x10

    goto :goto_4

    :cond_4
    const-wide/16 v7, 0x8

    :goto_4
    or-long/2addr v0, v7

    :cond_5
    and-long v7, v0, v5

    cmp-long v4, v7, v2

    if-eqz v4, :cond_7

    if-eqz v12, :cond_6

    const-wide/16 v7, 0x100

    goto :goto_5

    :cond_6
    const-wide/16 v7, 0x80

    :goto_5
    or-long/2addr v0, v7

    :cond_7
    and-long v7, v0, v5

    cmp-long v4, v7, v2

    if-eqz v4, :cond_9

    if-eqz v11, :cond_8

    const-wide/16 v7, 0x40

    goto :goto_6

    :cond_8
    const-wide/16 v7, 0x20

    :goto_6
    or-long/2addr v0, v7

    :cond_9
    const/16 v4, 0x8

    if-eqz v10, :cond_a

    const/4 v7, 0x0

    goto :goto_7

    :cond_a
    const/16 v7, 0x8

    :goto_7
    if-eqz v12, :cond_b

    const/4 v8, 0x0

    goto :goto_8

    :cond_b
    const/16 v8, 0x8

    :goto_8
    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    const/16 v9, 0x8

    :goto_9
    move v4, v9

    move v9, v7

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_a
    and-long/2addr v5, v0

    cmp-long v7, v5, v2

    if-eqz v7, :cond_e

    .line 7
    iget-object v5, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v5, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_e
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    .line 10
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->o0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w3;->q0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/x3;->w0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    return-void

    :catchall_0
    move-exception v0

    .line 12
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

    const/16 v0, 0x13

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/x3;->i1(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/x3;->h1(Lcom/join/kotlin/domain/common/LoadBindindData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
