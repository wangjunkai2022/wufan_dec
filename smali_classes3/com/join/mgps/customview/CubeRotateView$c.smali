.class Lcom/join/mgps/customview/CubeRotateView$c;
.super Ljava/lang/Object;
.source "CubeRotateView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView$c;->a:Lcom/join/mgps/customview/CubeRotateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/CubeRotateView$c;->a:Lcom/join/mgps/customview/CubeRotateView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/CubeRotateView;->b(Lcom/join/mgps/customview/CubeRotateView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/CubeRotateView$c;->a:Lcom/join/mgps/customview/CubeRotateView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/CubeRotateView;->b(Lcom/join/mgps/customview/CubeRotateView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
