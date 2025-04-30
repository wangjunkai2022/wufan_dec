.class public final Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentIdentityHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$b;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$i;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$f;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$a;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$j;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$g;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$h;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$e;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$d;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final g:I = 0x10

.field static final h:F = 0.75f

.field static final i:I = 0x10

.field static final j:I = 0x40000000

.field static final k:I = 0x10000

.field static final l:I = 0x2


# instance fields
.field final a:I

.field final b:I

.field final c:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    .line 11
    invoke-direct {p0, v0, v1, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/16 v0, 0x10

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6

    if-ltz p1, :cond_6

    if-lez p3, :cond_6

    const/high16 v0, 0x10000

    if-le p3, v0, :cond_0

    const/high16 p3, 0x10000

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    rsub-int/lit8 p3, v3, 0x20

    .line 2
    iput p3, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->b:I

    add-int/lit8 p3, v2, -0x1

    .line 3
    iput p3, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->a:I

    .line 4
    invoke-static {v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->f(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    move-result-object p3

    iput-object p3, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    const/high16 p3, 0x40000000    # 2.0f

    if-le p1, p3, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    .line 5
    :cond_2
    div-int p3, p1, v2

    mul-int v2, v2, p3

    if-ge v2, p1, :cond_3

    add-int/lit8 p3, p3, 0x1

    :cond_3
    :goto_1
    if-ge v1, p3, :cond_4

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    array-length p3, p1

    if-ge v0, p3, :cond_5

    .line 7
    new-instance p3, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    invoke-direct {p3, v1, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;-><init>(IF)V

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>(IFI)V

    .line 13
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static c(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private static d(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->c(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$h;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$h;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    return-object v0
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    .line 3
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 4
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 5
    aget-object v7, v0, v4

    iget v7, v7, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    aput v7, v1, v4

    add-int/2addr v6, v7

    .line 6
    aget-object v7, v0, v4

    invoke-virtual {v7, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_3

    const/4 v4, 0x0

    .line 7
    :goto_2
    array-length v6, v0

    if-ge v4, v6, :cond_3

    .line 8
    aget v6, v1, v4

    aget-object v7, v0, v4

    iget v7, v7, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    if-eq v6, v7, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_5
    array-length v1, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 10
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 11
    :cond_6
    :try_start_0
    array-length v1, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 12
    invoke-virtual {v4, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    .line 13
    :goto_6
    array-length p1, v0

    :goto_7
    if-ge v2, p1, :cond_9

    aget-object v1, v0, v2

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    return v5

    :catchall_0
    move-exception p1

    .line 15
    array-length v1, v0

    :goto_8
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    .line 16
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 17
    :cond_a
    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public e()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$e;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$e;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$b;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$b;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->e:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method f(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->b:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->a:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    .line 2
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 4
    aget-object v5, v0, v3

    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->a:I

    if-eqz v5, :cond_0

    return v2

    .line 5
    :cond_0
    aget-object v5, v0, v3

    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    aput v5, v1, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_4

    const/4 v3, 0x0

    .line 6
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 7
    aget-object v4, v0, v3

    iget v4, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->a:I

    if-nez v4, :cond_3

    aget v4, v1, v3

    aget-object v5, v0, v3

    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$f;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$f;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->h(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->h(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->k(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 3
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->k(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->l(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->m(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public size()I
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    .line 2
    array-length v1, v0

    new-array v1, v1, [I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move-wide v8, v6

    const/4 v5, 0x0

    :goto_0
    const/4 v10, 0x2

    if-ge v5, v10, :cond_5

    move-wide v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3
    :goto_1
    array-length v10, v0

    if-ge v8, v10, :cond_0

    .line 4
    aget-object v10, v0, v8

    iget v10, v10, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->a:I

    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 5
    aget-object v10, v0, v8

    iget v10, v10, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    aput v10, v1, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    if-eqz v9, :cond_3

    move-wide v9, v2

    const/4 v8, 0x0

    .line 6
    :goto_2
    array-length v11, v0

    if-ge v8, v11, :cond_2

    .line 7
    aget-object v11, v0, v8

    iget v11, v11, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->a:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    .line 8
    aget v11, v1, v8

    aget-object v12, v0, v8

    iget v12, v12, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->b:I

    if-eq v11, v12, :cond_1

    const-wide/16 v8, -0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move-wide v8, v9

    goto :goto_3

    :cond_3
    move-wide v8, v2

    :goto_3
    cmp-long v10, v8, v6

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    cmp-long v1, v8, v6

    if-eqz v1, :cond_9

    .line 9
    array-length v1, v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_6

    aget-object v6, v0, v5

    .line 10
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 11
    :cond_6
    array-length v1, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v1, :cond_7

    aget-object v6, v0, v5

    .line 12
    iget v6, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->a:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 13
    :cond_7
    array-length v1, v0

    :goto_7
    if-ge v4, v1, :cond_8

    aget-object v5, v0, v4

    .line 14
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    move-wide v6, v2

    :cond_9
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v6, v0

    if-lez v2, :cond_a

    const v0, 0x7fffffff

    return v0

    :cond_a
    long-to-int v0, v6

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$i;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$i;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->f:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method
