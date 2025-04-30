.class public abstract Lkotlinx/coroutines/o1;
.super Lkotlinx/coroutines/p1;
.source "EventLoop.common.kt"

# interfaces
.implements Lkotlinx/coroutines/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/o1$c;,
        Lkotlinx/coroutines/o1$a;,
        Lkotlinx/coroutines/o1$b;,
        Lkotlinx/coroutines/o1$d;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,529:1\n51#2:530\n52#2,7:532\n20#3:531\n155#4,2:539\n155#4,2:541\n155#4,2:544\n1#5:543\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n*L\n263#1:530\n263#1:532,7\n263#1:531\n293#1:539,2\n320#1:541,2\n338#1:544,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0008 \u0018\u00002\u00020\u00012\u00020\u0002:\u0004789:B\u0007\u00a2\u0006\u0004\u00086\u0010\rJ\u001b\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\rJ\u000f\u0010\u0018\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\rJ%\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u00112\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\u00112\n\u0010\u001e\u001a\u00060\u0003j\u0002`\u0004H\u0004\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\n\u0010\u001e\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008&\u0010\'J\u0019\u0010(\u001a\u00020\u000b2\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008(\u0010)J\u001d\u0010*\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\u000bH\u0004\u00a2\u0006\u0004\u0008,\u0010\rR$\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00068B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u0016\u00103\u001a\u00020\u00118T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010#R\u0016\u00105\u001a\u00020\u00068T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u0010/\u00a8\u0006;"
    }
    d2 = {
        "Lkotlinx/coroutines/o1;",
        "Lkotlinx/coroutines/p1;",
        "Lkotlinx/coroutines/b1;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "task",
        "",
        "Y",
        "(Ljava/lang/Runnable;)Z",
        "W",
        "()Ljava/lang/Runnable;",
        "",
        "V",
        "()V",
        "Lkotlinx/coroutines/o1$c;",
        "g0",
        "(Lkotlinx/coroutines/o1$c;)Z",
        "",
        "now",
        "delayedTask",
        "",
        "c0",
        "(JLkotlinx/coroutines/o1$c;)I",
        "Z",
        "shutdown",
        "timeMillis",
        "Lkotlinx/coroutines/p;",
        "continuation",
        "g",
        "(JLkotlinx/coroutines/p;)V",
        "block",
        "Lkotlinx/coroutines/j1;",
        "d0",
        "(JLjava/lang/Runnable;)Lkotlinx/coroutines/j1;",
        "L",
        "()J",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "dispatch",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V",
        "X",
        "(Ljava/lang/Runnable;)V",
        "b0",
        "(JLkotlinx/coroutines/o1$c;)V",
        "a0",
        "value",
        "isCompleted",
        "()Z",
        "f0",
        "(Z)V",
        "F",
        "nextTime",
        "I",
        "isEmpty",
        "<init>",
        "a",
        "b",
        "c",
        "d",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _isCompleted:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _queue:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/o1;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/o1;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/o1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/p1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/o1;->_queue:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lkotlinx/coroutines/o1;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lkotlinx/coroutines/o1;->_isCompleted:I

    return-void
.end method

.method public static final synthetic S(Lkotlinx/coroutines/o1;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/o1;->isCompleted()Z

    move-result p0

    return p0
.end method

.method private final V()V
    .locals 4

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/o1;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lkotlinx/coroutines/o1;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {}, Lkotlinx/coroutines/r1;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/internal/v;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Lkotlinx/coroutines/internal/v;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/v;->d()Z

    return-void

    .line 6
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/r1;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-void

    .line 7
    :cond_4
    new-instance v1, Lkotlinx/coroutines/internal/v;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/internal/v;-><init>(IZ)V

    .line 8
    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/Object;)I

    .line 9
    sget-object v2, Lkotlinx/coroutines/o1;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void
.end method

.method private final W()Ljava/lang/Runnable;
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_queue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    instance-of v2, v0, Lkotlinx/coroutines/internal/v;

    if-eqz v2, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/v;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/v;->l()Ljava/lang/Object;

    move-result-object v2

    .line 4
    sget-object v3, Lkotlinx/coroutines/internal/v;->t:Lkotlinx/coroutines/internal/i0;

    if-eq v2, v3, :cond_2

    check-cast v2, Ljava/lang/Runnable;

    return-object v2

    .line 5
    :cond_2
    sget-object v2, Lkotlinx/coroutines/o1;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/v;->k()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/r1;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v2

    if-ne v0, v2, :cond_4

    return-object v1

    .line 7
    :cond_4
    sget-object v2, Lkotlinx/coroutines/o1;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method private final Y(Ljava/lang/Runnable;)Z
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_queue:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/o1;->isCompleted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lkotlinx/coroutines/o1;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/v;

    if-eqz v3, :cond_6

    .line 5
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/v;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 6
    :cond_4
    sget-object v1, Lkotlinx/coroutines/o1;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/v;->k()Lkotlinx/coroutines/internal/v;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    .line 7
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/r1;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v3

    if-ne v0, v3, :cond_7

    return v2

    .line 8
    :cond_7
    new-instance v2, Lkotlinx/coroutines/internal/v;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/internal/v;-><init>(IZ)V

    .line 9
    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/Object;)I

    .line 10
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/Object;)I

    .line 11
    sget-object v3, Lkotlinx/coroutines/o1;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method private final Z()V
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->b()J

    move-result-wide v0

    .line 2
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/o1;->_delayed:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/o1$d;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/q0;->m()Lkotlinx/coroutines/internal/r0;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/o1$c;

    :goto_1
    if-nez v2, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/p1;->P(JLkotlinx/coroutines/o1$c;)V

    goto :goto_0
.end method

