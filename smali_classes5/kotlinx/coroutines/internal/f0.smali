.class public abstract Lkotlinx/coroutines/internal/f0;
.super Lkotlinx/coroutines/internal/g;
.source "ConcurrentLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lkotlinx/coroutines/internal/f0<",
        "TS;>;>",
        "Lkotlinx/coroutines/internal/g<",
        "TS;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n1#1,242:1\n224#2,4:243\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n*L\n210#1:243,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008 \u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0002B!\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u0004\u001a\u00020\u0003H\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0005J\r\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000b\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0005R\u0019\u0010\u0011\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/f0;",
        "S",
        "Lkotlinx/coroutines/internal/g;",
        "",
        "r",
        "()Z",
        "n",
        "",
        "q",
        "()V",
        "g",
        "removed",
        "",
        "c",
        "J",
        "o",
        "()J",
        "id",
        "",
        "p",
        "()I",
        "maxSlots",
        "prev",
        "pointers",
        "<init>",
        "(JLkotlinx/coroutines/internal/f0;I)V",
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
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final c:J

.field private volatile synthetic cleanedAndPointers:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/f0;

    const-string v1, "cleanedAndPointers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/f0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/internal/f0;I)V
    .locals 0
    .param p3    # Lkotlinx/coroutines/internal/f0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTS;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/internal/g;-><init>(Lkotlinx/coroutines/internal/g;)V

    iput-wide p1, p0, Lkotlinx/coroutines/internal/f0;->c:J

    shl-int/lit8 p1, p4, 0x10

    .line 2
    iput p1, p0, Lkotlinx/coroutines/internal/f0;->cleanedAndPointers:I

    return-void
.end method


# virtual methods
.method public g()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/internal/f0;->cleanedAndPointers:I

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->p()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/f0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/high16 v1, -0x10000

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->p()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/internal/f0;->c:J

    return-wide v0
.end method

.method public abstract p()I
.end method

.method public final q()V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/f0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->p()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->l()V

    :cond_0
    return-void
.end method

.method public final r()Z
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/internal/f0;->cleanedAndPointers:I

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->p()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    sget-object v1, Lkotlinx/coroutines/internal/f0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_2
    return v2
.end method
