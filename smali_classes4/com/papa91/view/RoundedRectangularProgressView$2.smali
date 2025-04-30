.class Lcom/papa91/view/RoundedRectangularProgressView$2;
.super Ljava/lang/Object;
.source "RoundedRectangularProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RoundedRectangularProgressView;


# direct methods
.method constructor <init>(Lcom/papa91/view/RoundedRectangularProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$002(Lcom/papa91/view/RoundedRectangularProgressView;F)F

    .line 2
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-static {p1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$000(Lcom/papa91/view/RoundedRectangularProgressView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/papa91/view/RoundedRectangularProgressView;->access$002(Lcom/papa91/view/RoundedRectangularProgressView;F)F

    .line 3
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-static {v2}, Lcom/papa91/view/RoundedRectangularProgressView;->access$200(Lcom/papa91/view/RoundedRectangularProgressView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$102(Lcom/papa91/view/RoundedRectangularProgressView;J)J

    .line 4
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$2;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    iget-object p1, p1, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
