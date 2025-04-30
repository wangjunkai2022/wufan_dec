.class public final Lkotlinx/coroutines/selects/b;
.super Lkotlinx/coroutines/internal/q;
.source "Select.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/a;
.implements Lkotlinx/coroutines/selects/f;
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/b$d;,
        Lkotlinx/coroutines/selects/b$c;,
        Lkotlinx/coroutines/selects/b$a;,
        Lkotlinx/coroutines/selects/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/q;",
        "Lkotlinx/coroutines/selects/a<",
        "TR;>;",
        "Lkotlinx/coroutines/selects/f<",
        "TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "TR;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 7 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 8 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,660:1\n280#1:664\n281#1:666\n282#1,7:669\n289#1,5:680\n280#1:685\n281#1:687\n282#1,3:690\n285#1,9:695\n1#2:661\n1#2:665\n1#2:686\n155#3,2:662\n155#3,2:667\n155#3,2:688\n155#3,2:706\n155#3,2:714\n219#4:676\n220#4:679\n57#5,2:677\n57#5,2:693\n167#5:705\n13#6:704\n641#7,6:708\n17#8:716\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl\n*L\n298#1:664\n298#1:666\n298#1:669,7\n298#1:680,5\n309#1:685\n309#1:687\n309#1:690,3\n309#1:695,9\n298#1:665\n309#1:686\n281#1:662,2\n298#1:667,2\n309#1:688,2\n364#1:706,2\n486#1:714,2\n300#1:676\n300#1:679\n300#1:677,2\n309#1:693,2\n358#1:705\n332#1:704\n386#1:708,6\n647#1:716\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u00060\u0006j\u0002`\u0007:\u0004[6\\KB\u0015\u0012\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0004\u0008Y\u0010ZJ.\u0010\r\u001a\u00020\u000b2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008H\u0082\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\n\u0018\u00010\u0012j\u0004\u0018\u0001`\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J \u0010\u0018\u001a\u00020\u000b2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0016H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001aH\u0001\u00a2\u0006\u0004\u0008!\u0010\u001dJ\u0017\u0010$\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u001b\u0010+\u001a\u0004\u0018\u00010\t2\u0008\u0010*\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0019\u0010/\u001a\u0004\u0018\u00010\t2\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00102\u001a\u000201H\u0016\u00a2\u0006\u0004\u00082\u00103J5\u00106\u001a\u00020\u000b*\u0002042\u001c\u0010\u000c\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t05H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107JG\u0010;\u001a\u00020\u000b\"\u0004\u0008\u0001\u00108*\u0008\u0012\u0004\u0012\u00028\u0001092\"\u0010\u000c\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t0:H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008;\u0010<J[\u0010@\u001a\u00020\u000b\"\u0004\u0008\u0001\u0010=\"\u0004\u0008\u0002\u00108*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020>2\u0006\u0010?\u001a\u00028\u00012\"\u0010\u000c\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t0:H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010AJ8\u0010D\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020B2\u001c\u0010\u000c\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t05H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010ER\u0016\u0010G\u001a\u00020&8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010(R\u001e\u0010J\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00078V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR\u001c\u0010M\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u001c\u0010P\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010OR(\u0010T\u001a\u0004\u0018\u00010\"2\u0008\u0010\n\u001a\u0004\u0018\u00010\"8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010%R\u0016\u0010X\u001a\u00020U8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010W\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006]"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/b;",
        "R",
        "Lkotlinx/coroutines/internal/q;",
        "Lkotlinx/coroutines/selects/a;",
        "Lkotlinx/coroutines/selects/f;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "Lkotlin/Function0;",
        "",
        "value",
        "",
        "block",
        "j0",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "N",
        "()V",
        "i0",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "Lkotlin/Result;",
        "result",
        "resumeWith",
        "(Ljava/lang/Object;)V",
        "",
        "exception",
        "r",
        "(Ljava/lang/Throwable;)V",
        "l0",
        "()Ljava/lang/Object;",
        "e",
        "m0",
        "Lkotlinx/coroutines/j1;",
        "handle",
        "j",
        "(Lkotlinx/coroutines/j1;)V",
        "",
        "n",
        "()Z",
        "Lkotlinx/coroutines/internal/s$d;",
        "otherOp",
        "k",
        "(Lkotlinx/coroutines/internal/s$d;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/internal/b;",
        "desc",
        "s",
        "(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lkotlinx/coroutines/selects/c;",
        "Lkotlin/Function1;",
        "b",
        "(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/functions/Function1;)V",
        "Q",
        "Lkotlinx/coroutines/selects/d;",
        "Lkotlin/Function2;",
        "u",
        "(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V",
        "P",
        "Lkotlinx/coroutines/selects/e;",
        "param",
        "f",
        "(Lkotlinx/coroutines/selects/e;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "timeMillis",
        "h",
        "(JLkotlin/jvm/functions/Function1;)V",
        "g",
        "isSelected",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "callerFrame",
        "d",
        "Lkotlin/coroutines/Continuation;",
        "uCont",
        "o",
        "()Lkotlin/coroutines/Continuation;",
        "completion",
        "k0",
        "()Lkotlinx/coroutines/j1;",
        "n0",
        "parentHandle",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "context",
        "<init>",
        "(Lkotlin/coroutines/Continuation;)V",
        "a",
        "c",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# static fields
