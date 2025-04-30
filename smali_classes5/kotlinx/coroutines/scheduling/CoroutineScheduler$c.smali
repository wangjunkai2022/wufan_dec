.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;
.super Ljava/lang/Thread;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,983:1\n288#2:984\n289#2:987\n276#2:988\n290#2,4:989\n295#2:993\n285#2,2:996\n271#2:999\n280#2:1000\n274#2:1001\n271#2:1002\n468#3,2:985\n1#4:994\n85#5:995\n20#6:998\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n646#1:984\n646#1:987\n646#1:988\n646#1:989,4\n660#1:993\n764#1:996,2\n812#1:999\n838#1:1000\n838#1:1001\n908#1:1002\n646#1:985,2\n747#1:995\n808#1:998\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u000b\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008D\u0010EB\u0011\u0008\u0016\u0012\u0006\u00108\u001a\u00020\u000e\u00a2\u0006\u0004\u0008D\u0010FJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0017\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0007J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0011J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0019J\u0015\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0007J\u0015\u0010$\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000e\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010&\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u0002\u00a2\u0006\u0004\u0008&\u0010\u0019R\u0016\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010+\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010*R\u0016\u0010-\u001a\u00020\u001e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010,R\u0016\u00100\u001a\u00020.8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010/R\u0016\u00103\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u00102R\u0014\u00107\u001a\u0002048\u00c6\u0002@\u0006\u00a2\u0006\u0006\u001a\u0004\u00085\u00106R*\u00109\u001a\u00020\u000e2\u0006\u00108\u001a\u00020\u000e8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010*\u001a\u0004\u0008\'\u0010:\"\u0004\u0008;\u0010\u0011R$\u0010=\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u0016\u0010C\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u00102\u00a8\u0006G"
    }
    d2 = {
        "kotlinx/coroutines/scheduling/CoroutineScheduler$c",
        "Ljava/lang/Thread;",
        "",
        "q",
        "()Z",
        "",
        "n",
        "()V",
        "r",
        "j",
        "Lkotlinx/coroutines/scheduling/i;",
        "task",
        "c",
        "(Lkotlinx/coroutines/scheduling/i;)V",
        "",
        "taskMode",
        "b",
        "(I)V",
        "a",
        "l",
        "v",
        "mode",
        "i",
        "scanLocalQueue",
        "d",
        "(Z)Lkotlinx/coroutines/scheduling/i;",
        "m",
        "()Lkotlinx/coroutines/scheduling/i;",
        "blockingOnly",
        "u",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "newState",
        "t",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z",
        "run",
        "upperBound",
        "k",
        "(I)I",
        "e",
        "f",
        "Z",
        "mayHaveLocalTasks",
        "I",
        "rngState",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "state",
        "Lkotlinx/coroutines/scheduling/m;",
        "Lkotlinx/coroutines/scheduling/m;",
        "localQueue",
        "",
        "J",
        "minDelayUntilStealableTaskNs",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "h",
        "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "scheduler",
        "index",
        "indexInArray",
        "()I",
        "o",
        "",
        "nextParkedWorker",
        "Ljava/lang/Object;",
        "g",
        "()Ljava/lang/Object;",
        "p",
        "(Ljava/lang/Object;)V",
        "terminationDeadline",
        "<init>",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V",
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
.field static final synthetic h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lkotlinx/coroutines/scheduling/m;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:I

.field public f:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field final synthetic g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field volatile synthetic workerCtl:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3
    new-instance p1, Lkotlinx/coroutines/scheduling/m;

    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/m;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    .line 4
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->workerCtl:I

    .line 6
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:Lkotlinx/coroutines/internal/i0;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->nextParkedWorker:Ljava/lang/Object;

    .line 7
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p1}, Lkotlin/random/Random$Default;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->e:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V

    .line 9
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->o(I)V

    return-void
.end method

