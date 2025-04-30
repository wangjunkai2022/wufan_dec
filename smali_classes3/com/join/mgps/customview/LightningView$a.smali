.class Lcom/join/mgps/customview/LightningView$a;
.super Ljava/lang/Object;
.source "LightningView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/LightningView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/LightningView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LightningView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->c(Lcom/join/mgps/customview/LightningView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    mul-float v1, v1, p1

    iget-object v2, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {v2}, Lcom/join/mgps/customview/LightningView;->c(Lcom/join/mgps/customview/LightningView;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/join/mgps/customview/LightningView;->b(Lcom/join/mgps/customview/LightningView;F)F

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->f(Lcom/join/mgps/customview/LightningView;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/LightningView;->e(Lcom/join/mgps/customview/LightningView;F)F

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {p1}, Lcom/join/mgps/customview/LightningView;->g(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {p1}, Lcom/join/mgps/customview/LightningView;->g(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->a(Lcom/join/mgps/customview/LightningView;)F

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {v1}, Lcom/join/mgps/customview/LightningView;->d(Lcom/join/mgps/customview/LightningView;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {p1}, Lcom/join/mgps/customview/LightningView;->h(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Shader;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {p1}, Lcom/join/mgps/customview/LightningView;->h(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Shader;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->g(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->a:Lcom/join/mgps/customview/LightningView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
