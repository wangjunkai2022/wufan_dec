.class public final Lkotlinx/coroutines/internal/f;
.super Ljava/lang/Object;
.source "ConcurrentLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,242:1\n25#1,3:252\n28#1,11:262\n45#1:273\n46#1,8:276\n106#2,7:243\n106#2,7:255\n106#2,7:284\n155#3,2:250\n155#3,2:274\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n72#1:252,3\n72#1:262,11\n73#1:273\n73#1:276,8\n27#1:243,7\n72#1:255,7\n84#1:284,7\n45#1:250,2\n73#1:274,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001ao\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\"\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0000*\u00028\u00002\u0006\u0010\u0003\u001a\u00020\u000228\u0010\u0008\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0003\u0012\u0015\u0012\u0013\u0018\u00018\u0000\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00028\u00000\u0004H\u0082\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a#\u0010\u000e\u001a\u00028\u0000\"\u000e\u0008\u0000\u0010\r*\u0008\u0012\u0004\u0012\u00028\u00000\u000c*\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\"\u001c\u0010\u0014\u001a\u00020\u00108\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0011\u0012\u0004\u0008\u0012\u0010\u0013\"\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/f0;",
        "S",
        "",
        "id",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "prev",
        "createNewSegment",
        "Lkotlinx/coroutines/internal/g0;",
        "c",
        "(Lkotlinx/coroutines/internal/f0;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/internal/g;",
        "N",
        "b",
        "(Lkotlinx/coroutines/internal/g;)Lkotlinx/coroutines/internal/g;",
        "Lkotlinx/coroutines/internal/i0;",
        "Lkotlinx/coroutines/internal/i0;",
        "getCLOSED$annotations",
        "()V",
        "CLOSED",
        "",
        "a",
        "I",
        "POINTERS_SHIFT",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final a:I = 0x10

.field private static final b:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/f;->b:Lkotlinx/coroutines/internal/i0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/f;->b:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/internal/g;)Lkotlinx/coroutines/internal/g;
    .locals 2
    .param p0    # Lkotlinx/coroutines/internal/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lkotlinx/coroutines/internal/g<",
            "TN;>;>(TN;)TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/g;->a(Lkotlinx/coroutines/internal/g;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {}, Lkotlinx/coroutines/internal/f;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object p0

    .line 3
    :cond_1
    check-cast v0, Lkotlinx/coroutines/internal/g;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method private static final c(Lkotlinx/coroutines/internal/f0;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/f0<",
            "TS;>;>(TS;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->o()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {p0}, Lkotlinx/coroutines/internal/g0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    :goto_1
    invoke-static {p0}, Lkotlinx/coroutines/internal/g;->a(Lkotlinx/coroutines/internal/g;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {}, Lkotlinx/coroutines/internal/f;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 5
    invoke-static {}, Lkotlinx/coroutines/internal/f;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/internal/g0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    check-cast v0, Lkotlinx/coroutines/internal/g;

    .line 7
    check-cast v0, Lkotlinx/coroutines/internal/f0;

    if-eqz v0, :cond_5

    :cond_4
    :goto_2
    move-object p0, v0

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/f0;

    .line 9
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/g;->m(Lkotlinx/coroutines/internal/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->l()V

    goto :goto_2
.end method

.method private static synthetic d()V
    .locals 0

    return-void
.end method
