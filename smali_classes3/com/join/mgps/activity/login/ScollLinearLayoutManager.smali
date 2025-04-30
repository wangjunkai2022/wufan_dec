.class public Lcom/join/mgps/activity/login/ScollLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "ScollLinearLayoutManager.java"


# instance fields
.field private MILLISECONDS_PER_INCH:F

.field private contxt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41c80000    # 25.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->MILLISECONDS_PER_INCH:F

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->contxt:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/login/ScollLinearLayoutManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->MILLISECONDS_PER_INCH:F

    return p0
.end method


# virtual methods
.method public setSpeedSlow(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->contxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->MILLISECONDS_PER_INCH:F

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/join/mgps/activity/login/ScollLinearLayoutManager$1;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/login/ScollLinearLayoutManager$1;-><init>(Lcom/join/mgps/activity/login/ScollLinearLayoutManager;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
