.class public abstract Lkotlinx/coroutines/o1$c;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lkotlinx/coroutines/j1;
.implements Lkotlinx/coroutines/internal/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/coroutines/o1$c;",
        ">;",
        "Lkotlinx/coroutines/j1;",
        "Lkotlinx/coroutines/internal/r0;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,529:1\n64#2:530\n65#2,7:532\n20#3:531\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n433#1:530\n433#1:532,7\n433#1:531\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008 \u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u00020\u00052\u00020\u0006B\u000f\u0012\u0006\u0010+\u001a\u00020\n\u00a2\u0006\u0004\u0008,\u0010-J\u0011\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004H\u0096\u0002J\u000e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0013J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010!\u001a\u00020\u00088\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R0\u0010(\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\"2\u000c\u0010#\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\"8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0016\u0010+\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "kotlinx/coroutines/o1$c",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "",
        "Lkotlinx/coroutines/o1$c;",
        "Lkotlinx/coroutines/j1;",
        "Lkotlinx/coroutines/internal/r0;",
        "other",
        "",
        "Y",
        "",
        "now",
        "",
        "k0",
        "Lkotlinx/coroutines/o1$d;",
        "delayed",
        "Lkotlinx/coroutines/o1;",
        "eventLoop",
        "a0",
        "",
        "dispose",
        "",
        "toString",
        "",
        "b",
        "Ljava/lang/Object;",
        "_heap",
        "c",
        "I",
        "getIndex",
        "()I",
        "U",
        "(I)V",
        "index",
        "Lkotlinx/coroutines/internal/q0;",
        "value",
        "A",
        "()Lkotlinx/coroutines/internal/q0;",
        "m",
        "(Lkotlinx/coroutines/internal/q0;)V",
        "heap",
        "a",
        "J",
        "nanoTime",
        "<init>",
        "(J)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public a:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lkotlinx/coroutines/o1$c;->a:J

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lkotlinx/coroutines/o1$c;->c:I

    return-void
.end method


# virtual methods
.method public A()Lkotlinx/coroutines/internal/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/q0<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/o1$c;->b:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/q0;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/q0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public U(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/coroutines/o1$c;->c:I

    return-void
.end method

.method public Y(Lkotlinx/coroutines/o1$c;)I
    .locals 4
    .param p1    # Lkotlinx/coroutines/o1$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/o1$c;->a:J

    iget-wide v2, p1, Lkotlinx/coroutines/o1$c;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final declared-synchronized a0(JLkotlinx/coroutines/o1$d;Lkotlinx/coroutines/o1;)I
    .locals 7
    .param p3    # Lkotlinx/coroutines/o1$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/o1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/o1$c;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/r1;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    monitor-exit p0

    return p1

    .line 2
    :cond_0
    :try_start_1
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/q0;->e()Lkotlinx/coroutines/internal/r0;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/o1$c;

    .line 4
    invoke-static {p4}, Lkotlinx/coroutines/o1;->S(Lkotlinx/coroutines/o1;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return p1

    :cond_1
    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    .line 5
    :try_start_4
    iput-wide p1, p3, Lkotlinx/coroutines/o1$d;->b:J

    goto :goto_1

    .line 6
    :cond_2
    iget-wide v3, v0, Lkotlinx/coroutines/o1$c;->a:J

    sub-long v5, v3, p1

    cmp-long p4, v5, v1

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    move-wide p1, v3

    .line 7
    :goto_0
    iget-wide v3, p3, Lkotlinx/coroutines/o1$d;->b:J

    sub-long v3, p1, v3

    cmp-long p4, v3, v1

    if-lez p4, :cond_4

    iput-wide p1, p3, Lkotlinx/coroutines/o1$d;->b:J

    .line 8
    :cond_4
    :goto_1
    iget-wide p1, p0, Lkotlinx/coroutines/o1$c;->a:J

    iget-wide v3, p3, Lkotlinx/coroutines/o1$d;->b:J

    sub-long/2addr p1, v3

    cmp-long p4, p1, v1

    if-gez p4, :cond_5

    iput-wide v3, p0, Lkotlinx/coroutines/o1$c;->a:J

    .line 9
    :cond_5
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/q0;->a(Lkotlinx/coroutines/internal/r0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 p1, 0x0

    .line 11
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_6
    monitor-exit p3

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o1$c;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/o1$c;->Y(Lkotlinx/coroutines/o1$c;)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/o1$c;->b:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/r1;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    instance-of v1, v0, Lkotlinx/coroutines/o1$d;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/o1$d;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/q0;->j(Lkotlinx/coroutines/internal/r0;)Z

    .line 4
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/r1;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/o1$c;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/o1$c;->c:I

    return v0
.end method

.method public final k0(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/o1$c;->a:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Lkotlinx/coroutines/internal/q0;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/q0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/q0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/o1$c;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/r1;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/o1$c;->b:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/o1$c;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
