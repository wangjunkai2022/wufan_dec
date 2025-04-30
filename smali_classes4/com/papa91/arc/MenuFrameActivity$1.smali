.class Lcom/papa91/arc/MenuFrameActivity$1;
.super Ljava/lang/Object;
.source "MenuFrameActivity.java"

# interfaces
.implements Lcom/papa91/arc/view/OnTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity;->initPerformanceViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0

    return-void
.end method

.method public onTabSelect(I)V
    .locals 2

    if-nez p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget v1, p1, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    if-ltz v1, :cond_0

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput v0, p1, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    iget p1, p1, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    invoke-virtual {v0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    :goto_0
    return-void
.end method
