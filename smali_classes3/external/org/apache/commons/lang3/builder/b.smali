.class public Lexternal/org/apache/commons/lang3/builder/b;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-void
.end method

.method public static varargs A(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 8
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
            "compareTransients",
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
            ")I"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 2
    invoke-virtual {v6, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v7, Lexternal/org/apache/commons/lang3/builder/b;

    invoke-direct {v7}, Lexternal/org/apache/commons/lang3/builder/b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    move v4, p2

    move-object v5, p4

    .line 4
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/b;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/b;Z[Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v6, p3, :cond_1

    .line 6
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    move v4, p2

    move-object v5, p4

    .line 7
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/b;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/b;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/builder/b;->C()I

    move-result v0

    return v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 10
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static varargs B(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
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
    invoke-static {p0, p1, v0, v1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->A(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/b;Z[Ljava/lang/String;)V
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
            "Lexternal/org/apache/commons/lang3/builder/b;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    iget v1, p3, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_2

    .line 4
    aget-object v1, p2, v0

    .line 5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lexternal/org/apache/commons/lang3/a;->S([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-nez p4, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lexternal/org/apache/commons/lang3/builder/b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/b;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Unexpected IllegalAccessException"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static x(Ljava/lang/Object;Ljava/lang/Object;)I
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

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, p1, v0, v2, v1}, Lexternal/org/apache/commons/lang3/builder/b;->A(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static y(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
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
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/f;->t0(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->B(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/Object;Z)I
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
            "compareTransients"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, p2, v1, v0}, Lexternal/org/apache/commons/lang3/builder/b;->A(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return v0
.end method

.method public a(BB)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0
.end method

.method public b(CC)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/b;->v()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public c(DD)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0
.end method

.method public d(FF)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0
.end method

.method public e(II)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0
.end method

.method public f(JJ)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/b;
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/b;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/b;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lexternal/org/apache/commons/lang3/builder/b;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5
    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    .line 6
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->p([J[J)Lexternal/org/apache/commons/lang3/builder/b;

    goto/16 :goto_0

    .line 7
    :cond_4
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 8
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->o([I[I)Lexternal/org/apache/commons/lang3/builder/b;

    goto :goto_0

    .line 9
    :cond_5
    instance-of v0, p1, [S

    if-eqz v0, :cond_6

    .line 10
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->s([S[S)Lexternal/org/apache/commons/lang3/builder/b;

    goto :goto_0

    .line 11
    :cond_6
    instance-of v0, p1, [C

    if-eqz v0, :cond_7

    .line 12
    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->l([C[C)Lexternal/org/apache/commons/lang3/builder/b;

    goto :goto_0

    .line 13
    :cond_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_8

    .line 14
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->k([B[B)Lexternal/org/apache/commons/lang3/builder/b;

    goto :goto_0

    .line 15
    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_9

    .line 16
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->m([D[D)Lexternal/org/apache/commons/lang3/builder/b;

    goto :goto_0

    .line 17
    :cond_9
    instance-of v0, p1, [F

    if-eqz v0, :cond_a

    .line 18
    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->n([F[F)Lexternal/org/apache/commons/lang3/builder/b;

    goto :goto_0

    .line 19
    :cond_a
    instance-of v0, p1, [Z

    if-eqz v0, :cond_b

    .line 20
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/b;->t([Z[Z)Lexternal/org/apache/commons/lang3/builder/b;

    goto :goto_0

    .line 21
    :cond_b
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/b;->r([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/b;

    goto :goto_0

    :cond_c
    if-nez p3, :cond_d

    .line 22
    check-cast p1, Ljava/lang/Comparable;

    .line 23
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    goto :goto_0

    .line 24
    :cond_d
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    :goto_0
    return-object p0
.end method

.method public i(SS)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0
.end method

.method public j(ZZ)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    :goto_0
    return-object p0
.end method

.method public k([B[B)Lexternal/org/apache/commons/lang3/builder/b;
    .locals 4
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 5
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_6

    .line 7
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/b;->a(BB)Lexternal/org/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public l([C[C)Lexternal/org/apache/commons/lang3/builder/b;
    .locals 4
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 5
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_6

    .line 7
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/b;->b(CC)Lexternal/org/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public m([D[D)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 5
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_6

    .line 7
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/b;->c(DD)Lexternal/org/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public n([F[F)Lexternal/org/apache/commons/lang3/builder/b;
    .locals 4
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 5
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_6

    .line 7
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/b;->d(FF)Lexternal/org/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public o([I[I)Lexternal/org/apache/commons/lang3/builder/b;
    .locals 4
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 5
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_6

    .line 7
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/b;->e(II)Lexternal/org/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public p([J[J)Lexternal/org/apache/commons/lang3/builder/b;
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 5
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_6

    .line 7
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/b;->f(JJ)Lexternal/org/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public q([Ljava/lang/Object;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/b;
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/b;->r([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/b;

    move-result-object p1

    return-object p1
.end method

.method public r([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lexternal/org/apache/commons/lang3/builder/b;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 5
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_6

    .line 7
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lexternal/org/apache/commons/lang3/builder/b;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public s([S[S)Lexternal/org/apache/commons/lang3/builder/b;
    .locals 4
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 5
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_6

    .line 7
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/b;->i(SS)Lexternal/org/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public t([Z[Z)Lexternal/org/apache/commons/lang3/builder/b;
    .locals 4
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
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    .line 4
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 5
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-nez v1, :cond_6

    .line 7
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/b;->j(ZZ)Lexternal/org/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public u(I)Lexternal/org/apache/commons/lang3/builder/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superCompareTo"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/b;->a:I

    return-object p0
.end method

.method public v()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/b;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
