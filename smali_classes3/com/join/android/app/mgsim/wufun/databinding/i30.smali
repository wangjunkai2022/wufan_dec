.class public Lcom/join/android/app/mgsim/wufun/databinding/i30;
.super Lcom/join/android/app/mgsim/wufun/databinding/h30;
.source "ModNoticeArchiveDialogBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final r0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final s0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final J:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final K:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final p0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q0:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->s0:Landroid/util/SparseIntArray;

    const v1, 0x7f0909eb

    const/4 v2, 0x5

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->r0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/i30;->s0:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/i30;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x4

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/join/android/app/mgsim/wufun/databinding/h30;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->E:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 7
    aget-object v1, p3, p1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->K:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 9
    aget-object p3, p3, v1

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->n0:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->G:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 13
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->o0:Landroid/view/View$OnClickListener;

    .line 14
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, p1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->p0:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/i30;->invalidateAll()V

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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

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
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/i30;->j1(Landroidx/lifecycle/MutableLiveData;I)Z

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->I:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->I:Landroid/view/View$OnClickListener;

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->I:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->H:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

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

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->q0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->H:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    const-wide/16 v5, 0xb

    and-long v7, v0, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmp-long v11, v7, v2

    if-eqz v11, :cond_6

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getDialogData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v10

    .line 7
    :goto_0
    invoke-virtual {p0, v9, v4}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    goto :goto_1

    :cond_1
    move-object v4, v10

    :goto_1
    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;->getContent()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;->getShowClose()Z

    move-result v11

    .line 11
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;->getOkButn()Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v10

    move-object v12, v4

    const/4 v11, 0x0

    :goto_2
    cmp-long v13, v7, v2

    if-eqz v13, :cond_4

    if-eqz v11, :cond_3

    const-wide/16 v7, 0x20

    goto :goto_3

    :cond_3
    const-wide/16 v7, 0x10

    :goto_3
    or-long/2addr v0, v7

    :cond_4
    if-eqz v11, :cond_5

    goto :goto_4

    :cond_5
    const/16 v7, 0x8

    const/16 v9, 0x8

    :goto_4
    move-object v14, v10

    move-object v10, v4

    move-object v4, v14

    goto :goto_5

    :cond_6
    move-object v4, v10

    move-object v12, v4

    :goto_5
    const-wide/16 v7, 0x8

    and-long/2addr v7, v0

    cmp-long v11, v7, v2

    if-eqz v11, :cond_7

    .line 13
    iget-object v7, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->E:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->o0:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v7, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->G:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->p0:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_8

    .line 15
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->K:Landroid/widget/TextView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i30;->n0:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/h30;->G:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 19
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

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i30;->i1(Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i30;->h1(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
