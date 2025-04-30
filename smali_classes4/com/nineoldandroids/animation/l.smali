.class public final Lcom/nineoldandroids/animation/l;
.super Lcom/nineoldandroids/animation/q;
.source "ObjectAnimator.java"


# static fields
.field private static final s0:Z

.field private static final t0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/nineoldandroids/util/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private p0:Ljava/lang/Object;

.field private q0:Ljava/lang/String;

.field private r0:Lcom/nineoldandroids/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/l;->t0:Ljava/util/Map;

    .line 2
    sget-object v1, Lcom/nineoldandroids/animation/m;->a:Lcom/nineoldandroids/util/c;

    const-string v2, "alpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/nineoldandroids/animation/m;->b:Lcom/nineoldandroids/util/c;

    const-string v2, "pivotX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/nineoldandroids/animation/m;->c:Lcom/nineoldandroids/util/c;

    const-string v2, "pivotY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/nineoldandroids/animation/m;->d:Lcom/nineoldandroids/util/c;

    const-string v2, "translationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/nineoldandroids/animation/m;->e:Lcom/nineoldandroids/util/c;

    const-string v2, "translationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/nineoldandroids/animation/m;->f:Lcom/nineoldandroids/util/c;

    const-string v2, "rotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/nineoldandroids/animation/m;->g:Lcom/nineoldandroids/util/c;

    const-string v2, "rotationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/nineoldandroids/animation/m;->h:Lcom/nineoldandroids/util/c;

    const-string v2, "rotationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/nineoldandroids/animation/m;->i:Lcom/nineoldandroids/util/c;

    const-string v2, "scaleX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/nineoldandroids/animation/m;->j:Lcom/nineoldandroids/util/c;

    const-string v2, "scaleY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcom/nineoldandroids/animation/m;->k:Lcom/nineoldandroids/util/c;

    const-string v2, "scrollX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/nineoldandroids/animation/m;->l:Lcom/nineoldandroids/util/c;

    const-string v2, "scrollY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/nineoldandroids/animation/m;->m:Lcom/nineoldandroids/util/c;

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/nineoldandroids/animation/m;->n:Lcom/nineoldandroids/util/c;

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/animation/q;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c<",
            "TT;*>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/nineoldandroids/animation/q;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/l;->y0(Lcom/nineoldandroids/util/c;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/nineoldandroids/animation/q;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/l;->z0(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs q0(Ljava/lang/Object;Lcom/nineoldandroids/util/c;[F)Lcom/nineoldandroids/animation/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c<",
            "TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/nineoldandroids/animation/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/l;->e0([F)V

    return-object v0
.end method

