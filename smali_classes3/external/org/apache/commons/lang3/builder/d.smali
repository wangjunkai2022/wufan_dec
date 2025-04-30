.class public Lexternal/org/apache/commons/lang3/builder/d;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"

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


# static fields
.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/d;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    const/16 v0, 0x25

    .line 3
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    const/16 v0, 0x11

    .line 4
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialNonZeroOddNumber",
            "multiplierNonZeroOddNumber"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    if-eqz p1, :cond_3

    .line 7
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 8
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 9
    iput p2, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    .line 10
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires an odd initial value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static A(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "excludeFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/builder/f;->t0(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->C(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static B(Ljava/lang/Object;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "testTransients"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/16 v1, 0x11

    const/16 v2, 0x25

    const/4 v5, 0x0

    move-object v3, p0

    move v4, p1

    .line 1
    invoke-static/range {v1 .. v6}, Lexternal/org/apache/commons/lang3/builder/d;->z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs C(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "excludeFields"
        }
    .end annotation

    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/d;->z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static D(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    const-class v0, Lexternal/org/apache/commons/lang3/builder/d;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lexternal/org/apache/commons/lang3/builder/d;->c:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lexternal/org/apache/commons/lang3/builder/e;

    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static F(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lexternal/org/apache/commons/lang3/builder/e;

    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    const-class p0, Lexternal/org/apache/commons/lang3/builder/d;

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/d;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 7
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method static u()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lexternal/org/apache/commons/lang3/builder/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/d;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static v(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/d;->u()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lexternal/org/apache/commons/lang3/builder/e;

    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static w(Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/d;Z[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
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
            "Ljava/lang/Class<",
            "*>;",
            "Lexternal/org/apache/commons/lang3/builder/d;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/d;->v(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/d;->D(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 6
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lexternal/org/apache/commons/lang3/a;->S([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    if-nez p3, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-virtual {p2, v2}, Lexternal/org/apache/commons/lang3/builder/d;->g(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 12
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "Unexpected IllegalAccessException"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/d;->F(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/d;->F(Ljava/lang/Object;)V

    .line 14
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static x(IILjava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "initialNonZeroOddNumber",
            "multiplierNonZeroOddNumber",
            "object"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    .line 1
    invoke-static/range {v1 .. v6}, Lexternal/org/apache/commons/lang3/builder/d;->z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static y(IILjava/lang/Object;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "initialNonZeroOddNumber",
            "multiplierNonZeroOddNumber",
            "object",
            "testTransients"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    .line 1
    invoke-static/range {v1 .. v6}, Lexternal/org/apache/commons/lang3/builder/d;->z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs z(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 1
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
            "initialNonZeroOddNumber",
            "multiplierNonZeroOddNumber",
            "object",
            "testTransients",
            "reflectUpToClass",
            "excludeFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/d;

    invoke-direct {v0, p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;-><init>(II)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-static {p2, p0, v0, p3, p5}, Lexternal/org/apache/commons/lang3/builder/d;->w(Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/d;Z[Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eq p0, p4, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 6
    invoke-static {p2, p0, v0, p3, p5}, Lexternal/org/apache/commons/lang3/builder/d;->w(Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/d;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/d;->E()I

    move-result p0

    return p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The object to build a hash code for must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return v0
.end method

.method public a(B)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-object p0
.end method

.method public b(C)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/d;->t()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public c(D)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/d;->f(J)Lexternal/org/apache/commons/lang3/builder/d;

    move-result-object p1

    return-object p1
.end method

.method public d(F)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int v0, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-object p0
.end method

.method public e(I)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-object p0
.end method

.method public f(J)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int v0, v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->o([J)Lexternal/org/apache/commons/lang3/builder/d;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->n([I)Lexternal/org/apache/commons/lang3/builder/d;

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->q([S)Lexternal/org/apache/commons/lang3/builder/d;

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->k([C)Lexternal/org/apache/commons/lang3/builder/d;

    goto :goto_0

    .line 11
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->j([B)Lexternal/org/apache/commons/lang3/builder/d;

    goto :goto_0

    .line 13
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 14
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->l([D)Lexternal/org/apache/commons/lang3/builder/d;

    goto :goto_0

    .line 15
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 16
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->m([F)Lexternal/org/apache/commons/lang3/builder/d;

    goto :goto_0

    .line 17
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 18
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->r([Z)Lexternal/org/apache/commons/lang3/builder/d;

    goto :goto_0

    .line 19
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/d;->p([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;

    goto :goto_0

    .line 20
    :cond_9
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    :goto_0
    return-object p0
.end method

.method public h(S)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/d;->E()I

    move-result v0

    return v0
.end method

.method public i(Z)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int v0, v0, v1

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-object p0
.end method

.method public j([B)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->a(B)Lexternal/org/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public k([C)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->b(C)Lexternal/org/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public l([D)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 3
    invoke-virtual {p0, v2, v3}, Lexternal/org/apache/commons/lang3/builder/d;->c(D)Lexternal/org/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public m([F)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->d(F)Lexternal/org/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public n([I)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->e(I)Lexternal/org/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public o([J)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 3
    invoke-virtual {p0, v2, v3}, Lexternal/org/apache/commons/lang3/builder/d;->f(J)Lexternal/org/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public p([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->g(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public q([S)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-short v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->h(S)Lexternal/org/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public r([Z)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/d;->i(Z)Lexternal/org/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public s(I)Lexternal/org/apache/commons/lang3/builder/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superHashCode"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/d;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/d;->b:I

    return-object p0
.end method

.method public t()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/d;->E()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
