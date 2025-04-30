.class final Lkotlinx/coroutines/flow/SharedFlowImpl;
.super Lkotlinx/coroutines/flow/internal/a;
.source "SharedFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/j;
.implements Lkotlinx/coroutines/flow/a;
.implements Lkotlinx/coroutines/flow/internal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/SharedFlowImpl$a;,
        Lkotlinx/coroutines/flow/SharedFlowImpl$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/a<",
        "Lkotlinx/coroutines/flow/q;",
        ">;",
        "Lkotlinx/coroutines/flow/j<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/a<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/j<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,701:1\n20#2:702\n20#2:704\n20#2:722\n20#2:725\n20#2:733\n20#2:743\n20#2:753\n329#3:703\n1#4:705\n96#5,2:706\n98#5,2:709\n100#5:712\n96#5,2:726\n98#5,2:729\n100#5:732\n96#5,2:746\n98#5,2:749\n100#5:752\n13536#6:708\n13537#6:711\n13536#6:728\n13537#6:731\n13536#6:748\n13537#6:751\n310#7,9:713\n319#7,2:723\n310#7,9:734\n319#7,2:744\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n327#1:702\n360#1:704\n454#1:722\n475#1:725\n595#1:733\n630#1:743\n658#1:753\n342#1:703\n422#1:706,2\n422#1:709,2\n422#1:712\n498#1:726,2\n498#1:729,2\n498#1:732\n645#1:746,2\n645#1:749,2\n645#1:752\n422#1:708\n422#1:711\n498#1:728\n498#1:731\n645#1:748\n645#1:751\n452#1:713,9\n452#1:723,2\n629#1:734,9\n629#1:744,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0008\u0016\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0008\u0012\u0004\u0012\u00028\u00000\u0006:\u0001FB\u001f\u0012\u0006\u0010J\u001a\u00020\u0015\u0012\u0006\u0010Y\u001a\u00020\u0015\u0012\u0006\u0010D\u001a\u00020C\u00a2\u0006\u0004\u0008e\u0010fJ\u0017\u0010\u0001\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u0001\u0010\tJ\u0017\u0010\n\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0012\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J9\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00132\u0010\u0010\u0014\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001b\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J(\u0010#\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\rH\u0002J\u0008\u0010$\u001a\u00020\u000bH\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010\u00102\u0006\u0010%\u001a\u00020\u0003H\u0002J\u0010\u0010\'\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u0003H\u0002J\u0012\u0010)\u001a\u0004\u0018\u00010\u00102\u0006\u0010(\u001a\u00020\rH\u0002J\u001b\u0010*\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010+J3\u0010.\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010,0\u00132\u0014\u0010-\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010,0\u0013H\u0002\u00a2\u0006\u0004\u0008.\u0010/J!\u00102\u001a\u00020\u000b2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u000000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103J\u0017\u00104\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u00084\u0010\tJ\u001b\u00105\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010\u001bJ\u000f\u00106\u001a\u00020\rH\u0000\u00a2\u0006\u0004\u00086\u00107J%\u00109\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010,0\u00132\u0006\u00108\u001a\u00020\rH\u0000\u00a2\u0006\u0004\u00089\u0010:J\u0008\u0010;\u001a\u00020\u0003H\u0014J\u001f\u0010=\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00132\u0006\u0010<\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008=\u0010>J\u0008\u0010?\u001a\u00020\u000bH\u0016J&\u0010F\u001a\u0008\u0012\u0004\u0012\u00028\u00000E2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020\u00152\u0006\u0010D\u001a\u00020CH\u0016R\u0016\u0010I\u001a\u00020\u00158B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0016\u0010J\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u0010\u000cR\u0016\u0010L\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010\u001aR\u0016\u0010N\u001a\u00020\u00158B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010HR\u0016\u0010P\u001a\u00020\r8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u00107R\u001c\u0010T\u001a\u0008\u0012\u0004\u0012\u00028\u00000Q8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010SR\u0016\u0010V\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010\u000cR\u0016\u0010X\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010\u000cR\u0016\u0010Y\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010\u000cR\u0016\u0010D\u001a\u00020C8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010]\u001a\u00020\r8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\\\u00107R\u0016\u0010_\u001a\u00020\r8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008^\u00107R \u0010b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0016\u0010d\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010\u001a\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006g"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/SharedFlowImpl;",
        "T",
        "Lkotlinx/coroutines/flow/internal/a;",
        "Lkotlinx/coroutines/flow/q;",
        "Lkotlinx/coroutines/flow/j;",
        "Lkotlinx/coroutines/flow/a;",
        "Lkotlinx/coroutines/flow/internal/j;",
        "value",
        "",
        "(Ljava/lang/Object;)Z",
        "U",
        "",
        "I",
        "",
        "newHead",
        "F",
        "",
        "item",
        "K",
        "",
        "curBuffer",
        "",
        "curSize",
        "newSize",
        "S",
        "([Ljava/lang/Object;II)[Ljava/lang/Object;",
        "J",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/SharedFlowImpl$a;",
        "emitter",
        "D",
        "newReplayIndex",
        "newMinCollectorIndex",
        "newBufferEndIndex",
        "newQueueEndIndex",
        "X",
        "E",
        "slot",
        "W",
        "V",
        "index",
        "O",
        "C",
        "(Lkotlinx/coroutines/flow/q;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation;",
        "resumesIn",
        "L",
        "([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;",
        "Lkotlinx/coroutines/flow/g;",
        "collector",
        "e",
        "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "b",
        "emit",
        "Z",
        "()J",
        "oldIndex",
        "Y",
        "(J)[Lkotlin/coroutines/Continuation;",
        "G",
        "size",
        "H",
        "(I)[Lkotlinx/coroutines/flow/q;",
        "f",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/flow/f;",
        "a",
        "R",
        "()I",
        "totalSize",
        "replay",
        "j",
        "minCollectorIndex",
        "Q",
        "replaySize",
        "N",
        "head",
        "",
        "c",
        "()Ljava/util/List;",
        "replayCache",
        "k",
        "bufferSize",
        "l",
        "queueSize",
        "bufferCapacity",
        "g",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "M",
        "bufferEndIndex",
        "P",
        "queueEndIndex",
        "h",
        "[Ljava/lang/Object;",
        "buffer",
        "i",
        "replayIndex",
        "<init>",
        "(IILkotlinx/coroutines/channels/BufferOverflow;)V",
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
.field private final e:I

