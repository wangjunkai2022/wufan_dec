.class public Lcom/join/android/app/mgsim/wufun/databinding/a40;
.super Lcom/join/android/app/mgsim/wufun/databinding/z30;
.source "ModgameCloudArchiveFragmentBindingImpl.java"


# static fields
.field private static final n0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final o0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final J:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private K:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/a40;->o0:Landroid/util/SparseIntArray;

    const v1, 0x7f09100f

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090f0d

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f091280

    const/4 v2, 0x3

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/a40;->n0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/a40;->o0:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/a40;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/flyco/tablayout/SlidingTabLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/viewpager/widget/ViewPager;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/join/android/app/mgsim/wufun/databinding/z30;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/flyco/tablayout/SlidingTabLayout;Landroid/widget/RelativeLayout;Landroidx/viewpager/widget/ViewPager;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a40;->K:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/a40;->J:Landroid/widget/RelativeLayout;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/a40;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h1(Lcom/join/kotlin/ui/cloudarchive/adapter/MyPagerAdapter;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/MyPagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/z30;->I:Lcom/join/kotlin/ui/cloudarchive/adapter/MyPagerAdapter;

    return-void
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a40;->K:J

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

.method public i1(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/z30;->H:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    return-void
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a40;->K:J

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
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/a40;->K:J

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/adapter/MyPagerAdapter;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/a40;->h1(Lcom/join/kotlin/ui/cloudarchive/adapter/MyPagerAdapter;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1b

    if-ne v1, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/a40;->i1(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
