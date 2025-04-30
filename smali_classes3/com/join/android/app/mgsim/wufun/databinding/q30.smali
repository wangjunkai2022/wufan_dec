.class public Lcom/join/android/app/mgsim/wufun/databinding/q30;
.super Lcom/join/android/app/mgsim/wufun/databinding/p30;
.source "ModarchiveGameDetailListItemBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final E0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final F0:Landroid/util/SparseIntArray;
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

.field private D0:J

.field private final v0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w0:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x0:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
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

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->F0:Landroid/util/SparseIntArray;

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->E0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->F0:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/q30;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    invoke-direct/range {v0 .. v15}, Lcom/join/android/app/mgsim/wufun/databinding/p30;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/q30;->v0:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 9
    aget-object v3, p3, v0

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/q30;->w0:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 11
    aget-object v3, p3, v3

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/q30;->x0:Landroid/view/View;

    .line 12
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->J:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->K:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->n0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->o0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->p0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->q0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/p30;->r0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 20
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 21
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/q30;->y0:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/q30;->z0:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/q30;->A0:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/q30;->B0:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/q30;->C0:Landroid/view/View$OnClickListener;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/q30;->invalidateAll()V

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    iget-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_b

    .line 3
    invoke-interface {v2, p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickMore(Landroid/view/View;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 5
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_b

    .line 6
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickRun(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 8
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_b

    .line 9
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickDislike(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 11
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_b

    .line 12
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onPraise(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_1

    .line 13
    :cond_8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 14
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->t0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

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
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->u0:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

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

.method protected k()V
    .locals 36

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->u0:Ljava/lang/Boolean;

    const-wide/16 v7, 0xd

    and-long v9, v2, v7

    const/16 v13, 0x8

    const-wide/16 v14, 0x9

    const/4 v11, 0x1

    cmp-long v18, v9, v4

    if-eqz v18, :cond_1a

    and-long v9, v2, v14

    cmp-long v18, v9, v4

    if-eqz v18, :cond_15

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    move-result v18

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    move-result v19

    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    move-result v20

    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    move-result-object v21

    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAvatar()Ljava/lang/String;

    move-result-object v22

    .line 12
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    move-result v23

    .line 13
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    move-result v24

    .line 14
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    move-result-object v25

    .line 15
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v26

    .line 16
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    move-result v27

    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowText()Ljava/lang/String;

    move-result-object v28

    move/from16 v12, v18

    move/from16 v7, v20

    move/from16 v8, v23

    move/from16 v20, v24

    move/from16 v14, v27

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    :goto_0
    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 18
    :goto_1
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    if-ne v7, v11, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-nez v21, :cond_3

    const/16 v19, 0x1

    goto :goto_3

    :cond_3
    const/16 v19, 0x0

    :goto_3
    if-ne v8, v11, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 19
    :goto_4
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    if-ne v14, v11, :cond_5

    const/4 v14, 0x1

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    cmp-long v27, v9, v4

    if-eqz v27, :cond_7

    if-eqz v12, :cond_6

    const-wide/16 v9, 0x800

    goto :goto_6

    :cond_6
    const-wide/16 v9, 0x400

    :goto_6
    or-long/2addr v2, v9

    :cond_7
    const-wide/16 v9, 0x9

    and-long v29, v2, v9

    cmp-long v27, v29, v4

    if-eqz v27, :cond_9

    if-eqz v7, :cond_8

    const-wide/16 v29, 0x80

    goto :goto_7

    :cond_8
    const-wide/16 v29, 0x40

    :goto_7
    or-long v2, v2, v29

    :cond_9
    and-long v29, v2, v9

    cmp-long v27, v29, v4

    if-eqz v27, :cond_b

    if-eqz v19, :cond_a

    const-wide/16 v29, 0x200

    goto :goto_8

    :cond_a
    const-wide/16 v29, 0x100

    :goto_8
    or-long v2, v2, v29

    :cond_b
    and-long v29, v2, v9

    cmp-long v27, v29, v4

    if-eqz v27, :cond_d

    if-eqz v8, :cond_c

    const-wide/16 v29, 0x2000

    goto :goto_9

    :cond_c
    const-wide/16 v29, 0x1000

    :goto_9
    or-long v2, v2, v29

    :cond_d
    and-long v31, v2, v9

    cmp-long v9, v31, v4

    if-eqz v9, :cond_f

    if-eqz v14, :cond_e

    const-wide/32 v9, 0x20000

    goto :goto_a

    :cond_e
    const-wide/32 v9, 0x10000

    :goto_a
    or-long/2addr v2, v9

    .line 20
    :cond_f
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->o0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v12, :cond_10

    const v10, 0x7f08084d

    goto :goto_b

    :cond_10
    const v10, 0x7f08081d

    :goto_b
    invoke-static {v9, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v7, :cond_11

    const/4 v7, 0x0

    goto :goto_c

    :cond_11
    const/16 v7, 0x8

    :goto_c
    if-eqz v19, :cond_12

    const/16 v10, 0x8

    goto :goto_d

    :cond_12
    const/4 v10, 0x0

    :goto_d
    if-eqz v8, :cond_13

    .line 21
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->K:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v12, 0x7f0802db

    goto :goto_e

    :cond_13
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->K:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v12, 0x7f0802da

    :goto_e
    invoke-static {v8, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 22
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->F:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    if-eqz v14, :cond_14

    const v14, 0x7f080385

    goto :goto_f

    :cond_14
    const v14, 0x7f080384

    :goto_f
    invoke-static {v12, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_10

    :cond_15
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    :goto_10
    if-eqz v0, :cond_16

    .line 23
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsChoice()I

    move-result v0

    goto :goto_11

    :cond_16
    const/4 v0, 0x0

    :goto_11
    if-ne v0, v11, :cond_17

    const/4 v0, 0x1

    goto :goto_12

    :cond_17
    const/4 v0, 0x0

    :goto_12
    const-wide/16 v23, 0xd

    and-long v31, v2, v23

    cmp-long v14, v31, v4

    if-eqz v14, :cond_19

    if-eqz v0, :cond_18

    const-wide/16 v16, 0x20

    or-long v2, v2, v16

    goto :goto_13

    :cond_18
    const-wide/16 v16, 0x20

    const-wide/16 v31, 0x10

    or-long v2, v2, v31

    goto :goto_13

    :cond_19
    const-wide/16 v16, 0x20

    :goto_13
    move/from16 v19, v0

    move v13, v10

    move-object/from16 v0, v20

    move-object/from16 v10, v21

    move-object/from16 v33, v22

    move-object/from16 v34, v25

    move-object/from16 v14, v26

    move-object/from16 v35, v28

    goto :goto_14

    :cond_1a
    const-wide/16 v16, 0x20

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_14
    and-long v16, v2, v16

    cmp-long v21, v16, v4

    if-eqz v21, :cond_1b

    .line 24
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->w0(Ljava/lang/Boolean;)Z

    move-result v6

    xor-int/2addr v6, v11

    goto :goto_15

    :cond_1b
    const/4 v6, 0x0

    :goto_15
    const-wide/16 v16, 0xd

    and-long v21, v2, v16

    cmp-long v11, v21, v4

    if-eqz v11, :cond_20

    if-eqz v19, :cond_1c

    goto :goto_16

    :cond_1c
    const/4 v6, 0x0

    :goto_16
    cmp-long v11, v21, v4

    if-eqz v11, :cond_1e

    if-eqz v6, :cond_1d

    const-wide/32 v16, 0x8000

    goto :goto_17

    :cond_1d
    const-wide/16 v16, 0x4000

    :goto_17
    or-long v2, v2, v16

    :cond_1e
    if-eqz v6, :cond_1f

    const/16 v20, 0x0

    goto :goto_18

    :cond_1f
    const/16 v20, 0x8

    :goto_18
    move/from16 v6, v20

    goto :goto_19

    :cond_20
    const/4 v6, 0x0

    :goto_19
    const-wide/16 v16, 0x9

    and-long v16, v2, v16

    cmp-long v11, v16, v4

    if-eqz v11, :cond_21

    .line 25
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->E:Landroid/widget/TextView;

    invoke-static {v11, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 26
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->F:Landroid/widget/ImageView;

    invoke-static {v11, v12}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->G:Landroid/widget/TextView;

    invoke-static {v11, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->w0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->w0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v10, v11, v12}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->x0:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->K:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->n0:Landroid/widget/TextView;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->o0:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->o0:Landroid/widget/TextView;

    move-object/from16 v7, v35

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->q0:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v7, v33

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v7, v8, v9}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->r0:Landroid/widget/TextView;

    move-object/from16 v7, v34

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_21
    const-wide/16 v7, 0x8

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_22

    .line 37
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->F:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->z0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->w0:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->C0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->J:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->B0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->K:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->y0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->o0:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/q30;->A0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_22
    const-wide/16 v7, 0xd

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_23

    .line 42
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/p30;->p0:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_23
    return-void

    :catchall_0
    move-exception v0

    .line 43
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/p30;->s0:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/q30;->D0:J

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

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/q30;->k1(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/q30;->i1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/q30;->j1(Ljava/lang/Boolean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
