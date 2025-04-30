.class public Lorg/jboss/netty/util/c;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Lorg/jboss/netty/util/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/c$a;,
        Lorg/jboss/netty/util/c$b;
    }
.end annotation


# static fields
.field private static final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final l:Lorg/jboss/netty/util/internal/g;


# instance fields
.field private final a:Lorg/jboss/netty/util/c$b;

.field final b:Ljava/lang/Thread;

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:J

.field final e:J

.field final f:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Lorg/jboss/netty/util/c$a;",
            ">;"
        }
    .end annotation
.end field

.field final g:[Lorg/jboss/netty/util/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/f<",
            "Lorg/jboss/netty/util/c$a;",
            ">;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Ljava/util/concurrent/locks/ReadWriteLock;

.field volatile j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/c;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v0, Lorg/jboss/netty/util/internal/g;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/g;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/c;->l:Lorg/jboss/netty/util/internal/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/util/c;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;I)V
    .locals 6

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/c;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/jboss/netty/util/c;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    const/16 v5, 0x200

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 5
    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/c;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lorg/jboss/netty/util/c$b;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/c$b;-><init>(Lorg/jboss/netty/util/c;)V

    iput-object v0, p0, Lorg/jboss/netty/util/c;->a:Lorg/jboss/netty/util/c$b;

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/util/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    const-string v1, "threadFactory"

    .line 10
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "unit"

    .line 11
    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    if-lez p5, :cond_1

    .line 12
    invoke-static {p5}, Lorg/jboss/netty/util/c;->c(I)[Ljava/util/Set;

    move-result-object p5

    iput-object p5, p0, Lorg/jboss/netty/util/c;->f:[Ljava/util/Set;

    .line 13
    invoke-static {p5}, Lorg/jboss/netty/util/c;->b([Ljava/util/Set;)[Lorg/jboss/netty/util/internal/f;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/util/c;->g:[Lorg/jboss/netty/util/internal/f;

    .line 14
    array-length v1, p5

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/util/c;->h:I

    .line 15
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iput-wide p2, p0, Lorg/jboss/netty/util/c;->e:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p2, v1

    if-eqz v3, :cond_0

    .line 16
    array-length v3, p5

    int-to-long v3, v3

    div-long/2addr v1, v3

    cmp-long v3, p2, v1

    if-gez v3, :cond_0

    .line 17
    array-length p4, p5

    int-to-long p4, p4

    mul-long p2, p2, p4

    iput-wide p2, p0, Lorg/jboss/netty/util/c;->d:J

    .line 18
    new-instance p2, Lorg/jboss/netty/util/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Hashed wheel timer #"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lorg/jboss/netty/util/c;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/jboss/netty/util/e;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/util/c;->b:Ljava/lang/Thread;

    .line 19
    sget-object p1, Lorg/jboss/netty/util/c;->l:Lorg/jboss/netty/util/internal/g;

    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/g;->b()V

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tickDuration is too long: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ticksPerWheel must be greater than 0: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "tickDuration must be greater than 0: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b([Ljava/util/Set;)[Lorg/jboss/netty/util/internal/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "Lorg/jboss/netty/util/c$a;",
            ">;)[",
            "Lorg/jboss/netty/util/internal/f<",
            "Lorg/jboss/netty/util/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    new-array v0, v0, [Lorg/jboss/netty/util/internal/f;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/util/internal/f;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c(I)[Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Set<",
            "Lorg/jboss/netty/util/c$a;",
            ">;"
        }
    .end annotation

    if-lez p0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_1

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/util/c;->d(I)I

    move-result p0

    .line 2
    new-array v0, p0, [Ljava/util/Set;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 3
    new-instance v2, Lorg/jboss/netty/util/MapBackedSet;

    new-instance v3, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    const/16 v4, 0x10

    const v5, 0x3f733333    # 0.95f

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>(IFI)V

    invoke-direct {v2, v3}, Lorg/jboss/netty/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ticksPerWheel may not be greater than 2^30: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ticksPerWheel must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static d(I)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lorg/jboss/netty/util/h;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/f;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "task"

    .line 2
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "unit"

    .line 3
    invoke-static {p4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/util/c;->f()V

    .line 5
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    .line 6
    new-instance p4, Lorg/jboss/netty/util/c$a;

    add-long/2addr v0, p2

    invoke-direct {p4, p0, p1, v0, v1}, Lorg/jboss/netty/util/c$a;-><init>(Lorg/jboss/netty/util/c;Lorg/jboss/netty/util/h;J)V

    .line 7
    invoke-virtual {p0, p4, p2, p3}, Lorg/jboss/netty/util/c;->e(Lorg/jboss/netty/util/c$a;J)V

    return-object p4
.end method

.method e(Lorg/jboss/netty/util/c$a;J)V
    .locals 11

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/util/c;->e:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 2
    :cond_0
    iget-wide v2, p0, Lorg/jboss/netty/util/c;->d:J

    rem-long v4, p2, v2

    .line 3
    rem-long v6, p2, v0

    .line 4
    div-long/2addr v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 5
    div-long v6, p2, v2

    rem-long/2addr p2, v2

    cmp-long v2, p2, v8

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    int-to-long p2, v0

    sub-long/2addr v6, p2

    .line 6
    iget-object p2, p0, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 7
    :try_start_0
    iget p2, p0, Lorg/jboss/netty/util/c;->j:I

    int-to-long p2, p2

    add-long/2addr p2, v4

    iget v0, p0, Lorg/jboss/netty/util/c;->h:I

    int-to-long v0, v0

    and-long/2addr p2, v0

    long-to-int p3, p2

    .line 8
    iput p3, p1, Lorg/jboss/netty/util/c$a;->c:I

    .line 9
    iput-wide v6, p1, Lorg/jboss/netty/util/c$a;->d:J

    .line 10
    iget-object p2, p0, Lorg/jboss/netty/util/c;->f:[Ljava/util/Set;

    aget-object p2, p2, p3

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot be started once stopped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lorg/jboss/netty/util/c;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public stop()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jboss/netty/util/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/util/c;->b:Ljava/lang/Thread;

    if-eq v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/util/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lorg/jboss/netty/util/c;->b:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lorg/jboss/netty/util/c;->b:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 6
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/util/c;->b:Ljava/lang/Thread;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 8
    :cond_2
    sget-object v1, Lorg/jboss/netty/util/c;->l:Lorg/jboss/netty/util/internal/g;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/g;->a()V

    .line 9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    iget-object v2, p0, Lorg/jboss/netty/util/c;->f:[Ljava/util/Set;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 11
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/jboss/netty/util/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".stop() cannot be called from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/jboss/netty/util/h;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
