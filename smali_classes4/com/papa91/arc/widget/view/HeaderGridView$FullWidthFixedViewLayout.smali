.class Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/widget/view/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/widget/view/HeaderGridView;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/widget/view/HeaderGridView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/papa91/arc/widget/view/HeaderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 2
    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/papa91/arc/widget/view/HeaderGridView;

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