.method private final c0(JLkotlinx/coroutines/o1$c;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/o1;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/o1$d;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lkotlinx/coroutines/o1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    new-instance v2, Lkotlinx/coroutines/o1$d;

    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/o1$d;-><init>(J)V

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_delayed:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/o1$d;

    .line 5
    :cond_1
    invoke-virtual {p3, p1, p2, v0, p0}, Lkotlinx/coroutines/o1$c;->a0(JLkotlinx/coroutines/o1$d;Lkotlinx/coroutines/o1;)I

    move-result p1

    return p1
.end method

.method private final f0(Z)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/coroutines/o1;->_isCompleted:I

    return-void
.end method

.method private final g0(Lkotlinx/coroutines/o1$c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/o1$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->h()Lkotlinx/coroutines/internal/r0;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/o1$c;

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final isCompleted()Z
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/o1;->_isCompleted:I

    return v0
.end method


# virtual methods
.method protected F()J
    .locals 6

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/n1;->F()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_queue:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/internal/v;

    if-eqz v1, :cond_6

    check-cast v0, Lkotlinx/coroutines/internal/v;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/v;->h()Z

    move-result v0

    if-nez v0, :cond_2

    return-wide v2

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/o1$d;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->h()Lkotlinx/coroutines/internal/r0;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/o1$c;

    :goto_1
    if-nez v0, :cond_4

    return-wide v4

    .line 5
    :cond_4
    iget-wide v0, v0, Lkotlinx/coroutines/o1$c;->a:J

    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lkotlinx/coroutines/b;->b()J

    move-result-wide v4

    :goto_2
    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/r1;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-ne v0, v1, :cond_7

    return-wide v4

    :cond_7
    return-wide v2
.end method

.method protected I()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/o1$d;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_queue:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 5
    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/v;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlinx/coroutines/internal/v;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/v;->h()Z

    move-result v1

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/r1;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public L()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->M()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/o1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/o1$d;

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->g()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lkotlinx/coroutines/b;->b()J

    move-result-wide v3

    .line 5
    :cond_2
    :goto_0
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->e()Lkotlinx/coroutines/internal/r0;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-nez v5, :cond_3

    monitor-exit v0

    goto :goto_2

    .line 7
    :cond_3
    :try_start_1
    check-cast v5, Lkotlinx/coroutines/o1$c;

    .line 8
    invoke-virtual {v5, v3, v4}, Lkotlinx/coroutines/o1$c;->k0(J)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    .line 9
    invoke-direct {p0, v5}, Lkotlinx/coroutines/o1;->Y(Ljava/lang/Runnable;)Z

    move-result v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 10
    invoke-virtual {v0, v8}, Lkotlinx/coroutines/internal/q0;->k(I)Lkotlinx/coroutines/internal/r0;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    .line 11
    :cond_5
    monitor-exit v0

    .line 12
    :goto_2
    check-cast v6, Lkotlinx/coroutines/o1$c;

    if-nez v6, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    throw v1

    .line 14
    :cond_6
    :goto_3
    invoke-direct {p0}, Lkotlinx/coroutines/o1;->W()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 16
    :cond_7
    invoke-virtual {p0}, Lkotlinx/coroutines/o1;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public final X(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/o1;->Y(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/p1;->R()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/x0;->f:Lkotlinx/coroutines/x0;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/o1;->X(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected final a0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lkotlinx/coroutines/o1;->_queue:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/o1;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final b0(JLkotlinx/coroutines/o1$c;)V
    .locals 2
    .param p3    # Lkotlinx/coroutines/o1$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/o1;->c0(JLkotlinx/coroutines/o1$c;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/p1;->P(JLkotlinx/coroutines/o1$c;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p3}, Lkotlinx/coroutines/o1;->g0(Lkotlinx/coroutines/o1$c;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/p1;->R()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final d0(JLjava/lang/Runnable;)Lkotlinx/coroutines/j1;
    .locals 3
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lkotlinx/coroutines/r1;->d(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 2
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->b()J

    move-result-wide v0

    .line 3
    :goto_0
    new-instance v2, Lkotlinx/coroutines/o1$b;

    add-long/2addr p1, v0

    invoke-direct {v2, p1, p2, p3}, Lkotlinx/coroutines/o1$b;-><init>(JLjava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/o1;->b0(JLkotlinx/coroutines/o1$c;)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object v2, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    :goto_1
    return-object v2
.end method

.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/o1;->X(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(JLkotlinx/coroutines/p;)V
    .locals 3
    .param p3    # Lkotlinx/coroutines/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/p<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lkotlinx/coroutines/r1;->d(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 2
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->b()J

    move-result-wide v0

    .line 3
    :goto_0
    new-instance v2, Lkotlinx/coroutines/o1$a;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lkotlinx/coroutines/o1$a;-><init>(Lkotlinx/coroutines/o1;JLkotlinx/coroutines/p;)V

    .line 4
    invoke-static {p3, v2}, Lkotlinx/coroutines/s;->a(Lkotlinx/coroutines/p;Lkotlinx/coroutines/j1;)V

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/o1;->b0(JLkotlinx/coroutines/o1$c;)V

    :cond_1
    return-void
.end method

.method public p(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/j1;
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/b1$a;->b(Lkotlinx/coroutines/b1;JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/j1;

    move-result-object p1

    return-object p1
.end method

.method protected shutdown()V
    .locals 5

    .line 1
    sget-object v0, Lkotlinx/coroutines/g3;->a:Lkotlinx/coroutines/g3;

    invoke-virtual {v0}, Lkotlinx/coroutines/g3;->c()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/o1;->f0(Z)V

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/o1;->V()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/o1;->L()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/o1;->Z()V

    return-void
.end method

.method public v(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/b1$a;->a(Lkotlinx/coroutines/b1;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
