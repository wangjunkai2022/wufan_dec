.class public Lcom/join/android/app/mgsim/wufun/databinding/l30;
.super Lcom/join/android/app/mgsim/wufun/databinding/k30;
.source "ModRedownArchiveDialogBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


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
.field private final o0:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final q0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final t0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final u0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v0:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->x0:Landroid/util/SparseIntArray;

    const v1, 0x7f0909eb

    const/16 v2, 0x8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090cb0

    const/16 v2, 0x9

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->w0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/l30;->x0:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/l30;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x5

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v1, p3, v0

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v1, 0x6

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/16 v1, 0x9

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/join/android/app/mgsim/wufun/databinding/k30;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k30;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k30;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->o0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 8
    aget-object v2, p3, p1

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->p0:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 10
    aget-object v3, p3, v2

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->q0:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 12
    aget-object p3, p3, v3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->r0:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/k30;->H:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/k30;->I:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 17
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, v2}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->s0:Landroid/view/View$OnClickListener;

    .line 18
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->t0:Landroid/view/View$OnClickListener;

    .line 19
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, p1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->u0:Landroid/view/View$OnClickListener;

    .line 20
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/l30;->invalidateAll()V

    return-void
.end method

.method private j1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

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

.method private k1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

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

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/l30;->j1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/l30;->k1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k30;->n0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_6

    .line 2
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k30;->n0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_6

    .line 4
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k30;->n0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 6
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public h1(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k30;->n0:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

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

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

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

.method public i1(Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/k30;->K:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

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

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

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
    .locals 19

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/l30;->v0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/k30;->K:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    const-wide/16 v6, 0x17

    and-long/2addr v6, v2

    const-wide/16 v8, 0x16

    const-wide/16 v10, 0x15

    const/4 v12, 0x0

    cmp-long v13, v6, v4

    if-eqz v13, :cond_6

    and-long v6, v2, v10

    cmp-long v13, v6, v4

    if-eqz v13, :cond_2

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getDialogData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v12

    :goto_0
    const/4 v7, 0x0

    .line 7
    invoke-virtual {v1, v7, v6}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    goto :goto_1

    :cond_1
    move-object v6, v12

    :goto_1
    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;->getContent()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;->getOkButn()Ljava/lang/String;

    move-result-object v13

    .line 11
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;->getTitle()Ljava/lang/String;

    move-result-object v14

    .line 12
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;->getCancleButn()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v12

    move-object v7, v6

    move-object v13, v7

    move-object v14, v13

    :goto_2
    and-long v15, v2, v8

    cmp-long v17, v15, v4

    if-eqz v17, :cond_5

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v12

    :goto_3
    const/4 v15, 0x1

    .line 14
    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    goto :goto_4

    :cond_4
    move-object v0, v12

    :goto_4
    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v12

    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPlayTime()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    goto :goto_5

    :cond_5
    move-object v0, v12

    move-object v12, v6

    move-object v6, v0

    goto :goto_5

    :cond_6
    move-object v0, v12

    move-object v6, v0

    move-object v7, v6

    move-object v13, v7

    move-object v14, v13

    :goto_5
    const-wide/16 v15, 0x10

    and-long/2addr v15, v2

    cmp-long v17, v15, v4

    if-eqz v17, :cond_7

    .line 18
    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/k30;->E:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/l30;->u0:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/k30;->F:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/l30;->t0:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/k30;->I:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/l30;->s0:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    and-long v8, v2, v10

    cmp-long v10, v8, v4

    if-eqz v10, :cond_8

    .line 21
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/k30;->E:Landroid/widget/TextView;

    invoke-static {v8, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 22
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/l30;->p0:Landroid/widget/TextView;

    invoke-static {v8, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 23
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/l30;->q0:Landroid/widget/TextView;

    invoke-static {v8, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 24
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/k30;->I:Landroid/widget/TextView;

    invoke-static {v7, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_8
    const-wide/16 v7, 0x16

    and-long/2addr v2, v7

    cmp-long v7, v2, v4

    if-eqz v7, :cond_9

    .line 25
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/l30;->r0:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/k30;->H:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x1b

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/l30;->i1(Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/l30;->h1(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
