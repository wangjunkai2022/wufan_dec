.class public Lcom/nineoldandroids/animation/d$c;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/nineoldandroids/animation/d$f;

.field final synthetic b:Lcom/nineoldandroids/animation/d;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/d;Lcom/nineoldandroids/animation/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/d$f;

    iput-object v0, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/nineoldandroids/animation/d$f;

    invoke-direct {v0, p2}, Lcom/nineoldandroids/animation/d$f;-><init>(Lcom/nineoldandroids/animation/a;)V

    iput-object v0, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    .line 4
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->v(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/nineoldandroids/animation/d$c;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/nineoldandroids/animation/q;->U([F)Lcom/nineoldandroids/animation/q;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/nineoldandroids/animation/q;->c0(J)Lcom/nineoldandroids/animation/q;

    .line 3
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/d$c;->b(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/d$f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/nineoldandroids/animation/d$f;

    invoke-direct {v0, p1}, Lcom/nineoldandroids/animation/d$f;-><init>(Lcom/nineoldandroids/animation/a;)V

    .line 3
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {v1}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->v(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    new-instance p1, Lcom/nineoldandroids/animation/d$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/nineoldandroids/animation/d$d;-><init>(Lcom/nineoldandroids/animation/d$f;I)V

    .line 6
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/d$f;->a(Lcom/nineoldandroids/animation/d$d;)V

    return-object p0
.end method

.method public c(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/d$f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/nineoldandroids/animation/d$f;

    invoke-direct {v0, p1}, Lcom/nineoldandroids/animation/d$f;-><init>(Lcom/nineoldandroids/animation/a;)V

    .line 3
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {v1}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->v(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    new-instance p1, Lcom/nineoldandroids/animation/d$d;

    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lcom/nineoldandroids/animation/d$d;-><init>(Lcom/nineoldandroids/animation/d$f;I)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/d$f;->a(Lcom/nineoldandroids/animation/d$d;)V

    return-object p0
.end method

.method public d(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/d$f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/nineoldandroids/animation/d$f;

    invoke-direct {v0, p1}, Lcom/nineoldandroids/animation/d$f;-><init>(Lcom/nineoldandroids/animation/a;)V

    .line 3
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {v1}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->v(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    new-instance p1, Lcom/nineoldandroids/animation/d$d;

    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/nineoldandroids/animation/d$d;-><init>(Lcom/nineoldandroids/animation/d$f;I)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/d$f;->a(Lcom/nineoldandroids/animation/d$d;)V

    return-object p0
.end method
