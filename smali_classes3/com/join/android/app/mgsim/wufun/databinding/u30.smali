.class public Lcom/join/android/app/mgsim/wufun/databinding/u30;
.super Lcom/join/android/app/mgsim/wufun/databinding/t30;
.source "ModarchiveListItemBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final F0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final G0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final A0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final B0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final C0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final D0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private E0:J

.field private final w0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x0:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final y0:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final z0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->G0:Landroid/util/SparseIntArray;

    const v1, 0x7f090a2e

    const/16 v2, 0xd

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090a7b

    const/16 v2, 0xe

    .line 3
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->F0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->G0:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/u30;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v15, p0

    const/4 v14, 0x3

    .line 2
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x4

    aget-object v0, p3, v3

    move-object/from16 v17, v0

    check-cast v17, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x5

    aget-object v0, p3, v2

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/join/android/app/mgsim/wufun/databinding/t30;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/u30;->w0:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 9
    aget-object v3, p3, v0

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/u30;->x0:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 11
    aget-object v3, p3, v3

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/u30;->y0:Landroid/view/View;

    .line 12
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->J:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->K:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->n0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->o0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->p0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->q0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/t30;->r0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 20
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 21
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/u30;->z0:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/u30;->A0:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/u30;->B0:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/u30;->C0:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/u30;->D0:Landroid/view/View$OnClickListener;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/u30;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    iget-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_b

    .line 3
    invoke-interface {v2, p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickMore(Landroid/view/View;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 5
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_b

    .line 6
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickRun(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 8
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_b

    .line 9
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickDislike(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 11
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_b

    .line 12
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onPraise(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 13
    :cond_8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 14
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_9

    const/4 v2, 0x1

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_b

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    if-eqz v0, :cond_b

    .line 15
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickImage(Ljava/lang/String;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

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

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

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

.method public j1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

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
    .locals 40

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->u0:Ljava/lang/Boolean;

    const-wide/16 v7, 0x1a

    and-long v9, v2, v7

    const/16 v13, 0x8

    const-wide/16 v14, 0x12

    const/4 v11, 0x1

    cmp-long v18, v9, v4

    if-eqz v18, :cond_22

    and-long v9, v2, v14

    cmp-long v18, v9, v4

    if-eqz v18, :cond_1d

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    move-result v18

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v19

    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    move-result v20

    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    move-result v21

    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    move-result-object v22

    .line 12
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAvatar()Ljava/lang/String;

    move-result-object v23

    .line 13
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    move-result v24

    .line 14
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    move-result v25

    .line 15
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    move-result-object v26

    .line 16
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v27

    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    move-result v28

    .line 18
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowText()Ljava/lang/String;

    move-result-object v29

    .line 19
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowType()I

    move-result v30

    .line 20
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v31

    move/from16 v7, v18

    move-object/from16 v12, v19

    move/from16 v8, v20

    move/from16 v14, v21

    move/from16 v15, v24

    move/from16 v21, v25

    move/from16 v4, v28

    move/from16 v5, v30

    move/from16 v28, v31

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_0
    if-ne v7, v13, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 21
    :goto_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    if-ne v14, v11, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-nez v22, :cond_3

    const/16 v32, 0x1

    goto :goto_3

    :cond_3
    const/16 v32, 0x0

    :goto_3
    if-ne v15, v11, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 22
    :goto_4
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    if-ne v4, v11, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    if-ne v5, v11, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    .line 23
    :goto_6
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v30, 0x0

    cmp-long v28, v9, v30

    if-eqz v28, :cond_8

    if-eqz v7, :cond_7

    const-wide/16 v9, 0x4000

    goto :goto_7

    :cond_7
    const-wide/16 v9, 0x2000

    :goto_7
    or-long/2addr v2, v9

    :cond_8
    const-wide/16 v9, 0x12

    and-long v24, v2, v9

    cmp-long v28, v24, v30

    if-eqz v28, :cond_a

    if-eqz v14, :cond_9

    const-wide/16 v24, 0x100

    goto :goto_8

    :cond_9
    const-wide/16 v24, 0x80

    :goto_8
    or-long v2, v2, v24

    :cond_a
    and-long v24, v2, v9

    cmp-long v28, v24, v30

    if-eqz v28, :cond_c

    if-eqz v32, :cond_b

    const-wide/16 v24, 0x1000

    goto :goto_9

    :cond_b
    const-wide/16 v24, 0x800

    :goto_9
    or-long v2, v2, v24

    :cond_c
    and-long v24, v2, v9

    cmp-long v28, v24, v30

    if-eqz v28, :cond_e

    if-eqz v15, :cond_d

    const-wide/32 v24, 0x40000

    goto :goto_a

    :cond_d
    const-wide/32 v24, 0x20000

    :goto_a
    or-long v2, v2, v24

    :cond_e
    and-long v24, v2, v9

    cmp-long v28, v24, v30

    if-eqz v28, :cond_10

    if-eqz v4, :cond_f

    const-wide/32 v24, 0x400000

    goto :goto_b

    :cond_f
    const-wide/32 v24, 0x200000

    :goto_b
    or-long v2, v2, v24

    :cond_10
    and-long v34, v2, v9

    cmp-long v9, v34, v30

    if-eqz v9, :cond_12

    if-eqz v5, :cond_11

    const-wide/32 v9, 0x10000

    goto :goto_c

    :cond_11
    const-wide/32 v9, 0x8000

    :goto_c
    or-long/2addr v2, v9

    :cond_12
    if-eqz v7, :cond_13

    .line 24
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->o0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f08084d

    goto :goto_d

    :cond_13
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->o0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f08081d

    :goto_d
    invoke-static {v7, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v14, :cond_14

    const/4 v9, 0x0

    goto :goto_e

    :cond_14
    const/16 v9, 0x8

    :goto_e
    if-eqz v32, :cond_15

    const/16 v10, 0x8

    goto :goto_f

    :cond_15
    const/4 v10, 0x0

    .line 25
    :goto_f
    iget-object v14, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->K:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v15, :cond_16

    const v15, 0x7f0802db

    goto :goto_10

    :cond_16
    const v15, 0x7f0802da

    :goto_10
    invoke-static {v14, v15}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v4, :cond_17

    .line 26
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->F:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v15, 0x7f080385

    goto :goto_11

    :cond_17
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->F:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v15, 0x7f080384

    :goto_11
    invoke-static {v4, v15}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v5, :cond_18

    const/16 v5, 0x8

    goto :goto_12

    :cond_18
    const/4 v5, 0x0

    :goto_12
    if-eqz v12, :cond_19

    .line 27
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_13

    :cond_19
    const/4 v12, 0x0

    :goto_13
    const-wide/16 v24, 0x12

    and-long v34, v2, v24

    const-wide/16 v30, 0x0

    cmp-long v13, v34, v30

    if-eqz v13, :cond_1b

    if-eqz v12, :cond_1a

    const-wide/16 v34, 0x400

    goto :goto_14

    :cond_1a
    const-wide/16 v34, 0x200

    :goto_14
    or-long v2, v2, v34

    :cond_1b
    if-eqz v12, :cond_1c

    .line 28
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f080815

    goto :goto_15

    :cond_1c
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f080814

    :goto_15
    invoke-static {v12, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_16

    :cond_1d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_16
    if-eqz v0, :cond_1e

    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsChoice()I

    move-result v0

    goto :goto_17

    :cond_1e
    const/4 v0, 0x0

    :goto_17
    if-ne v0, v11, :cond_1f

    const/4 v0, 0x1

    goto :goto_18

    :cond_1f
    const/4 v0, 0x0

    :goto_18
    const-wide/16 v19, 0x1a

    and-long v34, v2, v19

    const-wide/16 v30, 0x0

    cmp-long v13, v34, v30

    if-eqz v13, :cond_21

    if-eqz v0, :cond_20

    const-wide/16 v15, 0x40

    or-long/2addr v2, v15

    goto :goto_19

    :cond_20
    const-wide/16 v15, 0x40

    const-wide/16 v34, 0x20

    or-long v2, v2, v34

    goto :goto_19

    :cond_21
    const-wide/16 v15, 0x40

    :goto_19
    move/from16 v17, v0

    move/from16 v36, v10

    move-object v13, v12

    move-object/from16 v12, v22

    move-object/from16 v37, v23

    move-object/from16 v38, v26

    move-object/from16 v0, v27

    move-object/from16 v39, v29

    move-object v10, v4

    move-object/from16 v4, v21

    goto :goto_1a

    :cond_22
    move-wide/from16 v30, v4

    const-wide/16 v15, 0x40

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    :goto_1a
    and-long/2addr v15, v2

    cmp-long v21, v15, v30

    if-eqz v21, :cond_23

    .line 30
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->w0(Ljava/lang/Boolean;)Z

    move-result v6

    xor-int/2addr v6, v11

    goto :goto_1b

    :cond_23
    const/4 v6, 0x0

    :goto_1b
    const-wide/16 v15, 0x1a

    and-long v21, v2, v15

    cmp-long v11, v21, v30

    if-eqz v11, :cond_28

    if-eqz v17, :cond_24

    goto :goto_1c

    :cond_24
    const/4 v6, 0x0

    :goto_1c
    cmp-long v11, v21, v30

    if-eqz v11, :cond_26

    if-eqz v6, :cond_25

    const-wide/32 v15, 0x100000

    goto :goto_1d

    :cond_25
    const-wide/32 v15, 0x80000

    :goto_1d
    or-long/2addr v2, v15

    :cond_26
    if-eqz v6, :cond_27

    const/16 v33, 0x0

    goto :goto_1e

    :cond_27
    const/16 v33, 0x8

    :goto_1e
    move/from16 v6, v33

    goto :goto_1f

    :cond_28
    const/4 v6, 0x0

    :goto_1f
    const-wide/16 v15, 0x12

    and-long/2addr v15, v2

    const-wide/16 v21, 0x0

    cmp-long v11, v15, v21

    if-eqz v11, :cond_29

    .line 31
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->E:Landroid/widget/TextView;

    invoke-static {v11, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->F:Landroid/widget/ImageView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->G:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->w0:Landroid/widget/LinearLayout;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->x0:Lcom/facebook/drawee/view/SimpleDraweeView;

    move/from16 v10, v36

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->x0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v12, v4, v10}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->y0:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->K:Landroid/widget/ImageView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->n0:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->o0:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->o0:Landroid/widget/TextView;

    move-object/from16 v4, v39

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->q0:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v4, v37

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v7}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->r0:Landroid/widget/TextView;

    move-object/from16 v4, v38

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_29
    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_2a

    .line 45
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->F:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->z0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->x0:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->A0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->J:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->B0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->K:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->D0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->o0:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/u30;->C0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2a
    const-wide/16 v4, 0x1a

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2b

    .line 50
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/t30;->p0:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2b
    return-void

    :catchall_0
    move-exception v0

    .line 51
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->u0:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

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

.method public l1(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->v0:Ljava/lang/Boolean;

    return-void
.end method

.method public m1(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/t30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/u30;->E0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x11

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
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0xe

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/u30;->l1(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/u30;->m1(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/u30;->j1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/u30;->k1(Ljava/lang/Boolean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
