.class Lcom/join/mgps/customview/WaterProgressView$b;
.super Ljava/lang/Object;
.source "WaterProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/WaterProgressView;->setProgress(I)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/WaterProgressView$b;->a:Lcom/join/mgps/customview/WaterProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView$b;->a:Lcom/join/mgps/customview/WaterProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/join/mgps/customview/WaterProgressView;->d(Lcom/join/mgps/customview/WaterProgressView;I)I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/WaterProgressView$b;->a:Lcom/join/mgps/customview/WaterProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
