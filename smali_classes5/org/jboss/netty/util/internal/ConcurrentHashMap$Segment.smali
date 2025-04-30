.class final Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1bc7a7ae5c5faaabL


# instance fields
.field volatile transient a:I

.field b:I

.field c:I

.field volatile transient d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final e:F


# direct methods
.method constructor <init>(IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e:F

    .line 3
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->n([Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;)V

    return-void
.end method

.method private static e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static f(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-array p0, p0, [Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/Object;I)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method b(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    :goto_1
    if-eqz v4, :cond_2

    .line 3
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {p0, v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->i(Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;)Ljava/lang/Object;

    move-result-object v5

    .line 5
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    iget-object v4, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    if-ne v1, p2, :cond_1

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->i(Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method clear()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    const/4 v3, 0x0

    .line 5
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    .line 7
    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method d(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method g(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$c;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;TV;)",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;-><init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$c;Ljava/lang/Object;)V

    return-object v0
.end method

.method h(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I

    add-int/lit8 v1, v0, 0x1

    .line 3
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c:I

    if-le v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->j()I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 5
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 7
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 8
    aget-object v3, v0, v2

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 9
    iget v5, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    if-ne v5, p2, :cond_1

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    :cond_1
    iget-object v4, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p4, :cond_4

    .line 12
    invoke-virtual {v4, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    .line 13
    iget v4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    .line 14
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->g(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$c;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object p1

    aput-object p1, v0, v2

    .line 15
    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p4

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method i(Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method j()I
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-lt v1, v3, :cond_0

    return v2

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 3
    invoke-static {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object v1

    .line 4
    array-length v3, v1

    int-to-float v3, v3

    iget v4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c:I

    .line 5
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 6
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v6, v0, v2

    if-eqz v6, :cond_5

    .line 7
    iget-object v7, v6, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 8
    iget v8, v6, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    and-int/2addr v8, v3

    if-nez v7, :cond_1

    .line 9
    aput-object v6, v1, v8

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 10
    iget v10, v7, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    and-int/2addr v10, v3

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 11
    :cond_2
    iget-object v7, v7, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_1

    .line 12
    :cond_3
    aput-object v9, v1, v8

    :goto_2
    if-eq v6, v9, :cond_5

    .line 13
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 14
    :cond_4
    iget v8, v6, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    and-int v10, v8, v3

    .line 15
    aget-object v11, v1, v10

    .line 16
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v7, v8, v11, v12}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->g(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$c;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object v7

    aput-object v7, v1, v10

    .line 17
    :goto_3
    iget-object v6, v6, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_6
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    return v5
.end method

.method k(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 4
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 5
    aget-object v3, v1, v2

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 6
    iget-object v5, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a:Ljava/lang/Object;

    if-eq p1, v5, :cond_1

    if-nez p4, :cond_0

    iget v5, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    if-ne p2, v5, :cond_0

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    :cond_0
    iget-object v4, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-eqz v4, :cond_5

    .line 8
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object p2

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 10
    :cond_2
    iget p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    .line 11
    iget-object p1, v4, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    :goto_1
    if-eq v3, v4, :cond_4

    .line 12
    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 13
    :cond_3
    iget p4, v3, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p3, p4, p1, v5}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->g(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$c;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object p1

    .line 14
    :goto_2
    iget-object v3, v3, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_1

    .line 15
    :cond_4
    aput-object p1, v1, v2

    .line 16
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    .line 17
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method l(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method m(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->b:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method n([Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->c:I

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    return-void
.end method
