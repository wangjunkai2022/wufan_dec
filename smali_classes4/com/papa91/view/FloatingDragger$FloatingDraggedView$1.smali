.class Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "FloatingDragger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;


# direct methods
.method constructor <init>(Lcom/papa91/view/FloatingDragger$FloatingDraggedView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    if-le p2, p3, :cond_0

    .line 2
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p3, v0

    if-le p2, p3, :cond_0

    .line 2
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p2, p1

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    iget-object p1, p1, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object p1, p1, Lcom/papa91/view/FloatingDragger;->observable:Lcom/papa91/view/FloatingDragger$PositionObservable;

    invoke-virtual {p1}, Lcom/papa91/view/FloatingDragger$PositionObservable;->update()V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 2
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p1}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->savePosition()V

    .line 3
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    iget-object p2, p2, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object p2, p2, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    if-ne p1, p2, :cond_7

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    .line 3
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    iget-object p3, p3, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object p3, p3, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    .line 4
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    goto/16 :goto_3

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 8
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 10
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    sub-int/2addr p2, v0

    int-to-float p2, p2

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_5

    :goto_1
    const/4 p3, 0x0

    goto :goto_3

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_6

    .line 13
    iget-object p3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_2
    sub-int/2addr p3, v0

    int-to-float p3, p3

    goto :goto_3

    .line 14
    :cond_6
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 15
    :goto_3
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    iget-object v0, v0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 16
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_7
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;->this$1:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    iget-object p2, p2, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object p2, p2, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
