.class Lcom/join/mgps/customview/SlideBottomPanel$b;
.super Ljava/lang/Object;
.source "SlideBottomPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic b:Lcom/join/mgps/customview/SlideBottomPanel;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    iput-object p2, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->d(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->e(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->f(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->d(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->e(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->f(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Lcom/join/mgps/customview/SlideBottomPanel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->d(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    return-void
.end method