.field static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field volatile synthetic _result:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/selects/b;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_result"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/q;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/Continuation;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->f()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->_state:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final N()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/c2;->Q:Lkotlinx/coroutines/c2$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/c2;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    new-instance v4, Lkotlinx/coroutines/selects/b$d;

    invoke-direct {v4, p0}, Lkotlinx/coroutines/selects/b$d;-><init>(Lkotlinx/coroutines/selects/b;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/c2$a;->f(Lkotlinx/coroutines/c2;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/j1;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/b;->n0(Lkotlinx/coroutines/j1;)V

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/j1;->dispose()V

    :cond_1
    return-void
.end method

.method public static final synthetic h0(Lkotlinx/coroutines/selects/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/selects/b;->i0()V

    return-void
.end method

.method private final i0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/selects/b;->k0()Lkotlinx/coroutines/j1;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/j1;->dispose()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/s;->O()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/s;

    .line 3
    :goto_1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    instance-of v1, v0, Lkotlinx/coroutines/selects/b$b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/selects/b$b;

    .line 5
    iget-object v1, v1, Lkotlinx/coroutines/selects/b$b;->d:Lkotlinx/coroutines/j1;

    invoke-interface {v1}, Lkotlinx/coroutines/j1;->dispose()V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final j0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 4
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/selects/g;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already resumed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final k0()Lkotlinx/coroutines/j1;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/j1;

    return-object v0
.end method

.method private final n0(Lkotlinx/coroutines/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->_parentHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/selects/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/c;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lkotlinx/coroutines/selects/c;->j(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public f(Lkotlinx/coroutines/selects/e;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/selects/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/e<",
            "-TP;+TQ;>;TP;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2, p3}, Lkotlinx/coroutines/selects/e;->C(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_state:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/selects/g;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/internal/b0;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/b0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(JLkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->o()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p3, p1}, Lb3/b;->c(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Lkotlinx/coroutines/selects/b$e;

    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/selects/b$e;-><init>(Lkotlinx/coroutines/selects/b;Lkotlin/jvm/functions/Function1;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/DelayKt;->d(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/b1;

    move-result-object p3

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-interface {p3, p1, p2, v0, v1}, Lkotlinx/coroutines/b1;->p(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/j1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/b;->j(Lkotlinx/coroutines/j1;)V

    return-void
.end method

.method public j(Lkotlinx/coroutines/j1;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/j1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/b$b;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/b$b;-><init>(Lkotlinx/coroutines/j1;)V

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/s;->A(Lkotlinx/coroutines/internal/s;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/j1;->dispose()V

    return-void
.end method

.method public k(Lkotlinx/coroutines/internal/s$d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlinx/coroutines/internal/s$d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_state:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/selects/g;->f()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_0

    .line 3
    sget-object v0, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lkotlinx/coroutines/selects/b$c;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/b$c;-><init>(Lkotlinx/coroutines/internal/s$d;)V

    .line 5
    sget-object v1, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/selects/b$c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 7
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/selects/b;->i0()V

    .line 8
    sget-object p1, Lkotlinx/coroutines/r;->d:Lkotlinx/coroutines/internal/i0;

    return-object p1

    .line 9
    :cond_3
    instance-of v1, v0, Lkotlinx/coroutines/internal/b0;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s$d;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v1

    .line 11
    instance-of v2, v1, Lkotlinx/coroutines/selects/b$a;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/selects/b$a;

    iget-object v2, v2, Lkotlinx/coroutines/selects/b$a;->b:Lkotlinx/coroutines/selects/b;

    if-eq v2, p0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use matching select clauses on the same object"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    :goto_1
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/b0;->b(Lkotlinx/coroutines/internal/b0;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    sget-object p1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    return-object p1

    .line 15
    :cond_6
    check-cast v0, Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/b0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    return-object v2

    .line 16
    :cond_8
    iget-object p1, p1, Lkotlinx/coroutines/internal/s$d;->c:Lkotlinx/coroutines/internal/s$a;

    if-ne v0, p1, :cond_9

    sget-object p1, Lkotlinx/coroutines/r;->d:Lkotlinx/coroutines/internal/i0;

    return-object p1

    :cond_9
    return-object v2
.end method

.method public final l0()Ljava/lang/Object;
    .locals 3
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/selects/b;->N()V

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    .line 6
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/selects/g;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 7
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    check-cast v0, Lkotlinx/coroutines/h0;

    iget-object v0, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    throw v0

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(Lkotlinx/coroutines/selects/e;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/selects/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/e<",
            "-TP;+TQ;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/selects/a$a;->a(Lkotlinx/coroutines/selects/a;Lkotlinx/coroutines/selects/e;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final m0(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->l0()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-eqz v1, :cond_3

    check-cast v0, Lkotlinx/coroutines/h0;

    iget-object v0, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    .line 6
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/internal/h0;->u(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlinx/coroutines/internal/h0;->u(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    :goto_1
    if-eq v0, v1, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/q0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public n()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/b;->k(Lkotlinx/coroutines/internal/s$d;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/r;->d:Lkotlinx/coroutines/internal/i0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v1, "Unexpected trySelectIdempotent result "

    .line 3
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public o()Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public r(Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 4
    new-instance v0, Lkotlinx/coroutines/h0;

    iget-object v1, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/Continuation;

    .line 5
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    check-cast v1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p1, v1}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    move-object v1, p1

    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/h0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    sget-object v1, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 9
    :cond_4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    sget-object v0, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/selects/g;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_3
    return-void

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/m0;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    sget-object v0, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/selects/g;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 10
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p1, v1}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object p1

    .line 12
    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public s(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/b$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/b$a;-><init>(Lkotlinx/coroutines/selects/b;Lkotlinx/coroutines/internal/b;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectInstance(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/selects/b;->_state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/selects/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/d<",
            "+TQ;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lkotlinx/coroutines/selects/d;->f(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
