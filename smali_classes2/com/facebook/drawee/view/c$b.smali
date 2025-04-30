.class Lcom/facebook/drawee/view/c$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DraweeTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/view/c;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/drawee/view/GenericDraweeView;

.field final synthetic b:Lcom/facebook/drawee/view/c;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/view/c;Lcom/facebook/drawee/view/GenericDraweeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/view/c$b;->b:Lcom/facebook/drawee/view/c;

    iput-object p2, p0, Lcom/facebook/drawee/view/c$b;->a:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/view/c$b;->a:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/a;

    iget-object v0, p0, Lcom/facebook/drawee/view/c$b;->b:Lcom/facebook/drawee/view/c;

    invoke-static {v0}, Lcom/facebook/drawee/view/c;->a(Lcom/facebook/drawee/view/c;)Lcom/facebook/drawee/drawable/r$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/drawee/view/c$b;->b:Lcom/facebook/drawee/view/c;

    invoke-static {p1}, Lcom/facebook/drawee/view/c;->b(Lcom/facebook/drawee/view/c;)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/view/c$b;->a:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/a;

    iget-object v0, p0, Lcom/facebook/drawee/view/c$b;->b:Lcom/facebook/drawee/view/c;

    invoke-static {v0}, Lcom/facebook/drawee/view/c;->b(Lcom/facebook/drawee/view/c;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->w(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
