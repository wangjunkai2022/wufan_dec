.class Lcom/join/mgps/customview/BounceListView$b;
.super Ljava/lang/Object;
.source "BounceListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/BounceListView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/BounceListView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/BounceListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/BounceListView$b;->a:Lcom/join/mgps/customview/BounceListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/BounceListView$b;->a:Lcom/join/mgps/customview/BounceListView;

    iget-object v0, v0, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/customview/BounceListView$b;->a:Lcom/join/mgps/customview/BounceListView;

    iget-object v2, v2, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/customview/BounceListView$b;->a:Lcom/join/mgps/customview/BounceListView;

    iget-object v3, v3, Lcom/join/mgps/customview/BounceListView;->b:Landroid/view/View;

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
