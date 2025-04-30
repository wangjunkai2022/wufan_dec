.class public abstract Lorg/jboss/netty/channel/socket/nio/a;
.super Ljava/lang/Object;
.source "AbstractNioBossPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/h;
.implements Lorg/jboss/netty/util/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/jboss/netty/channel/socket/nio/g;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/channel/socket/nio/h<",
        "TE;>;",
        "Lorg/jboss/netty/util/b;"
    }
.end annotation


# instance fields
.field private final a:[Lorg/jboss/netty/channel/socket/nio/g;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/Executor;

.field private volatile d:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/a;-><init>(Ljava/util/concurrent/Executor;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;IZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "bossExecutor"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lez p2, :cond_1

    .line 5
    new-array p2, p2, [Lorg/jboss/netty/channel/socket/nio/g;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/a;->a:[Lorg/jboss/netty/channel/socket/nio/g;

    .line 6
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/a;->c:Ljava/util/concurrent/Executor;

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->f()V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bossCount ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "must be a positive integer."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->shutdown()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/a;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/jboss/netty/util/internal/e;->c([Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->a:[Lorg/jboss/netty/channel/socket/nio/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/p;->rebuildSelector()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Lorg/jboss/netty/channel/socket/nio/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->a:[Lorg/jboss/netty/channel/socket/nio/g;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/a;->a:[Lorg/jboss/netty/channel/socket/nio/g;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->d:Z

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/a;->a:[Lorg/jboss/netty/channel/socket/nio/g;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/a;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/socket/nio/a;->g(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/g;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was done before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected abstract g(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TE;"
        }
    .end annotation
.end method

.method public shutdown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->a:[Lorg/jboss/netty/channel/socket/nio/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/p;->shutdown()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
