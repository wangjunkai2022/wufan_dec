.class public Lcom/join/android/app/mgsim/wufun/databinding/e30;
.super Lcom/join/android/app/mgsim/wufun/databinding/d30;
.source "ModCommentlArchiveDialogBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final y0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final z0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final s0:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
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

.field private final v0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final w0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x0:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->z0:Landroid/util/SparseIntArray;

    const v1, 0x7f0909eb

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0906e1

    const/4 v2, 0x7

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0906e2

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0906e3

    const/16 v2, 0x9

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090f5f

    const/16 v2, 0xa

    .line 6
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->y0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/e30;->z0:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/e30;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v14, p0

    const/4 v15, 0x2

    .line 2
    aget-object v0, p3, v15

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v13, 0x3

    aget-object v0, p3, v13

    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v12, 0x1

    aget-object v0, p3, v12

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x4

    aget-object v0, p3, v3

    move-object/from16 v17, v0

    check-cast v17, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x4

    move/from16 v3, v18

    const/4 v15, 0x1

    move-object/from16 v12, v16

    const/4 v15, 0x3

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/join/android/app/mgsim/wufun/databinding/d30;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

    .line 4
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d30;->E:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e30;->s0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d30;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d30;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d30;->n0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/d30;->p0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 11
    invoke-virtual {v14, v0}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 12
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, v14, v15}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e30;->t0:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x1

    invoke-direct {v0, v14, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e30;->u0:Landroid/view/View$OnClickListener;

    .line 14
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x4

    invoke-direct {v0, v14, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e30;->v0:Landroid/view/View$OnClickListener;

    .line 15
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x2

    invoke-direct {v0, v14, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v14, Lcom/join/android/app/mgsim/wufun/databinding/e30;->w0:Landroid/view/View$OnClickListener;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/e30;->invalidateAll()V

    return-void
.end method

.method private j1(Landroidx/lifecycle/MutableLiveData;I)Z
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

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

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/e30;->k1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/e30;->j1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->r0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_8

    .line 2
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->r0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_8

    .line 4
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->r0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_8

    .line 6
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->r0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_8

    .line 8
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_8
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->r0:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->q0:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

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
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->x0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->q0:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    const-wide/16 v5, 0x17

    and-long/2addr v5, v0

    const-wide/16 v7, 0x16

    const-wide/16 v9, 0x15

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v5, v2

    if-eqz v13, :cond_6

    and-long v5, v0, v9

    cmp-long v13, v5, v2

    if-eqz v13, :cond_2

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getDialogData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v12

    .line 7
    :goto_0
    invoke-virtual {p0, v11, v5}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    goto :goto_1

    :cond_1
    move-object v5, v12

    :goto_1
    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v12

    :goto_2
    and-long v13, v0, v7

    cmp-long v6, v13, v2

    if-eqz v6, :cond_5

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->isCommitLoding()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v12

    :goto_3
    const/4 v6, 0x1

    .line 11
    invoke-virtual {p0, v6, v4}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/Boolean;

    .line 13
    :cond_4
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->w0(Ljava/lang/Boolean;)Z

    move-result v4

    xor-int/2addr v4, v6

    .line 14
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->w0(Ljava/lang/Boolean;)Z

    move-result v11

    :cond_5
    move-object v12, v5

    :cond_6
    const-wide/16 v4, 0x10

    and-long/2addr v4, v0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_7

    .line 15
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->E:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->u0:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    and-long v4, v0, v7

    cmp-long v6, v4, v2

    if-eqz v6, :cond_8

    .line 16
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->v0:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5, v11}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 17
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->w0:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5, v11}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 18
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->p0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, p0, Lcom/join/android/app/mgsim/wufun/databinding/e30;->t0:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5, v11}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    :cond_8
    and-long/2addr v0, v9

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    .line 19
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/d30;->n0:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 20
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

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/e30;->i1(Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/e30;->h1(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
