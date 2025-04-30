.class Lcom/join/mgps/ptr/header/DropBounceHeaderView$d;
.super Ljava/lang/Object;
.source "DropBounceHeaderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/header/DropBounceHeaderView;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ptr/header/DropBounceHeaderView;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView$d;->a:Lcom/join/mgps/ptr/header/DropBounceHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView$d;->a:Lcom/join/mgps/ptr/header/DropBounceHeaderView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->g(Lcom/join/mgps/ptr/header/DropBounceHeaderView;F)F

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView$d;->a:Lcom/join/mgps/ptr/header/DropBounceHeaderView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
