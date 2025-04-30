.class Lcom/join/mgps/customview/DragView$b;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/DragView;->f(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/DragView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/DragView;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DragView$b;->c:Lcom/join/mgps/customview/DragView;

    iput-boolean p2, p0, Lcom/join/mgps/customview/DragView$b;->a:Z

    iput p3, p0, Lcom/join/mgps/customview/DragView$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/DragView$b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$b;->c:Lcom/join/mgps/customview/DragView;

    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/customview/DragView$b;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$b;->c:Lcom/join/mgps/customview/DragView;

    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/customview/DragView$b;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/join/mgps/customview/DragView$b;->c:Lcom/join/mgps/customview/DragView;

    invoke-static {v2}, Lcom/join/mgps/customview/DragView;->d(Lcom/join/mgps/customview/DragView;)I

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/DragView$b;->b:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/join/mgps/customview/DragView$b;->c:Lcom/join/mgps/customview/DragView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/DragView$b;->c:Lcom/join/mgps/customview/DragView;

    invoke-static {p1}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