.method public static varargs r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/l;->e0([F)V

    return-object v0
.end method

.method public static varargs s0(Ljava/lang/Object;Lcom/nineoldandroids/util/c;[I)Lcom/nineoldandroids/animation/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/nineoldandroids/animation/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/l;->g0([I)V

    return-object v0
.end method

.method public static varargs t0(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/l;->g0([I)V

    return-object v0
.end method

.method public static varargs u0(Ljava/lang/Object;Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c<",
            "TT;TV;>;",
            "Lcom/nineoldandroids/animation/p<",
            "TV;>;[TV;)",
            "Lcom/nineoldandroids/animation/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V

    .line 2
    invoke-virtual {v0, p3}, Lcom/nineoldandroids/animation/l;->h0([Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/q;->d0(Lcom/nineoldandroids/animation/p;)V

    return-object v0
.end method

.method public static varargs v0(Ljava/lang/Object;Ljava/lang/String;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p3}, Lcom/nineoldandroids/animation/l;->h0([Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/q;->d0(Lcom/nineoldandroids/animation/p;)V

    return-object v0
.end method

.method public static varargs w0(Ljava/lang/Object;[Lcom/nineoldandroids/animation/n;)Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/l;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/q;->k0([Lcom/nineoldandroids/animation/n;)V

    return-object v0
.end method


# virtual methods
.method D(F)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/q;->D(F)V

    .line 2
    iget-object p1, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/n;->p(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic G()Lcom/nineoldandroids/animation/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->n0()Lcom/nineoldandroids/animation/l;

    move-result-object v0

    return-object v0
.end method

.method T()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/q;->l:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->r0:Lcom/nineoldandroids/util/c;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/nineoldandroids/view/animation/a;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nineoldandroids/animation/l;->t0:Ljava/util/Map;

    iget-object v1, p0, Lcom/nineoldandroids/animation/l;->q0:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/nineoldandroids/animation/l;->q0:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/util/c;

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/l;->y0(Lcom/nineoldandroids/util/c;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/n;->A(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-super {p0}, Lcom/nineoldandroids/animation/q;->T()V

    :cond_2
    return-void
.end method

.method public bridge synthetic b()Lcom/nineoldandroids/animation/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->n0()Lcom/nineoldandroids/animation/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c0(J)Lcom/nineoldandroids/animation/q;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/l;->x0(J)Lcom/nineoldandroids/animation/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->n0()Lcom/nineoldandroids/animation/l;

    move-result-object v0

    return-object v0
.end method

.method public varargs e0([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/q;->e0([F)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->r0:Lcom/nineoldandroids/util/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v2, v2, [Lcom/nineoldandroids/animation/n;

    .line 4
    invoke-static {v0, p1}, Lcom/nineoldandroids/animation/n;->h(Lcom/nineoldandroids/util/c;[F)Lcom/nineoldandroids/animation/n;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Lcom/nineoldandroids/animation/q;->k0([Lcom/nineoldandroids/animation/n;)V

    goto :goto_1

    :cond_2
    new-array v0, v2, [Lcom/nineoldandroids/animation/n;

    .line 5
    iget-object v2, p0, Lcom/nineoldandroids/animation/l;->q0:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/nineoldandroids/animation/n;->i(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/n;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/q;->k0([Lcom/nineoldandroids/animation/n;)V

    :goto_1
    return-void
.end method

.method public varargs g0([I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/q;->g0([I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->r0:Lcom/nineoldandroids/util/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v2, v2, [Lcom/nineoldandroids/animation/n;

    .line 4
    invoke-static {v0, p1}, Lcom/nineoldandroids/animation/n;->j(Lcom/nineoldandroids/util/c;[I)Lcom/nineoldandroids/animation/n;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Lcom/nineoldandroids/animation/q;->k0([Lcom/nineoldandroids/animation/n;)V

    goto :goto_1

    :cond_2
    new-array v0, v2, [Lcom/nineoldandroids/animation/n;

    .line 5
    iget-object v2, p0, Lcom/nineoldandroids/animation/l;->q0:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/nineoldandroids/animation/n;->k(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/n;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/q;->k0([Lcom/nineoldandroids/animation/n;)V

    :goto_1
    return-void
.end method

.method public varargs h0([Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/q;->h0([Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->r0:Lcom/nineoldandroids/util/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    new-array v3, v3, [Lcom/nineoldandroids/animation/n;

    .line 4
    invoke-static {v0, v1, p1}, Lcom/nineoldandroids/animation/n;->n(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/n;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v3}, Lcom/nineoldandroids/animation/q;->k0([Lcom/nineoldandroids/animation/n;)V

    goto :goto_1

    :cond_2
    new-array v0, v3, [Lcom/nineoldandroids/animation/n;

    .line 5
    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->q0:Ljava/lang/String;

    invoke-static {v3, v1, p1}, Lcom/nineoldandroids/animation/n;->o(Ljava/lang/String;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/n;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/q;->k0([Lcom/nineoldandroids/animation/n;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic k(J)Lcom/nineoldandroids/animation/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/l;->x0(J)Lcom/nineoldandroids/animation/l;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/q;->l:Z

    :cond_1
    return-void
.end method

.method public n0()Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nineoldandroids/animation/q;->G()Lcom/nineoldandroids/animation/q;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/l;

    return-object v0
.end method

.method public o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->T()V

    .line 2
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/n;->x(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->q0:Ljava/lang/String;

    return-object v0
.end method

.method public p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->T()V

    .line 2
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/n;->C(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p0()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    return-object v0
.end method

.method public q()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nineoldandroids/animation/q;->q()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/l;->p0:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public x0(J)Lcom/nineoldandroids/animation/l;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/nineoldandroids/animation/q;->c0(J)Lcom/nineoldandroids/animation/q;

    return-object p0
.end method

.method public y0(Lcom/nineoldandroids/util/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    aget-object v0, v0, v1

    .line 3
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/n;->f()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/n;->v(Lcom/nineoldandroids/util/c;)V

    .line 5
    iget-object v3, p0, Lcom/nineoldandroids/animation/q;->t:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->t:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->q0:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->r0:Lcom/nineoldandroids/util/c;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/nineoldandroids/util/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/l;->q0:Ljava/lang/String;

    .line 9
    :cond_1
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->r0:Lcom/nineoldandroids/util/c;

    .line 10
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/q;->l:Z

    return-void
.end method

.method public z0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->s:[Lcom/nineoldandroids/animation/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    aget-object v0, v0, v1

    .line 3
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/n;->f()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/n;->w(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/nineoldandroids/animation/q;->t:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->t:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->q0:Ljava/lang/String;

    .line 8
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/q;->l:Z

    return-void
.end method
