.class public Lexternal/org/apache/commons/lang3/builder/c;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/tuple/Pair<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/c;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-void
.end method

.method public static A(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs",
            "testTransients"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, p2, v1, v0}, Lexternal/org/apache/commons/lang3/builder/c;->B(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs B(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs",
            "testTransients",
            "reflectUpToClass",
            "excludeFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v2

    .line 7
    :cond_4
    :goto_1
    new-instance v10, Lexternal/org/apache/commons/lang3/builder/c;

    invoke-direct {v10}, Lexternal/org/apache/commons/lang3/builder/c;-><init>()V

    move-object v4, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, v10

    move v8, p2

    move-object v9, p4

    .line 8
    :try_start_0
    invoke-static/range {v4 .. v9}, Lexternal/org/apache/commons/lang3/builder/c;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/c;Z[Ljava/lang/String;)V

    .line 9
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eq v1, p3, :cond_5

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v10

    move v6, p2

    move-object v7, p4

    .line 11
    invoke-static/range {v2 .. v7}, Lexternal/org/apache/commons/lang3/builder/c;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/c;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {v10}, Lexternal/org/apache/commons/lang3/builder/c;->w()Z

    move-result p0

    return p0

    :catch_0
    :cond_6
    :goto_3
    return v0
.end method

.method public static varargs C(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs",
            "excludeFields"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->B(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static D(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    const-class v0, Lexternal/org/apache/commons/lang3/builder/c;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lexternal/org/apache/commons/lang3/builder/c;->b:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->u(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static G(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->u(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    const-class p0, Lexternal/org/apache/commons/lang3/builder/c;

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lexternal/org/apache/commons/lang3/builder/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 8
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method static u(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lexternal/org/apache/commons/lang3/tuple/Pair<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/e;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p0, Lexternal/org/apache/commons/lang3/builder/e;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-static {v0, p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->A(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    return-object p0
.end method

.method static v()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/tuple/Pair<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static x(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/c;->v()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->u(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexternal/org/apache/commons/lang3/builder/e;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexternal/org/apache/commons/lang3/builder/e;

    invoke-static {p1, v1}, Lexternal/org/apache/commons/lang3/tuple/Pair;->A(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/c;Z[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs",
            "clazz",
            "builder",
            "useTransients",
            "excludeFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lexternal/org/apache/commons/lang3/builder/c;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->x(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->D(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 4
    invoke-static {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    iget-boolean v1, p3, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_3

    .line 6
    aget-object v1, p2, v0

    .line 7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lexternal/org/apache/commons/lang3/a;->S([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-nez p4, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 11
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lexternal/org/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 12
    :catch_0
    :try_start_2
    new-instance p2, Ljava/lang/InternalError;

    const-string p3, "Unexpected IllegalAccessException"

    invoke-direct {p2, p3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->G(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/c;->G(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs",
            "excludeFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/f;->t0(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->C(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public E()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-void
.end method

.method protected F(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEquals"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-void
.end method

.method public a(BB)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-object p0
.end method

.method public b(CC)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/c;->t()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public c(DD)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lexternal/org/apache/commons/lang3/builder/c;->f(JJ)Lexternal/org/apache/commons/lang3/builder/c;

    move-result-object p1

    return-object p1
.end method

.method public d(FF)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->e(II)Lexternal/org/apache/commons/lang3/builder/c;

    move-result-object p1

    return-object p1
.end method

.method public e(II)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-object p0
.end method

.method public f(JJ)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-object p0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 2
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    goto/16 :goto_0

    .line 5
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 6
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    goto/16 :goto_0

    .line 7
    :cond_4
    instance-of v0, p1, [J

    if-eqz v0, :cond_5

    .line 8
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->o([J[J)Lexternal/org/apache/commons/lang3/builder/c;

    goto :goto_0

    .line 9
    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    .line 10
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->n([I[I)Lexternal/org/apache/commons/lang3/builder/c;

    goto :goto_0

    .line 11
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    .line 12
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->q([S[S)Lexternal/org/apache/commons/lang3/builder/c;

    goto :goto_0

    .line 13
    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    .line 14
    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->k([C[C)Lexternal/org/apache/commons/lang3/builder/c;

    goto :goto_0

    .line 15
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->j([B[B)Lexternal/org/apache/commons/lang3/builder/c;

    goto :goto_0

    .line 17
    :cond_9
    instance-of v0, p1, [D

    if-eqz v0, :cond_a

    .line 18
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->l([D[D)Lexternal/org/apache/commons/lang3/builder/c;

    goto :goto_0

    .line 19
    :cond_a
    instance-of v0, p1, [F

    if-eqz v0, :cond_b

    .line 20
    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->m([F[F)Lexternal/org/apache/commons/lang3/builder/c;

    goto :goto_0

    .line 21
    :cond_b
    instance-of v0, p1, [Z

    if-eqz v0, :cond_c

    .line 22
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->r([Z[Z)Lexternal/org/apache/commons/lang3/builder/c;

    goto :goto_0

    .line 23
    :cond_c
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/c;->p([Ljava/lang/Object;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;

    :goto_0
    return-object p0

    .line 24
    :cond_d
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public h(SS)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-object p0
.end method

.method public i(ZZ)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-object p0
.end method

.method public j([B[B)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0

    .line 4
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_4

    .line 5
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->a(BB)Lexternal/org/apache/commons/lang3/builder/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 6
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public k([C[C)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0

    .line 4
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_4

    .line 5
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->b(CC)Lexternal/org/apache/commons/lang3/builder/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 6
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public l([D[D)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0

    .line 4
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_4

    .line 5
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/c;->c(DD)Lexternal/org/apache/commons/lang3/builder/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 6
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public m([F[F)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0

    .line 4
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_4

    .line 5
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->d(FF)Lexternal/org/apache/commons/lang3/builder/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 6
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public n([I[I)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0

    .line 4
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_4

    .line 5
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->e(II)Lexternal/org/apache/commons/lang3/builder/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 6
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public o([J[J)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0

    .line 4
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_4

    .line 5
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/c;->f(JJ)Lexternal/org/apache/commons/lang3/builder/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 6
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public p([Ljava/lang/Object;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0

    .line 4
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_4

    .line 5
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 6
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public q([S[S)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0

    .line 4
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_4

    .line 5
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->h(SS)Lexternal/org/apache/commons/lang3/builder/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 6
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public r([Z[Z)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0

    .line 4
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-eqz v1, :cond_4

    .line 5
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/c;->i(ZZ)Lexternal/org/apache/commons/lang3/builder/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 6
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/c;->F(Z)V

    return-object p0
.end method

.method public s(Z)Lexternal/org/apache/commons/lang3/builder/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superEquals"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return-object p0
.end method

.method public t()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/c;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/c;->a:Z

    return v0
.end method
