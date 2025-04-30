.class Lcom/join/mgps/ptr/d;
.super Ljava/lang/Object;
.source "PtrUIHandlerHolder.java"

# interfaces
.implements Lcom/join/mgps/ptr/c;


# instance fields
.field private a:Lcom/join/mgps/ptr/c;

.field private b:Lcom/join/mgps/ptr/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Lcom/join/mgps/ptr/d;Lcom/join/mgps/ptr/c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 1
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ptr/d;->a:Lcom/join/mgps/ptr/c;

    if-nez v0, :cond_2

    .line 2
    iput-object p1, p0, Lcom/join/mgps/ptr/d;->a:Lcom/join/mgps/ptr/c;

    return-void

    .line 3
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/d;->g(Lcom/join/mgps/ptr/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    if-nez v0, :cond_4

    .line 5
    new-instance v0, Lcom/join/mgps/ptr/d;

    invoke-direct {v0}, Lcom/join/mgps/ptr/d;-><init>()V

    .line 6
    iput-object p1, v0, Lcom/join/mgps/ptr/d;->a:Lcom/join/mgps/ptr/c;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    return-void

    :cond_4
    move-object p0, v0

    goto :goto_0
.end method

.method private g(Lcom/join/mgps/ptr/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/d;->a:Lcom/join/mgps/ptr/c;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static h()Lcom/join/mgps/ptr/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/d;

    invoke-direct {v0}, Lcom/join/mgps/ptr/d;-><init>()V

    return-object v0
.end method

.method private i()Lcom/join/mgps/ptr/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/d;->a:Lcom/join/mgps/ptr/c;

    return-object v0
.end method

.method public static k(Lcom/join/mgps/ptr/d;Lcom/join/mgps/ptr/c;)Lcom/join/mgps/ptr/d;
    .locals 5

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/d;->a:Lcom/join/mgps/ptr/c;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/d;->g(Lcom/join/mgps/ptr/c;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    move-object p0, v1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    iput-object v3, v2, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    .line 7
    iget-object p0, v2, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    goto :goto_0

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    move-object v4, v2

    move-object v2, p0

    move-object p0, v4

    :goto_0
    if-nez p0, :cond_1

    if-nez v1, :cond_4

    .line 9
    new-instance v1, Lcom/join/mgps/ptr/d;

    invoke-direct {v1}, Lcom/join/mgps/ptr/d;-><init>()V

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    invoke-direct {v0}, Lcom/join/mgps/ptr/d;->i()Lcom/join/mgps/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1}, Lcom/join/mgps/ptr/c;->a(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    if-nez v0, :cond_0

    return-void
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    invoke-direct {v0}, Lcom/join/mgps/ptr/d;->i()Lcom/join/mgps/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/join/mgps/ptr/c;->b(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    if-nez v0, :cond_0

    return-void
.end method

.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    invoke-direct {v0}, Lcom/join/mgps/ptr/d;->i()Lcom/join/mgps/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1}, Lcom/join/mgps/ptr/c;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    if-nez v0, :cond_0

    return-void
.end method

.method public d(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/ptr/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 2
    :cond_1
    invoke-direct {v0}, Lcom/join/mgps/ptr/d;->i()Lcom/join/mgps/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1, p1}, Lcom/join/mgps/ptr/c;->d(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 4
    :cond_2
    iget-object v0, v0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    if-nez v0, :cond_1

    return-void
.end method

.method public e(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    invoke-direct {v0}, Lcom/join/mgps/ptr/d;->i()Lcom/join/mgps/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1}, Lcom/join/mgps/ptr/c;->e(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/join/mgps/ptr/d;->b:Lcom/join/mgps/ptr/d;

    if-nez v0, :cond_0

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/d;->a:Lcom/join/mgps/ptr/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
