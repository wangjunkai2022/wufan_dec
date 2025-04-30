.class Lcom/nineoldandroids/view/d$a;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorICS.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nineoldandroids/view/d;->s(Lcom/nineoldandroids/animation/a$a;)Lcom/nineoldandroids/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nineoldandroids/animation/a$a;

.field final synthetic b:Lcom/nineoldandroids/view/d;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/view/d;Lcom/nineoldandroids/animation/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/view/d$a;->b:Lcom/nineoldandroids/view/d;

    iput-object p2, p0, Lcom/nineoldandroids/view/d$a;->a:Lcom/nineoldandroids/animation/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/view/d$a;->a:Lcom/nineoldandroids/animation/a$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/nineoldandroids/animation/a$a;->a(Lcom/nineoldandroids/animation/a;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/view/d$a;->a:Lcom/nineoldandroids/animation/a$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/nineoldandroids/animation/a$a;->d(Lcom/nineoldandroids/animation/a;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/view/d$a;->a:Lcom/nineoldandroids/animation/a$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/nineoldandroids/animation/a$a;->b(Lcom/nineoldandroids/animation/a;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/view/d$a;->a:Lcom/nineoldandroids/animation/a$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/nineoldandroids/animation/a$a;->c(Lcom/nineoldandroids/animation/a;)V

    return-void
.end method
