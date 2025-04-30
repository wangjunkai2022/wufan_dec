.class public Lcom/join/android/app/mgsim/wufun/databinding/i4;
.super Lcom/join/android/app/mgsim/wufun/databinding/h4;
.source "BtSelectItemBindingImpl.java"


# static fields
.field private static final I:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final J:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final F:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final G:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private H:J


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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->I:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/i4;->J:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/i4;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/h4;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->H:J

    .line 4
    aget-object p1, p3, v0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->G:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/i4;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g1(Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h4;->E:Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->H:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->H:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x14

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->H:J

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

    const-wide/16 v0, 0x2

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->H:J

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
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->H:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->H:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/h4;->E:Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmp-long v11, v7, v2

    if-eqz v11, :cond_5

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->getTimeMessage()Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-virtual {v4}, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->getStatus()Z

    move-result v9

    :cond_0
    cmp-long v4, v7, v2

    if-eqz v4, :cond_2

    if-eqz v9, :cond_1

    const-wide/16 v7, 0x8

    or-long/2addr v0, v7

    const-wide/16 v7, 0x20

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x4

    or-long/2addr v0, v7

    const-wide/16 v7, 0x10

    :goto_0
    or-long/2addr v0, v7

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->G:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    const v7, 0x7f0603db

    goto :goto_1

    :cond_3
    const v7, 0x7f060154

    :goto_1
    invoke-static {v4, v7}, Landroidx/databinding/ViewDataBinding;->s(Landroid/view/View;I)I

    move-result v4

    .line 9
    iget-object v7, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->G:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v9, :cond_4

    const v8, 0x7f08022c

    goto :goto_2

    :cond_4
    const v8, 0x7f08022b

    :goto_2
    invoke-static {v7, v8}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move v9, v4

    move-object v4, v10

    move-object v10, v7

    goto :goto_3

    :cond_5
    move-object v4, v10

    :goto_3
    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_6

    .line 10
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->G:Landroid/widget/TextView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i4;->G:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 13
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

    const/16 v0, 0x14

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i4;->g1(Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
