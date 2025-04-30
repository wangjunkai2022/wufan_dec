.class Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;
.super Ljava/lang/Object;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/view/SegmentTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/view/SegmentTabLayout;


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/SegmentTabLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;->this$0:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;)Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;
    .locals 2

    .line 2
    iget v0, p2, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    iget v1, p3, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 3
    iget p2, p2, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    iget p3, p3, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    .line 4
    new-instance p1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    iget-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;->this$0:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-direct {p1, p3}, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/papa91/arc/view/SegmentTabLayout;)V

    .line 5
    iput v0, p1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 6
    iput p2, p1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    check-cast p3, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;->evaluate(FLcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;)Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    move-result-object p1

    return-object p1
.end method
