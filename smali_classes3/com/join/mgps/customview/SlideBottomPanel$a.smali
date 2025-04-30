.class Lcom/join/mgps/customview/SlideBottomPanel$a;
.super Ljava/lang/Object;
.source "SlideBottomPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlideBottomPanel;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/SlideBottomPanel;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    iput-object p2, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->a:Landroid/view/View;

    iput p3, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->b:I

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->a:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setY(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->c(Lcom/join/mgps/customview/SlideBottomPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->b:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-static {v0}, Lcom/join/mgps/customview/SlideBottomPanel;->b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel$a;->b:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    const/high16 p1, 0x431f0000    # 159.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/DarkFrameLayout;->b(I)V

    :cond_0
    return-void
.end method
