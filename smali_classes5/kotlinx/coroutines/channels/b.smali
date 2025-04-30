.class public abstract Lkotlinx/coroutines/channels/b;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/b$b;,
        Lkotlinx/coroutines/channels/b$d;,
        Lkotlinx/coroutines/channels/b$c;,
        Lkotlinx/coroutines/channels/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/b0<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 6 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1131:1\n1#2:1132\n293#3,12:1133\n161#3,4:1145\n161#3,4:1154\n173#3:1158\n87#3,3:1159\n174#3,6:1162\n161#3,4:1168\n293#3,12:1183\n328#4,5:1149\n37#5,11:1172\n641#6,6:1195\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel\n*L\n96#1:1133,12\n104#1:1145,4\n246#1:1154,4\n251#1:1158\n251#1:1159,3\n251#1:1162,6\n268#1:1168,4\n357#1:1183,12\n189#1:1149,5\n341#1:1172,11\n454#1:1195,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0004aWijB)\u0012 \u0010c\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u000109j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001``\u00a2\u0006\u0004\u0008h\u0010=J\u001b\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\rJ+\u0010\u000f\u001a\u00020\u000b*\u0006\u0012\u0002\u0008\u00030\u000e2\u0006\u0010\u0008\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0014\u001a\u00020\u000b2\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015JX\u0010\u001c\u001a\u00020\u000b\"\u0004\u0008\u0001\u0010\u00162\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00172\u0006\u0010\u0008\u001a\u00028\u00002(\u0010\u001b\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u001a2\u0006\u0010\u0008\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008!\u0010\"J#\u0010#\u001a\u00020\u001a2\u0006\u0010\u0008\u001a\u00028\u00002\n\u0010\u0018\u001a\u0006\u0012\u0002\u0008\u00030\u0017H\u0014\u00a2\u0006\u0004\u0008#\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010%H\u0004\u00a2\u0006\u0004\u0008&\u0010\'J\u001d\u0010)\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010(2\u0006\u0010\u0008\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008)\u0010*J#\u0010-\u001a\u000e\u0012\u0002\u0008\u00030+j\u0006\u0012\u0002\u0008\u0003`,2\u0006\u0010\u0008\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008-\u0010.J\u001b\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00028\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\rJ\u0017\u00100\u001a\u00020/2\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u00080\u00101J$\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000b022\u0006\u0010\u0008\u001a\u00028\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u00083\u0010\"J\u0019\u00105\u001a\u0004\u0018\u00010\u001a2\u0006\u00104\u001a\u00020%H\u0014\u00a2\u0006\u0004\u00085\u00106J\u0019\u00107\u001a\u00020/2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u00087\u00108J)\u0010<\u001a\u00020\u000b2\u0018\u0010;\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u000b09j\u0002`:H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010\u0001\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020>H\u0014\u00a2\u0006\u0004\u0008\u0001\u0010?J\u0017\u0010@\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010(H\u0014\u00a2\u0006\u0004\u0008@\u0010AJ\u001d\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00000B2\u0006\u0010\u0008\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010F\u001a\u00020EH\u0016\u00a2\u0006\u0004\u0008F\u0010GR\u0016\u0010J\u001a\u00020/8$@$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR\u0013\u0010L\u001a\u00020/8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010IR%\u0010P\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020M8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010OR\u0016\u0010R\u001a\u00020E8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010GR\u001c\u0010U\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00038D@\u0004X\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010TR\u001c\u0010[\u001a\u00020V8\u0004@\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010ZR\u001c\u0010]\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00038D@\u0004X\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010TR\u0016\u0010_\u001a\u00020/8$@$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010IR0\u0010c\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u000109j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001``8\u0004@\u0005X\u0085\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010e\u001a\u00020E8T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010GR\u0016\u0010g\u001a\u00020/8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010I\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006k"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/b;",
        "E",
        "Lkotlinx/coroutines/channels/b0;",
        "Lkotlinx/coroutines/channels/p;",
        "closed",
        "",
        "t",
        "(Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;",
        "element",
        "s",
        "(Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;",
        "",
        "N",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation;",
        "u",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)V",
        "cause",
        "w",
        "(Ljava/lang/Throwable;)V",
        "q",
        "(Lkotlinx/coroutines/channels/p;)V",
        "R",
        "Lkotlinx/coroutines/selects/f;",
        "select",
        "Lkotlin/Function2;",
        "",
        "block",
        "L",
        "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "h",
        "()I",
        "C",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "D",
        "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/a0;",
        "T",
        "()Lkotlinx/coroutines/channels/a0;",
        "Lkotlinx/coroutines/channels/y;",
        "M",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/y;",
        "Lkotlinx/coroutines/internal/s$b;",
        "Lkotlinx/coroutines/internal/AddLastDesc;",
        "i",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/internal/s$b;",
        "",
        "offer",
        "(Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/channels/n;",
        "B",
        "send",
        "k",
        "(Lkotlinx/coroutines/channels/a0;)Ljava/lang/Object;",
        "P",
        "(Ljava/lang/Throwable;)Z",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/channels/Handler;",
        "handler",
        "z",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Lkotlinx/coroutines/internal/s;",
        "(Lkotlinx/coroutines/internal/s;)V",
        "Q",
        "()Lkotlinx/coroutines/channels/y;",
        "Lkotlinx/coroutines/channels/b$d;",
        "j",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/b$d;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "y",
        "()Z",
        "isBufferFull",
        "S",
        "isClosedForSend",
        "Lkotlinx/coroutines/selects/e;",
        "r",
        "()Lkotlinx/coroutines/selects/e;",
        "onSend",
        "p",
        "queueDebugStateString",
        "n",
        "()Lkotlinx/coroutines/channels/p;",
        "closedForSend",
        "Lkotlinx/coroutines/internal/q;",
        "b",
        "Lkotlinx/coroutines/internal/q;",
        "o",
        "()Lkotlinx/coroutines/internal/q;",
        "queue",
        "m",
        "closedForReceive",
        "x",
        "isBufferAlwaysFull",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "onUndeliveredElement",
        "l",
        "bufferDebugString",
        "A",
        "isFullImpl",
        "<init>",
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
.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field protected final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lkotlinx/coroutines/internal/q;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/channels/b;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlin/jvm/functions/Function1;

    .line 3
    new-instance p1, Lkotlinx/coroutines/internal/q;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/q;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/channels/b;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method private final A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/y;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final L(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;TE;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/b0<",
            "-TE;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/b;->A()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    new-instance v0, Lkotlinx/coroutines/channels/b$c;

    invoke-direct {v0, p2, p0, p1, p3}, Lkotlinx/coroutines/channels/b$c;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V

    .line 4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/b;->k(Lkotlinx/coroutines/channels/a0;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/f;->j(Lkotlinx/coroutines/j1;)V

    return-void

    .line 6
    :cond_1
    instance-of v0, v1, Lkotlinx/coroutines/channels/p;

    if-nez v0, :cond_4

    .line 7
    sget-object v0, Lkotlinx/coroutines/channels/a;->g:Lkotlinx/coroutines/internal/i0;

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    instance-of v0, v1, Lkotlinx/coroutines/channels/x;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enqueueSend returned "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_4
    check-cast v1, Lkotlinx/coroutines/channels/p;

    invoke-direct {p0, p2, v1}, Lkotlinx/coroutines/channels/b;->s(Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/h0;->p(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 11
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/channels/b;->D(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-static {}, Lkotlinx/coroutines/selects/g;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    return-void

    .line 13
    :cond_6
    sget-object v1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/internal/i0;

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 14
    :cond_7
    sget-object v1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_8

    goto :goto_0

    .line 15
    :cond_8
    sget-object v1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/i0;

    if-ne v0, v1, :cond_9

    .line 16
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lb3/b;->d(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void

    .line 17
    :cond_9
    instance-of p1, v0, Lkotlinx/coroutines/channels/p;

    if-eqz p1, :cond_a

    check-cast v0, Lkotlinx/coroutines/channels/p;

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/channels/b;->s(Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/h0;->p(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_a
    const-string p1, "offerSelectInternal returned "

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method private final N(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/s;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/q;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/channels/b;->d(Lkotlinx/coroutines/channels/b;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lkotlinx/coroutines/channels/c0;

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/channels/c0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/p;)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/d0;

    iget-object v2, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, p1, v0, v2}, Lkotlinx/coroutines/channels/d0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/p;Lkotlin/jvm/functions/Function1;)V

    .line 6
    :goto_1
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/b;->k(Lkotlinx/coroutines/channels/a0;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {v0, v1}, Lkotlinx/coroutines/s;->c(Lkotlinx/coroutines/p;Lkotlinx/coroutines/internal/s;)V

    goto :goto_3

    .line 8
    :cond_1
    instance-of v1, v2, Lkotlinx/coroutines/channels/p;

    if-eqz v1, :cond_2

    .line 9
    check-cast v2, Lkotlinx/coroutines/channels/p;

    invoke-static {p0, v0, p1, v2}, Lkotlinx/coroutines/channels/b;->c(Lkotlinx/coroutines/channels/b;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)V

    goto :goto_3

    .line 10
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/a;->g:Lkotlinx/coroutines/internal/i0;

    if-ne v2, v1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    instance-of v1, v2, Lkotlinx/coroutines/channels/x;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "enqueueSend returned "

    .line 12
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    sget-object v2, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/i0;

    if-ne v1, v2, :cond_6

    .line 15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_6
    sget-object v2, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/internal/i0;

    if-ne v1, v2, :cond_7

    goto :goto_0

    .line 17
    :cond_7
    instance-of v2, v1, Lkotlinx/coroutines/channels/p;

    if-eqz v2, :cond_a

    .line 18
    check-cast v1, Lkotlinx/coroutines/channels/p;

    invoke-static {p0, v0, p1, v1}, Lkotlinx/coroutines/channels/b;->c(Lkotlinx/coroutines/channels/b;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)V

    .line 19
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/q;->x()Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_8

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 21
    :cond_8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_9

    return-object p1

    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_a
    const-string p1, "offerInternal returned "

    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public static final synthetic c(Lkotlinx/coroutines/channels/b;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/b;->u(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)V

    return-void
.end method

.method public static final synthetic d(Lkotlinx/coroutines/channels/b;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/b;->A()Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/b;->L(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic f(Lkotlinx/coroutines/channels/b;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/b;->N(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final h()I
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->O()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/s;

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    instance-of v3, v1, Lkotlinx/coroutines/internal/s;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final p()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    if-ne v0, v1, :cond_0

    const-string v0, "EmptyQueue"

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/channels/p;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/channels/x;

    if-eqz v1, :cond_2

    const-string v1, "ReceiveQueued"

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/channels/a0;

    if-eqz v1, :cond_3

    const-string v1, "SendQueued"

    goto :goto_0

    :cond_3
    const-string v1, "UNEXPECTED:"

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object v2

    if-eq v2, v0, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/b;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    instance-of v0, v2, Lkotlinx/coroutines/channels/p;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private final q(Lkotlinx/coroutines/channels/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/p<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/n;->c(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/coroutines/channels/x;

    if-eqz v4, :cond_0

    check-cast v3, Lkotlinx/coroutines/channels/x;

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_5

    if-nez v2, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    check-cast v2, Lkotlinx/coroutines/channels/x;

    .line 4
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/channels/x;->g0(Lkotlinx/coroutines/channels/p;)V

    goto :goto_3

    .line 5
    :cond_2
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_4

    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/x;

    .line 8
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/x;->g0(Lkotlinx/coroutines/channels/p;)V

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    .line 9
    :cond_4
    :goto_3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->E(Lkotlinx/coroutines/internal/s;)V

    return-void

    .line 10
    :cond_5
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/s;->X()Z

    move-result v4

    if-nez v4, :cond_6

    .line 11
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/s;->R()V

    goto :goto_0

    .line 12
    :cond_6
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/n;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private final s(Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/channels/p<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/b;->q(Lkotlinx/coroutines/channels/p;)V

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/p;->m0()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/p;->m0()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 5
    throw p1
.end method

.method private final t(Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/p<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/b;->q(Lkotlinx/coroutines/channels/p;)V

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/p;->m0()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method private final u(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;TE;",
            "Lkotlinx/coroutines/channels/p<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/b;->q(Lkotlinx/coroutines/channels/p;)V

    .line 2
    invoke-virtual {p3}, Lkotlinx/coroutines/channels/p;->m0()Ljava/lang/Throwable;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4
    :goto_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p2, p3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 6
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final w(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/a;->h:Lkotlinx/coroutines/internal/i0;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v2, Lkotlinx/coroutines/channels/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/i0;

    if-ne p1, v0, :cond_0

    sget-object p1, Lkotlinx/coroutines/channels/n;->b:Lkotlinx/coroutines/channels/n$b;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/n$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/internal/i0;

    if-ne p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->n()Lkotlinx/coroutines/channels/p;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/n;->b:Lkotlinx/coroutines/channels/n$b;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/n$b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/n;->b:Lkotlinx/coroutines/channels/n$b;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/b;->t(Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/n$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/p;

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lkotlinx/coroutines/channels/n;->b:Lkotlinx/coroutines/channels/n$b;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/b;->t(Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/n$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    const-string v0, "trySend returned "

    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected C(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->Q()Lkotlinx/coroutines/channels/y;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/internal/i0;

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/channels/y;->t(Ljava/lang/Object;Lkotlinx/coroutines/internal/s$d;)Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lkotlinx/coroutines/r;->d:Lkotlinx/coroutines/internal/i0;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_4
    :goto_1
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/y;->i(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/channels/y;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected D(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlinx/coroutines/selects/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/selects/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->j(Ljava/lang/Object;)Lkotlinx/coroutines/channels/b$d;

    move-result-object v0

    .line 2
    invoke-interface {p2, v0}, Lkotlinx/coroutines/selects/f;->s(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s$e;->o()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/channels/y;

    .line 4
    invoke-interface {p2, p1}, Lkotlinx/coroutines/channels/y;->i(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p2}, Lkotlinx/coroutines/channels/y;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected E(Lkotlinx/coroutines/internal/s;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method protected final M(Ljava/lang/Object;)Lkotlinx/coroutines/channels/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/channels/y<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    new-instance v1, Lkotlinx/coroutines/channels/b$a;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/b$a;-><init>(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    .line 3
    instance-of v2, p1, Lkotlinx/coroutines/channels/y;

    if-eqz v2, :cond_1

    check-cast p1, Lkotlinx/coroutines/channels/y;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/internal/s;->E(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public P(Ljava/lang/Throwable;)Z
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/p;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/p;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    .line 3
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lkotlinx/coroutines/channels/p;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/s;->E(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/p;

    .line 7
    :goto_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/b;->q(Lkotlinx/coroutines/channels/p;)V

    if-eqz v4, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/b;->w(Ljava/lang/Throwable;)V

    :cond_3
    return v4
.end method

.method protected Q()Lkotlinx/coroutines/channels/y;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/y<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->O()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/s;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/y;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/y;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/p;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->T()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->a0()Lkotlinx/coroutines/internal/s;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/y;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->S()V

    goto :goto_0
.end method

.method public final R(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
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
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/i0;

    if-ne v0, v1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/b;->N(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final S()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->n()Lkotlinx/coroutines/channels/p;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final T()Lkotlinx/coroutines/channels/a0;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->O()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/s;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/a0;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/a0;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/p;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->T()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->a0()Lkotlinx/coroutines/internal/s;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/a0;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->S()V

    goto :goto_0
.end method

.method protected final i(Ljava/lang/Object;)Lkotlinx/coroutines/internal/s$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/internal/s$b<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/b$b;

    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/channels/b$b;-><init>(Lkotlinx/coroutines/internal/q;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final j(Ljava/lang/Object;)Lkotlinx/coroutines/channels/b$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/channels/b$d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/b$d;

    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/channels/b$d;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/internal/q;)V

    return-object v0
.end method

.method protected k(Lkotlinx/coroutines/channels/a0;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlinx/coroutines/channels/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/channels/y;

    if-eqz v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {v1, p1, v0}, Lkotlinx/coroutines/internal/s;->E(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    .line 7
    new-instance v1, Lkotlinx/coroutines/channels/b$e;

    invoke-direct {v1, p1, p0}, Lkotlinx/coroutines/channels/b$e;-><init>(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/channels/b;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lkotlinx/coroutines/channels/y;

    if-eqz v3, :cond_3

    return-object v2

    .line 10
    :cond_3
    invoke-virtual {v2, p1, v0, v1}, Lkotlinx/coroutines/internal/s;->c0(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s$c;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-nez v3, :cond_6

    .line 11
    sget-object p1, Lkotlinx/coroutines/channels/a;->g:Lkotlinx/coroutines/internal/i0;

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected l()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method protected final m()Lkotlinx/coroutines/channels/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/p<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/channels/p;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/b;->q(Lkotlinx/coroutines/channels/p;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method protected final n()Lkotlinx/coroutines/channels/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/p<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/channels/p;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/b;->q(Lkotlinx/coroutines/channels/p;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method protected final o()Lkotlinx/coroutines/internal/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/q;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/b0$a;->c(Lkotlinx/coroutines/channels/b0;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 4
    throw p1

    .line 5
    :cond_1
    :goto_0
    throw v0
.end method

.method public final r()Lkotlinx/coroutines/selects/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/e<",
            "TE;",
            "Lkotlinx/coroutines/channels/b0<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/b$f;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/b$f;-><init>(Lkotlinx/coroutines/channels/b;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/w0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/w0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract x()Z
.end method

.method protected abstract y()Z
.end method

.method public z(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/channels/b;->onCloseHandler:Ljava/lang/Object;

    .line 3
    sget-object v0, Lkotlinx/coroutines/channels/a;->h:Lkotlinx/coroutines/internal/i0;

    if-ne p1, v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another handler was already registered: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->n()Lkotlinx/coroutines/channels/p;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v2, Lkotlinx/coroutines/channels/a;->h:Lkotlinx/coroutines/internal/i0;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v1, Lkotlinx/coroutines/channels/p;->d:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
