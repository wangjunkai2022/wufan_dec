.class Lcom/join/mgps/customview/CubeRotateView$b;
.super Ljava/lang/Object;
.source "CubeRotateView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CubeRotateView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CubeRotateView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CubeRotateView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView$b;->a:Lcom/join/mgps/customview/CubeRotateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CubeRotateView$b;->a:Lcom/join/mgps/customview/CubeRotateView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/join/mgps/customview/CubeRotateView;->a(Lcom/join/mgps/customview/CubeRotateView;F)F

    return-void
.end method
