.class public Lcom/join/android/app/mgsim/wufun/databinding/lo;
.super Lcom/join/android/app/mgsim/wufun/databinding/ko;
.source "ImageShowDialogBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final s0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final t0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final o0:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final q0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r0:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->s0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/lo;->t0:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/lo;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x5

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v1, p3, v0

    move-object v7, v1

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v11, 0x1

    aget-object v1, p3, v11

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/join/android/app/mgsim/wufun/databinding/ko;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->E:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->H:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->I:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->J:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 10
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->o0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 13
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->p0:Landroid/view/View$OnClickListener;

    .line 14
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v11}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->q0:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/lo;->invalidateAll()V

    return-void
.end method

.method private j1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

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
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

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

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/lo;->k1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/lo;->j1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->n0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->n0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 4
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_4
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->n0:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

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

.method public i1(Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ko;->K:Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

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
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/lo;->r0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ko;->K:Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;

    const-wide/16 v6, 0x17

    and-long/2addr v6, v2

    const-wide/16 v8, 0x15

    const-wide/16 v10, 0x16

    const/4 v12, 0x0

    const/4 v13, 0x0

    cmp-long v14, v6, v4

    if-eqz v14, :cond_b

    and-long v6, v2, v8

    cmp-long v14, v6, v4

    if-eqz v14, :cond_1

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;->getImagePath()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v12

    .line 7
    :goto_0
    invoke-virtual {v1, v13, v6}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v12

    :goto_1
    and-long v14, v2, v10

    cmp-long v7, v14, v4

    if-eqz v7, :cond_c

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v12

    :goto_2
    const/4 v7, 0x1

    .line 10
    invoke-virtual {v1, v7, v0}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v0, v12

    .line 12
    :goto_3
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->s0(Ljava/lang/Integer;)I

    move-result v0

    if-ne v0, v7, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    cmp-long v0, v14, v4

    if-eqz v0, :cond_7

    if-eqz v16, :cond_6

    const-wide/16 v14, 0x100

    goto :goto_6

    :cond_6
    const-wide/16 v14, 0x80

    :goto_6
    or-long/2addr v2, v14

    :cond_7
    and-long v14, v2, v10

    cmp-long v0, v14, v4

    if-eqz v0, :cond_9

    if-eqz v7, :cond_8

    const-wide/16 v14, 0x40

    goto :goto_7

    :cond_8
    const-wide/16 v14, 0x20

    :goto_7
    or-long/2addr v2, v14

    :cond_9
    const/16 v0, 0x8

    if-eqz v16, :cond_a

    const/4 v14, 0x0

    goto :goto_8

    :cond_a
    const/16 v14, 0x8

    :goto_8
    if-eqz v7, :cond_d

    const/4 v0, 0x0

    goto :goto_9

    :cond_b
    move-object v6, v12

    :cond_c
    const/4 v0, 0x0

    const/4 v14, 0x0

    :cond_d
    :goto_9
    const-wide/16 v15, 0x10

    and-long/2addr v15, v2

    cmp-long v7, v15, v4

    if-eqz v7, :cond_e

    .line 13
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/ko;->E:Landroid/widget/ImageView;

    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/lo;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/ko;->F:Landroid/widget/ImageView;

    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/lo;->p0:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    and-long/2addr v10, v2

    cmp-long v7, v10, v4

    if-eqz v7, :cond_f

    .line 15
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/ko;->E:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/ko;->F:Landroid/widget/ImageView;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/ko;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ko;->J:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_f
    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    .line 19
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ko;->G:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v6, v12, v13}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ko;->H:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v6, v12, v13}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    .line 21
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
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/lo;->i1(Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/lo;->h1(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
