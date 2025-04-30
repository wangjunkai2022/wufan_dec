.class Lcom/join/mgps/customview/CircleProgressView$b;
.super Ljava/lang/Object;
.source "CircleProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CircleProgressView;->setValue(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CircleProgressView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CircleProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CircleProgressView$b;->a:Lcom/join/mgps/customview/CircleProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CircleProgressView$b;->a:Lcom/join/mgps/customview/CircleProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/join/mgps/customview/CircleProgressView;->b(Lcom/join/mgps/customview/CircleProgressView;F)F

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/customview/CircleProgressView$b;->a:Lcom/join/mgps/customview/CircleProgressView;

    invoke-static {v0}, Lcom/join/mgps/customview/CircleProgressView;->a(Lcom/join/mgps/customview/CircleProgressView;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/CircleProgressView$b;->a:Lcom/join/mgps/customview/CircleProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
