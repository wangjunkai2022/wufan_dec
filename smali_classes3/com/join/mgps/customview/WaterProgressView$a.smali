.class Lcom/join/mgps/customview/WaterProgressView$a;
.super Ljava/lang/Object;
.source "WaterProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/WaterProgressView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/WaterProgressView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/WaterProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/WaterProgressView$a;->a:Lcom/join/mgps/customview/WaterProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView$a;->a:Lcom/join/mgps/customview/WaterProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/join/mgps/customview/WaterProgressView;->a(Lcom/join/mgps/customview/WaterProgressView;I)I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/WaterProgressView$a;->a:Lcom/join/mgps/customview/WaterProgressView;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/join/mgps/customview/WaterProgressView$a;->a:Lcom/join/mgps/customview/WaterProgressView;

    .line 3
    invoke-static {v1}, Lcom/join/mgps/customview/WaterProgressView;->b(Lcom/join/mgps/customview/WaterProgressView;)I

    move-result v1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/join/mgps/customview/WaterProgressView$a;->a:Lcom/join/mgps/customview/WaterProgressView;

    .line 4
    invoke-static {v3}, Lcom/join/mgps/customview/WaterProgressView;->c(Lcom/join/mgps/customview/WaterProgressView;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
