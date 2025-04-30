.class public Lcom/join/android/app/mgsim/wufun/databinding/s30;
.super Lcom/join/android/app/mgsim/wufun/databinding/r30;
.source "ModarchiveListItem2BindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final D0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final E0:Landroid/util/SparseIntArray;
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

.field private C0:J

.field private final u0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final v0:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w0:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final y0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
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

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/s30;->E0:Landroid/util/SparseIntArray;

    const v1, 0x7f090a2e

    const/16 v2, 0xc

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090a7b

    const/16 v2, 0xd

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/s30;->D0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->E0:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/s30;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v15, p0

    const/4 v14, 0x2

    .line 2
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v13, 0x5

    aget-object v0, p3, v13

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v3, 0x3

    aget-object v0, p3, v3

    move-object/from16 v16, v0

    check-cast v16, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x4

    aget-object v0, p3, v2

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lcom/join/android/app/mgsim/wufun/databinding/r30;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/s30;->C0:J

    .line 4
    iget-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/r30;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/r30;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/r30;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/s30;->u0:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 9
    aget-object v2, p3, v0

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/s30;->v0:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xa

    .line 11
    aget-object v2, p3, v2

    check-cast v2, Landroid/view/View;

    iput-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/s30;->w0:Landroid/view/View;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/r30;->J:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/r30;->K:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/r30;->n0:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/r30;->o0:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/r30;->p0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/r30;->q0:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 19
    invoke-virtual {v15, v1}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 20
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v15, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v15, Lcom/join/android/app/mgsim/wufun/databinding/s30;->x0:Landroid/view/View$OnClickListener;

    .line 21
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x4

    invoke-direct {v0, v15, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/s30;->y0:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x2

    invoke-direct {v0, v15, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/s30;->z0:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x5

    invoke-direct {v0, v15, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/s30;->A0:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x3

    invoke-direct {v0, v15, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/s30;->B0:Landroid/view/View$OnClickListener;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/s30;->invalidateAll()V

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->r0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    iget-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->s0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_b

    .line 3
    invoke-interface {v2, p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickMore(Landroid/view/View;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->r0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 5
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->s0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_b

    .line 6
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickRun(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->r0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 8
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->s0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_b

    .line 9
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickDislike(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->r0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 11
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->s0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_b

    .line 12
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onPraise(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 13
    :cond_8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->r0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 14
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->s0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/s30;->C0:J

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

.method public i1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->s0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/s30;->C0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/s30;->C0:J

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

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/s30;->C0:J

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

.method public j1(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->t0:Ljava/lang/Boolean;

    return-void
.end method

.method protected k()V
    .locals 30

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->C0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->C0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->r0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const-wide/16 v6, 0x9

    and-long v8, v2, v6

    cmp-long v12, v8, v4

    if-eqz v12, :cond_1d

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    move-result v12

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    move-result v14

    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    move-result v15

    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    move-result-object v16

    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAvatar()Ljava/lang/String;

    move-result-object v17

    .line 12
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    move-result v18

    .line 13
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    move-result v19

    .line 14
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    move-result-object v20

    .line 15
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v21

    .line 16
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    move-result v22

    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowText()Ljava/lang/String;

    move-result-object v23

    .line 18
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowType()I

    move-result v24

    .line 19
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v0

    move/from16 v10, v18

    move/from16 v11, v22

    move/from16 v6, v24

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    :goto_0
    const/16 v7, 0x8

    const/4 v4, 0x1

    if-ne v12, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 20
    :goto_1
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    if-ne v15, v4, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-nez v16, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-ne v10, v4, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 21
    :goto_4
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    if-ne v11, v4, :cond_5

    const/4 v11, 0x1

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    if-ne v6, v4, :cond_6

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 22
    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v26, 0x0

    cmp-long v6, v8, v26

    if-eqz v6, :cond_8

    if-eqz v5, :cond_7

    const-wide/16 v8, 0x800

    goto :goto_7

    :cond_7
    const-wide/16 v8, 0x400

    :goto_7
    or-long/2addr v2, v8

    :cond_8
    const-wide/16 v8, 0x9

    and-long v24, v2, v8

    cmp-long v6, v24, v26

    if-eqz v6, :cond_a

    if-eqz v14, :cond_9

    const-wide/16 v24, 0x20

    goto :goto_8

    :cond_9
    const-wide/16 v24, 0x10

    :goto_8
    or-long v2, v2, v24

    :cond_a
    and-long v24, v2, v8

    cmp-long v6, v24, v26

    if-eqz v6, :cond_c

    if-eqz v15, :cond_b

    const-wide/16 v24, 0x200

    goto :goto_9

    :cond_b
    const-wide/16 v24, 0x100

    :goto_9
    or-long v2, v2, v24

    :cond_c
    and-long v24, v2, v8

    cmp-long v6, v24, v26

    if-eqz v6, :cond_e

    if-eqz v10, :cond_d

    const-wide/32 v24, 0x8000

    goto :goto_a

    :cond_d
    const-wide/16 v24, 0x4000

    :goto_a
    or-long v2, v2, v24

    :cond_e
    and-long v24, v2, v8

    cmp-long v6, v24, v26

    if-eqz v6, :cond_10

    if-eqz v11, :cond_f

    const-wide/32 v24, 0x20000

    goto :goto_b

    :cond_f
    const-wide/32 v24, 0x10000

    :goto_b
    or-long v2, v2, v24

    :cond_10
    and-long v28, v2, v8

    cmp-long v6, v28, v26

    if-eqz v6, :cond_12

    if-eqz v4, :cond_11

    const-wide/16 v8, 0x2000

    goto :goto_c

    :cond_11
    const-wide/16 v8, 0x1000

    :goto_c
    or-long/2addr v2, v8

    :cond_12
    if-eqz v5, :cond_13

    .line 23
    iget-object v5, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->o0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08084d

    goto :goto_d

    :cond_13
    iget-object v5, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->o0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08081d

    :goto_d
    invoke-static {v5, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v14, :cond_14

    const/4 v6, 0x0

    goto :goto_e

    :cond_14
    const/16 v6, 0x8

    :goto_e
    if-eqz v15, :cond_15

    const/16 v8, 0x8

    goto :goto_f

    :cond_15
    const/4 v8, 0x0

    .line 24
    :goto_f
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->K:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v10, :cond_16

    const v10, 0x7f0802db

    goto :goto_10

    :cond_16
    const v10, 0x7f0802da

    :goto_10
    invoke-static {v9, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 25
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->F:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v11, :cond_17

    const v11, 0x7f080385

    goto :goto_11

    :cond_17
    const v11, 0x7f080384

    :goto_11
    invoke-static {v10, v11}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v4, :cond_18

    goto :goto_12

    :cond_18
    const/4 v7, 0x0

    :goto_12
    if-eqz v13, :cond_19

    .line 26
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13

    :cond_19
    const/4 v0, 0x0

    :goto_13
    const-wide/16 v13, 0x9

    and-long v28, v2, v13

    const-wide/16 v13, 0x0

    cmp-long v4, v28, v13

    if-eqz v4, :cond_1b

    if-eqz v0, :cond_1a

    const-wide/16 v13, 0x80

    goto :goto_14

    :cond_1a
    const-wide/16 v13, 0x40

    :goto_14
    or-long/2addr v2, v13

    :cond_1b
    if-eqz v0, :cond_1c

    .line 27
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->u0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f080815

    goto :goto_15

    :cond_1c
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->u0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f080814

    :goto_15
    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v13, v0

    move v15, v8

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move-object/from16 v11, v19

    move-object/from16 v16, v20

    move-object/from16 v8, v21

    move-object/from16 v14, v23

    const-wide/16 v19, 0x9

    goto :goto_16

    :cond_1d
    move-wide/from16 v19, v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_16
    and-long v19, v2, v19

    const-wide/16 v23, 0x0

    cmp-long v17, v19, v23

    move-wide/from16 v19, v2

    if-eqz v17, :cond_1e

    .line 28
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->E:Landroid/widget/TextView;

    invoke-static {v2, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 29
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->F:Landroid/widget/ImageView;

    invoke-static {v2, v10}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->G:Landroid/widget/TextView;

    invoke-static {v2, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 31
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->u0:Landroid/widget/LinearLayout;

    invoke-static {v2, v13}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->v0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->v0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v0, v3, v8}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->w0:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->K:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->n0:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->o0:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->o0:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->p0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v2, v3}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->q0:Landroid/widget/TextView;

    move-object/from16 v2, v16

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1e
    const-wide/16 v2, 0x8

    and-long v2, v19, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f

    .line 42
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->F:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->B0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->v0:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->J:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->A0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->K:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->z0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/r30;->o0:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/s30;->y0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1f
    return-void

    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k1(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/r30;->r0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/s30;->C0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/s30;->C0:J

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

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/s30;->k1(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/s30;->i1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/s30;->j1(Ljava/lang/Boolean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
