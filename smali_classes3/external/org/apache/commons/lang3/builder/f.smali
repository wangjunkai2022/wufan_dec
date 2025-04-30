.class public Lexternal/org/apache/commons/lang3/builder/f;
.super Lexternal/org/apache/commons/lang3/builder/g;
.source "ReflectionToStringBuilder.java"


# instance fields
.field private e:Z

.field private f:Z

.field protected g:[Ljava/lang/String;

.field private h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/builder/g;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->e:Z

    .line 3
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->f:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->h:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "style"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/g;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->e:Z

    .line 7
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->f:Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->h:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "style",
            "buffer"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/g;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->e:Z

    .line 11
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->f:Z

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->h:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .locals 0
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
            "object",
            "style",
            "buffer",
            "reflectUpToClass",
            "outputTransients",
            "outputStatics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lexternal/org/apache/commons/lang3/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class<",
            "-TT;>;ZZ)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/g;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->e:Z

    .line 15
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->f:Z

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->h:Ljava/lang/Class;

    .line 17
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/f;->s0(Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0, p5}, Lexternal/org/apache/commons/lang3/builder/f;->q0(Z)V

    .line 19
    invoke-virtual {p0, p6}, Lexternal/org/apache/commons/lang3/builder/f;->p0(Z)V

    return-void
.end method

.method public static A0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "excludeFieldNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/builder/f;->t0(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/f;->B0(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs B0(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "excludeFieldNames"
        }
    .end annotation

    .line 1
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/f;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/builder/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lexternal/org/apache/commons/lang3/builder/f;->r0([Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/f;

    move-result-object p0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/f;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static t0(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lexternal/org/apache/commons/lang3/a;->c:[Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/f;->u0([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static u0([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lexternal/org/apache/commons/lang3/a;->c:[Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static v0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, v1, v0}, Lexternal/org/apache/commons/lang3/builder/f;->z0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "style"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/f;->z0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "style",
            "outputTransients"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lexternal/org/apache/commons/lang3/builder/f;->z0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "style",
            "outputTransients",
            "outputStatics"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lexternal/org/apache/commons/lang3/builder/f;->z0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
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
            "object",
            "style",
            "outputTransients",
            "outputStatics",
            "reflectUpToClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lexternal/org/apache/commons/lang3/builder/ToStringStyle;",
            "ZZ",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v7, Lexternal/org/apache/commons/lang3/builder/f;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/builder/f;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    .line 2
    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/builder/f;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected h0(Ljava/lang/reflect/Field;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/f;->n0()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/f;->m0()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/f;->g:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected i0(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->Z()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/f;->o0(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/f;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 6
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/f;->h0(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/f;->l0(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-virtual {p0, v3, v2}, Lexternal/org/apache/commons/lang3/builder/g;->n(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/g;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected IllegalAccessException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public j0()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/f;->g:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public k0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/f;->h:Ljava/lang/Class;

    return-object v0
.end method

.method protected l0(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->Z()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/f;->e:Z

    return v0
.end method

.method public n0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/f;->f:Z

    return v0
.end method

.method public o0(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/f;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->b0()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->a0()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->J0(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public p0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appendStatics"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->e:Z

    return-void
.end method

.method public q0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appendTransients"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->f:Z

    return-void
.end method

.method public varargs r0([Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "excludeFieldNamesParam"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->g:[Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/builder/f;->u0([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->g:[Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public s0(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->Z()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Specified class is not a superclass of the object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/f;->h:Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->Z()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->b0()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->s0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->Z()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/f;->i0(Ljava/lang/Class;)V

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/f;->k0()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/f;->i0(Ljava/lang/Class;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0}, Lexternal/org/apache/commons/lang3/builder/g;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
