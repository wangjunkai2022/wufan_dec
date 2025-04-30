.class public Lorg/jboss/netty/util/internal/g;
.super Ljava/lang/Object;
.source "SharedResourceMisuseDetector.java"


# static fields
.field private static final c:I = 0x100


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/util/internal/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_0
    return-void
.end method
