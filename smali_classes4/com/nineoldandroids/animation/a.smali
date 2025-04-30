.class public abstract Lcom/nineoldandroids/animation/a;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/animation/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/nineoldandroids/animation/a;
    .locals 6

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/a;

    .line 2
    iget-object v1, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 5
    iget-object v4, v0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/a;->b()Lcom/nineoldandroids/animation/a;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()J
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/animation/a$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract f()J
.end method

.method public abstract g()Z
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/a;->g()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public j(Lcom/nineoldandroids/animation/a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public abstract k(J)Lcom/nineoldandroids/animation/a;
.end method

.method public abstract l(Landroid/view/animation/Interpolator;)V
.end method

.method public abstract m(J)V
.end method

.method public n(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method
