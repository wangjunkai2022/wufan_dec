.class Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;
.super Landroid/widget/FrameLayout;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;


# direct methods
.method public constructor <init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    if-eq v0, p2, :cond_0

    sub-int/2addr v0, p2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->offsetLeftAndRight(I)V

    .line 3
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    .line 2
    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    .line 3
    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 5
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
