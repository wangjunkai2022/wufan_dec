.class Lcom/join/mgps/activity/login/ScollLinearLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ScollLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/ScollLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/ScollLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager$1;->this$0:Lcom/join/mgps/activity/login/ScollLinearLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager$1;->this$0:Lcom/join/mgps/activity/login/ScollLinearLayoutManager;

    invoke-static {v0}, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->access$000(Lcom/join/mgps/activity/login/ScollLinearLayoutManager;)F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager$1;->this$0:Lcom/join/mgps/activity/login/ScollLinearLayoutManager;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
