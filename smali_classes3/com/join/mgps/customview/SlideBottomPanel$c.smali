.class Lcom/join/mgps/customview/SlideBottomPanel$c;
.super Ljava/lang/Object;
.source "SlideBottomPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlideBottomPanel;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/mgps/customview/SlideBottomPanel;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    iput-object p2, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->a:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setY(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->c(Lcom/join/mgps/customview/SlideBottomPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 4
    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/customview/DarkFrameLayout;->getCurrentAlpha()I

    move-result v0

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 6
    invoke-static {v2}, Lcom/join/mgps/customview/SlideBottomPanel;->g(Lcom/join/mgps/customview/SlideBottomPanel;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/join/mgps/customview/SlideBottomPanel$c;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-static {v3}, Lcom/join/mgps/customview/SlideBottomPanel;->h(Lcom/join/mgps/customview/SlideBottomPanel;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    const/high16 p1, 0x431f0000    # 159.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/DarkFrameLayout;->b(I)V

    :cond_0
    return-void
.end method