.method private final a(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq p1, v0, :cond_4

    .line 5
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_4
    return-void
.end method

.method private final b(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->t(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->B()V

    :cond_1
    return-void
.end method

.method private final c(Lkotlinx/coroutines/scheduling/i;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/i;->b:Lkotlinx/coroutines/scheduling/j;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/j;->r()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->i(I)V

    .line 3
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b(I)V

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->y(Lkotlinx/coroutines/scheduling/i;)V

    .line 5
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a(I)V

    return-void
.end method

.method private final d(Z)Lkotlinx/coroutines/scheduling/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->k(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->m()Lkotlinx/coroutines/scheduling/i;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    .line 3
    :cond_2
    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/m;->h()Lkotlinx/coroutines/scheduling/i;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p1, :cond_6

    .line 4
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->m()Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    return-object p1

    :cond_4
    return-object v1

    .line 5
    :cond_5
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->m()Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    if-nez p1, :cond_7

    .line 6
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->u(Z)Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method private final i(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->c:J

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_3

    .line 3
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_2
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_3
    return-void
.end method

.method private final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:Lkotlinx/coroutines/internal/i0;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final l()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v4, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->c:J

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->c:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 4
    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->c:J

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->v()V

    :cond_1
    return-void
.end method

.method private final m()Lkotlinx/coroutines/scheduling/i;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->k(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/u;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/u;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    :cond_0
    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/u;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/u;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    :cond_2
    return-object v0
.end method

.method private final n()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 1
    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v2, v3, :cond_3

    .line 2
    iget-boolean v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Z

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->e(Z)Lkotlinx/coroutines/scheduling/i;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    iput-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->d:J

    .line 4
    invoke-direct {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->c(Lkotlinx/coroutines/scheduling/i;)V

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Z

    .line 6
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->d:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 7
    :cond_1
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->t(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 9
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->d:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 10
    iput-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->d:J

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->r()V

    goto :goto_1

    .line 12
    :cond_3
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->t(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    return-void
.end method

.method private final q()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 3
    :cond_1
    iget-wide v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide v4, 0x7ffffc0000000000L

    and-long/2addr v4, v6

    const/16 v1, 0x2a

    shr-long/2addr v4, v1

    long-to-int v1, v4

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-wide v4, 0x40000000000L

    sub-long v8, v6, v4

    .line 4
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_0

    :cond_3
    :goto_2
    return v2
.end method

.method private final r()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->v(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;)Z

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/m;->f()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->workerCtl:I

    .line 5
    :goto_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->workerCtl:I

    if-ne v1, v0, :cond_5

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v1, v2, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->t(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 9
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l()V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private final u(Z)Lkotlinx/coroutines/scheduling/i;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/m;->f()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2
    :cond_2
    :goto_1
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 3
    iget-wide v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v1, v4, :cond_3

    return-object v5

    .line 4
    :cond_3
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->k(I)I

    move-result v4

    .line 5
    iget-object v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-wide v7, 0x7fffffffffffffffL

    move-wide v10, v7

    const/4 v9, 0x0

    :goto_2
    const-wide/16 v12, 0x0

    if-ge v9, v1, :cond_b

    add-int/2addr v4, v3

    if-le v4, v1, :cond_4

    const/4 v4, 0x1

    .line 6
    :cond_4
    iget-object v14, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v14, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;

    if-eqz v14, :cond_a

    if-eq v14, v0, :cond_a

    .line 7
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {v15}, Lkotlinx/coroutines/scheduling/m;->f()I

    move-result v15

    if-nez v15, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    .line 8
    iget-object v15, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    iget-object v14, v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {v15, v14}, Lkotlinx/coroutines/scheduling/m;->k(Lkotlinx/coroutines/scheduling/m;)J

    move-result-wide v14

    goto :goto_5

    .line 9
    :cond_8
    iget-object v15, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    iget-object v14, v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {v15, v14}, Lkotlinx/coroutines/scheduling/m;->l(Lkotlinx/coroutines/scheduling/m;)J

    move-result-wide v14

    :goto_5
    const-wide/16 v16, -0x1

    cmp-long v18, v14, v16

    if-nez v18, :cond_9

    .line 10
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/m;->h()Lkotlinx/coroutines/scheduling/i;

    move-result-object v1

    return-object v1

    :cond_9
    cmp-long v16, v14, v12

    if-lez v16, :cond_a

    .line 11
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_b
    cmp-long v1, v10, v7

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move-wide v10, v12

    .line 12
    :goto_6
    iput-wide v10, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->d:J

    return-object v5
.end method

.method private final v()V
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-wide v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v3, v2

    .line 5
    iget v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v3, v2, :cond_1

    monitor-exit v1

    return-void

    .line 6
    :cond_1
    :try_start_2
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    .line 7
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f()I

    move-result v2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->o(I)V

    .line 9
    invoke-virtual {v0, p0, v2, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->w(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;II)V

    .line 10
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v6

    and-long/2addr v4, v6

    long-to-int v3, v4

    if-eq v3, v2, :cond_3

    .line 11
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;

    .line 12
    iget-object v5, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v4, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->o(I)V

    .line 14
    invoke-virtual {v0, v4, v3, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->w(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;II)V

    .line 15
    :cond_3
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 17
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-void

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final e(Z)Lkotlinx/coroutines/scheduling/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->d(Z)Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/m;->h()Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/u;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/i;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/u;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/i;

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->u(Z)Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->indexInArray:I

    return v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final h()Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-object v0
.end method

.method public final k(I)I
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->e:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 2
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->e:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 3
    rem-int/2addr v0, p1

    return v0
.end method

.method public final o(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->indexInArray:I

    return-void
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->n()V

    return-void
.end method

.method public final t(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 6
    .param p1    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 4
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2
    return v1
.end method
