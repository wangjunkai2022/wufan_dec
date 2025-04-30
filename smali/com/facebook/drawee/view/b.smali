.class public Lcom/facebook/drawee/view/b;
.super Ljava/lang/Object;
.source "DraweeHolder.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lk0/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/drawable/v;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lk0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDH;"
        }
    .end annotation
.end field

.field private e:Lk0/a;

.field private final f:Lcom/facebook/drawee/components/DraweeEventTracker;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1
    .param p1    # Lk0/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->c:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    .line 6
    invoke-static {}, Lcom/facebook/drawee/components/DraweeEventTracker;->b()Lcom/facebook/drawee/components/DraweeEventTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/b;->r(Lk0/b;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lk0/a;->e()Lk0/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    invoke-interface {v0}, Lk0/a;->b()V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->e()V

    :goto_0
    return-void
.end method

.method public static d(Lk0/b;Landroid/content/Context;)Lcom/facebook/drawee/view/b;
    .locals 1
    .param p0    # Lk0/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DH::",
            "Lk0/b;",
            ">(TDH;",
            "Landroid/content/Context;",
            ")",
            "Lcom/facebook/drawee/view/b<",
            "TDH;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/b;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/view/b;-><init>(Lk0/b;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/b;->p(Landroid/content/Context;)V

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    .line 4
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    invoke-interface {v0}, Lk0/a;->d()V

    :cond_1
    return-void
.end method

.method private s(Lcom/facebook/drawee/drawable/v;)V
    .locals 2
    .param p1    # Lcom/facebook/drawee/drawable/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/facebook/drawee/drawable/u;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/facebook/drawee/drawable/u;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/u;->p(Lcom/facebook/drawee/drawable/v;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    .line 4
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "%x: Draw requested for a non-attached controller %x. %s"

    .line 6
    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/a;->m0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iput-boolean v3, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 8
    iput-boolean v3, p0, Lcom/facebook/drawee/view/b;->c:Z

    .line 9
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->c()V

    return-void
.end method

.method public f()Lk0/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    return-object v0
.end method

.method protected g()Lcom/facebook/drawee/components/DraweeEventTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    return-object v0
.end method

.method public h()Lk0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->d:Lk0/b;

    invoke-static {v0}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk0/b;

    return-object v0
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->d:Lk0/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lk0/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->d:Lk0/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk0/a;->e()Lk0/b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/view/b;->d:Lk0/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_ATTACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 3
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->c()V

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_DETACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/drawee/view/b;->b:Z

    .line 3
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->c()V

    return-void
.end method

.method public o(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    invoke-interface {v0, p1}, Lk0/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityChange(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_SHOW:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_HIDE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 3
    iput-boolean p1, p0, Lcom/facebook/drawee/view/b;->c:Z

    .line 4
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->c()V

    return-void
.end method

.method public p(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public q(Lk0/a;)V
    .locals 3
    .param p1    # Lk0/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/view/b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->e()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_OLD_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 5
    iget-object v1, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lk0/a;->a(Lk0/b;)V

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 8
    iget-object p1, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    iget-object v1, p0, Lcom/facebook/drawee/view/b;->d:Lk0/b;

    invoke-interface {p1, v1}, Lk0/a;->a(Lk0/b;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    :goto_0
    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/facebook/drawee/view/b;->b()V

    :cond_3
    return-void
.end method

.method public r(Lk0/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/view/b;->l()Z

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1}, Lcom/facebook/drawee/view/b;->s(Lcom/facebook/drawee/drawable/v;)V

    .line 4
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/b;

    iput-object v1, p0, Lcom/facebook/drawee/view/b;->d:Lk0/b;

    .line 5
    invoke-interface {v1}, Lk0/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/view/b;->onVisibilityChange(Z)V

    .line 7
    invoke-direct {p0, p0}, Lcom/facebook/drawee/view/b;->s(Lcom/facebook/drawee/drawable/v;)V

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/view/b;->e:Lk0/a;

    invoke-interface {v0, p1}, Lk0/a;->a(Lk0/b;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/g;->f(Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/view/b;->a:Z

    const-string v2, "controllerAttached"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/view/b;->b:Z

    const-string v2, "holderAttached"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/view/b;->c:Z

    const-string v2, "drawableVisible"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/view/b;->f:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/internal/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