.field private final f:I

.field private final g:Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:J

.field private j:J

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0
    .param p3    # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/a;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->e:I

    .line 3
    iput p2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->f:I

    .line 4
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->g:Lkotlinx/coroutines/channels/BufferOverflow;

    return-void
.end method

.method public static final synthetic A(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->T(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic B(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/q;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->V(Lkotlinx/coroutines/flow/q;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final C(Lkotlinx/coroutines/flow/q;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/q;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/q;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/q;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/q;->N()V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->B(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/q;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 5
    iput-object v0, p1, Lkotlinx/coroutines/flow/q;->b:Lkotlin/coroutines/Continuation;

    .line 6
    iput-object v0, p1, Lkotlinx/coroutines/flow/q;->b:Lkotlin/coroutines/Continuation;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 8
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 9
    invoke-virtual {v0}, Lkotlinx/coroutines/q;->x()Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 11
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_2

    return-object v0

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1
.end method

.method private final D(Lkotlinx/coroutines/flow/SharedFlowImpl$a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->b:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iget-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->b:J

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/p;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, p1, :cond_1

    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    iget-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->b:J

    sget-object p1, Lkotlinx/coroutines/flow/p;->a:Lkotlinx/coroutines/internal/i0;

    invoke-static {v0, v1, v2, p1}, Lkotlinx/coroutines/flow/p;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->E()V

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final E()V
    .locals 5

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->f:I

    if-nez v0, :cond_0

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    if-lez v1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->R()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/p;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/p;->a:Lkotlinx/coroutines/internal/i0;

    if-ne v1, v2, :cond_1

    .line 4
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->R()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/p;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final F(J)V
    .locals 9

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/a;->g(Lkotlinx/coroutines/flow/internal/a;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/a;->h(Lkotlinx/coroutines/flow/internal/a;)[Lkotlinx/coroutines/flow/internal/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 4
    check-cast v3, Lkotlinx/coroutines/flow/q;

    .line 5
    iget-wide v4, v3, Lkotlinx/coroutines/flow/q;->a:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    cmp-long v6, v4, p1

    if-gez v6, :cond_2

    .line 6
    iput-wide p1, v3, Lkotlinx/coroutines/flow/q;->a:J

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    :goto_1
    iput-wide p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    return-void
.end method

.method private final I()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/p;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 5
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->F(J)V

    .line 6
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method private final J(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v6, Lkotlinx/coroutines/q;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lkotlinx/coroutines/q;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2
    invoke-virtual {v6}, Lkotlinx/coroutines/q;->N()V

    .line 3
    sget-object v8, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->A(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v6, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 7
    invoke-static {p0, v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->u(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v9, Lkotlinx/coroutines/flow/SharedFlowImpl$a;

    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->w(Lkotlinx/coroutines/flow/SharedFlowImpl;)J

    move-result-wide v0

    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->y(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/SharedFlowImpl$a;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 9
    invoke-static {p0, v9}, Lkotlinx/coroutines/flow/SharedFlowImpl;->t(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V

    .line 10
    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->x(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result p1

    add-int/2addr p1, v7

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->z(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V

    .line 11
    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->v(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->u(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p1, v8

    move-object v0, v9

    .line 12
    :goto_0
    monitor-exit p0

    if-nez v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v6, v0}, Lkotlinx/coroutines/s;->a(Lkotlinx/coroutines/p;Lkotlinx/coroutines/j1;)V

    :goto_1
    const/4 v0, 0x0

    .line 14
    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v6}, Lkotlinx/coroutines/q;->x()Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_5

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 17
    :cond_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_6

    return-object p1

    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private final K(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->R()I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-direct {p0, v1, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->S([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->S([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/p;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final L([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/a;->g(Lkotlinx/coroutines/flow/internal/a;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/a;->h(Lkotlinx/coroutines/flow/internal/a;)[Lkotlinx/coroutines/flow/internal/c;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    if-eqz v4, :cond_5

    .line 5
    check-cast v4, Lkotlinx/coroutines/flow/q;

    .line 6
    iget-object v5, v4, Lkotlinx/coroutines/flow/q;->b:Lkotlin/coroutines/Continuation;

    if-nez v5, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->V(Lkotlinx/coroutines/flow/q;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    array-length v6, p1

    if-lt v0, v6, :cond_4

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :cond_4
    move-object v6, p1

    check-cast v6, [Lkotlin/coroutines/Continuation;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    .line 10
    iput-object v0, v4, Lkotlinx/coroutines/flow/q;->b:Lkotlin/coroutines/Continuation;

    move v0, v7

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_6
    :goto_2
    check-cast p1, [Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method private final M()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final N()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final O(J)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/flow/p;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$a;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowImpl$a;

    iget-object p1, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->c:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private final P()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final Q()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private final R()I
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    add-int/2addr v0, v1

    return v0
.end method

.method private final S([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1
    new-array p3, p3, [Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    if-nez p1, :cond_1

    return-object p3

    .line 2
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v1

    if-lez p2, :cond_3

    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v0

    add-long/2addr v4, v1

    .line 3
    invoke-static {p1, v4, v5}, Lkotlinx/coroutines/flow/p;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v4, v5, v0}, Lkotlinx/coroutines/flow/p;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    if-lt v3, p2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    :goto_2
    return-object p3

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Buffer size overflow"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private final T(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->n()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->U(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->f:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    cmp-long v5, v0, v3

    if-gtz v5, :cond_3

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->g:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/flow/SharedFlowImpl$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->K(Ljava/lang/Object;)V

    .line 5
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    add-int/2addr p1, v2

    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 6
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->f:I

    if-le p1, v0, :cond_4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->I()V

    .line 7
    :cond_4
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->Q()I

    move-result p1

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->e:I

    if-le p1, v0, :cond_5

    .line 8
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    const-wide/16 v3, 0x1

    add-long v6, v0, v3

    iget-wide v8, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->M()J

    move-result-wide v10

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->P()J

    move-result-wide v12

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->X(JJJJ)V

    :cond_5
    return v2
.end method

.method private final U(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->n()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

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

    .line 2
    :cond_2
    :goto_1
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->e:I

    if-nez v0, :cond_3

    return v1

    .line 3
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->K(Ljava/lang/Object;)V

    .line 4
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 5
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->e:I

    if-le p1, v0, :cond_4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->I()V

    .line 6
    :cond_4
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v2

    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    return v1
.end method

.method private final V(Lkotlinx/coroutines/flow/q;)J
    .locals 6

    .line 1
    iget-wide v0, p1, Lkotlinx/coroutines/flow/q;->a:J

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->M()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-wide v0

    .line 3
    :cond_0
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->f:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_1

    return-wide v2

    .line 4
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    return-wide v2

    .line 5
    :cond_2
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    if-nez p1, :cond_3

    return-wide v2

    :cond_3
    return-wide v0
.end method

.method private final W(Lkotlinx/coroutines/flow/q;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->V(Lkotlinx/coroutines/flow/q;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 4
    sget-object p1, Lkotlinx/coroutines/flow/p;->a:Lkotlinx/coroutines/internal/i0;

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v3, p1, Lkotlinx/coroutines/flow/q;->a:J

    .line 6
    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->O(J)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 7
    iput-wide v1, p1, Lkotlinx/coroutines/flow/q;->a:J

    .line 8
    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->Y(J)[Lkotlin/coroutines/Continuation;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 9
    :goto_0
    monitor-exit p0

    const/4 v1, 0x0

    .line 10
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final X(JJJJ)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v10

    cmp-long v7, v5, v10

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3
    :cond_2
    :goto_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v10

    cmp-long v7, v10, v5

    if-gez v7, :cond_4

    :goto_2
    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iget-object v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x0

    invoke-static {v7, v10, v11, v14}, Lkotlinx/coroutines/flow/p;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    cmp-long v7, v12, v5

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    move-wide v10, v12

    goto :goto_2

    .line 4
    :cond_4
    :goto_3
    iput-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 5
    iput-wide v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    sub-long v1, p5, v5

    long-to-int v2, v1

    .line 6
    iput v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    sub-long v1, p7, p5

    long-to-int v2, v1

    .line 7
    iput v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 8
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 9
    :cond_7
    :goto_5
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    if-ltz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 10
    :cond_a
    :goto_7
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v3

    iget v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_b

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    if-eqz v8, :cond_c

    goto :goto_9

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_d
    :goto_9
    return-void
.end method

.method public static final synthetic q(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/q;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->C(Lkotlinx/coroutines/flow/q;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowImpl$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->D(Lkotlinx/coroutines/flow/SharedFlowImpl$a;)V

    return-void
.end method

.method public static final synthetic s(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->J(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->K(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic u(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->L([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->f:I

    return p0
.end method

.method public static final synthetic w(Lkotlinx/coroutines/flow/SharedFlowImpl;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic x(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    return p0
.end method

.method public static final synthetic y(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->R()I

    move-result p0

    return p0
.end method

.method public static final synthetic z(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    return-void
.end method


# virtual methods
.method protected G()Lkotlinx/coroutines/flow/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/q;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/q;-><init>()V

    return-object v0
.end method

.method protected H(I)[Lkotlinx/coroutines/flow/q;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-array p1, p1, [Lkotlinx/coroutines/flow/q;

    return-object p1
.end method

.method public final Y(J)[Lkotlin/coroutines/Continuation;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v9, p0

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_2
    :goto_1
    iget-wide v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    sget-object v0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 3
    :cond_3
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->N()J

    move-result-wide v0

    .line 4
    iget v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 5
    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->f:I

    const-wide/16 v5, 0x1

    if-nez v4, :cond_4

    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    if-lez v4, :cond_4

    add-long/2addr v2, v5

    .line 6
    :cond_4
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/a;->g(Lkotlinx/coroutines/flow/internal/a;)I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/a;->h(Lkotlinx/coroutines/flow/internal/a;)[Lkotlinx/coroutines/flow/internal/c;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 8
    :cond_6
    array-length v7, v4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_8

    aget-object v12, v4, v8

    if-eqz v12, :cond_7

    .line 9
    check-cast v12, Lkotlinx/coroutines/flow/q;

    .line 10
    iget-wide v12, v12, Lkotlinx/coroutines/flow/q;->a:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_7

    cmp-long v14, v12, v2

    if-gez v14, :cond_7

    move-wide v2, v12

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 11
    :cond_8
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-wide v7, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    cmp-long v4, v2, v7

    if-ltz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 12
    :cond_b
    :goto_5
    iget-wide v7, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_c

    sget-object v0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 13
    :cond_c
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->M()J

    move-result-wide v7

    .line 14
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/a;->n()I

    move-result v4

    if-lez v4, :cond_d

    sub-long v12, v7, v2

    long-to-int v4, v12

    .line 15
    iget v12, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    iget v13, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->f:I

    sub-int/2addr v13, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_6

    .line 16
    :cond_d
    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 17
    :goto_6
    sget-object v12, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    .line 18
    iget v13, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    int-to-long v13, v13

    add-long/2addr v13, v7

    if-lez v4, :cond_11

    .line 19
    new-array v12, v4, [Lkotlin/coroutines/Continuation;

    .line 20
    iget-object v15, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    cmp-long v16, v7, v13

    if-gez v16, :cond_11

    move-wide v10, v7

    const/16 v17, 0x0

    :goto_7
    add-long v18, v7, v5

    .line 21
    invoke-static {v15, v7, v8}, Lkotlinx/coroutines/flow/p;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 22
    sget-object v6, Lkotlinx/coroutines/flow/p;->a:Lkotlinx/coroutines/internal/i0;

    move-wide/from16 v20, v2

    if-eq v5, v6, :cond_f

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    .line 23
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowImpl$a;

    add-int/lit8 v2, v17, 0x1

    .line 24
    iget-object v3, v5, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->d:Lkotlin/coroutines/Continuation;

    aput-object v3, v12, v17

    .line 25
    invoke-static {v15, v7, v8, v6}, Lkotlinx/coroutines/flow/p;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 26
    iget-object v3, v5, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->c:Ljava/lang/Object;

    invoke-static {v15, v10, v11, v3}, Lkotlinx/coroutines/flow/p;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v5, 0x1

    add-long v7, v10, v5

    if-lt v2, v4, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v17, v2

    move-wide v10, v7

    :cond_f
    cmp-long v2, v18, v13

    if-ltz v2, :cond_10

    move-wide v7, v10

    goto :goto_8

    :cond_10
    move-wide/from16 v7, v18

    move-wide/from16 v2, v20

    const-wide/16 v5, 0x1

    goto :goto_7

    :cond_11
    move-wide/from16 v20, v2

    :goto_8
    sub-long v0, v7, v0

    long-to-int v1, v0

    .line 27
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/a;->n()I

    move-result v0

    if-nez v0, :cond_12

    move-wide v3, v7

    goto :goto_9

    :cond_12
    move-wide/from16 v3, v20

    .line 28
    :goto_9
    iget-wide v5, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    iget v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v7, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 29
    iget v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->f:I

    if-nez v2, :cond_13

    cmp-long v2, v0, v13

    if-gez v2, :cond_13

    iget-object v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/flow/p;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lkotlinx/coroutines/flow/p;->a:Lkotlinx/coroutines/internal/i0;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    add-long/2addr v0, v5

    :cond_13
    move-wide v1, v0

    move-wide v5, v7

    move-object/from16 v0, p0

    move-wide v7, v13

    .line 30
    invoke-direct/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->X(JJJJ)V

    .line 31
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->E()V

    .line 32
    array-length v0, v12

    if-nez v0, :cond_14

    const/4 v10, 0x1

    goto :goto_a

    :cond_14
    const/4 v10, 0x0

    :goto_a
    const/4 v0, 0x1

    xor-int/2addr v0, v10

    if-eqz v0, :cond_15

    invoke-direct {v9, v12}, Lkotlinx/coroutines/flow/SharedFlowImpl;->L([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v12

    :cond_15
    return-object v12
.end method

.method public final Z()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 2
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    :cond_0
    return-wide v0
.end method

.method public a(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/f;
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/p;->e(Lkotlinx/coroutines/flow/o;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->T(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->L([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    monitor-exit p0

    .line 6
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public c()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->Q()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    if-lez v0, :cond_2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 6
    iget-wide v5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lkotlinx/coroutines/flow/p;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v4, v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->d:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/c2;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/q;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->b:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/g;

    iget-object v6, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->a:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p2, p1

    move-object p1, v5

    goto :goto_2

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->d:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/c2;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/q;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->b:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/g;

    iget-object v6, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->a:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/flow/q;

    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/g;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->a:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->i()Lkotlinx/coroutines/flow/internal/c;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/flow/q;

    .line 5
    :try_start_3
    instance-of p2, p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:I

    invoke-virtual {p2, v0}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, p0

    .line 6
    :goto_1
    :try_start_4
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 7
    sget-object v5, Lkotlinx/coroutines/c2;->Q:Lkotlinx/coroutines/c2$b;

    invoke-interface {p2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/c2;

    :goto_2
    move-object v5, p1

    move-object p1, p2

    .line 8
    :cond_7
    :goto_3
    invoke-direct {v6, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->W(Lkotlinx/coroutines/flow/q;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    sget-object v7, Lkotlinx/coroutines/flow/p;->a:Lkotlinx/coroutines/internal/i0;

    if-eq p2, v7, :cond_9

    if-nez p1, :cond_8

    goto :goto_4

    .line 10
    :cond_8
    invoke-static {p1}, Lkotlinx/coroutines/f2;->B(Lkotlinx/coroutines/c2;)V

    .line 11
    :goto_4
    iput-object v6, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->a:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->d:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:I

    invoke-interface {v5, p2, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    return-object v1

    .line 12
    :cond_9
    iput-object v6, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->a:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->d:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:I

    invoke-direct {v6, v2, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->C(Lkotlinx/coroutines/flow/q;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v1, :cond_7

    return-object v1

    :catchall_1
    move-exception p1

    move-object v6, p0

    .line 13
    :goto_5
    invoke-virtual {v6, v2}, Lkotlinx/coroutines/flow/internal/a;->m(Lkotlinx/coroutines/flow/internal/c;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->J(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public f()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->M()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 4
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->M()J

    move-result-wide v5

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->P()J

    move-result-wide v7

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->X(JJJJ)V

    .line 7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic j()Lkotlinx/coroutines/flow/internal/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->G()Lkotlinx/coroutines/flow/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(I)[Lkotlinx/coroutines/flow/internal/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->H(I)[Lkotlinx/coroutines/flow/q;

    move-result-object p1

    return-object p1
.end method
