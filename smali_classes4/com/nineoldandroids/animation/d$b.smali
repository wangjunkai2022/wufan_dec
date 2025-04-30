.class Lcom/nineoldandroids/animation/d$b;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/nineoldandroids/animation/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/nineoldandroids/animation/d;

.field final synthetic b:Lcom/nineoldandroids/animation/d;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/d;Lcom/nineoldandroids/animation/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/a;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    iget-boolean v0, p1, Lcom/nineoldandroids/animation/d;->h:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->r(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    iget-object p1, p1, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    iget-object v1, v1, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/a$a;

    iget-object v2, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    invoke-interface {v1, v2}, Lcom/nineoldandroids/animation/a$a;->a(Lcom/nineoldandroids/animation/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/nineoldandroids/animation/a;)V
    .locals 5

    .line 1
    invoke-virtual {p1, p0}, Lcom/nineoldandroids/animation/a;->j(Lcom/nineoldandroids/animation/a$a;)V

    .line 2
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->r(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nineoldandroids/animation/d$f;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/nineoldandroids/animation/d$f;->f:Z

    .line 5
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    iget-boolean p1, p1, Lcom/nineoldandroids/animation/d;->h:Z

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 8
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/d$f;

    iget-boolean v4, v4, Lcom/nineoldandroids/animation/d$f;->f:Z

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    iget-object p1, p1, Lcom/nineoldandroids/animation/a;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 12
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/a$a;

    iget-object v4, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    invoke-interface {v3, v4}, Lcom/nineoldandroids/animation/a$a;->d(Lcom/nineoldandroids/animation/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    invoke-static {p1, v2}, Lcom/nineoldandroids/animation/d;->u(Lcom/nineoldandroids/animation/d;Z)Z

    :cond_3
    return-void
.end method
