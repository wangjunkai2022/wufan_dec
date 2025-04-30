.class public final Lkotlinx/coroutines/internal/r;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002*\u00020\u0000H\u0001\"\u001c\u0010\t\u001a\u00020\u00048\u0000@\u0001X\u0081T\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u0012\u0004\u0008\u0007\u0010\u0008\"\u001c\u0010\u000c\u001a\u00020\u00048\u0000@\u0001X\u0081T\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0006\u0012\u0004\u0008\u000b\u0010\u0008\"\"\u0010\u0011\u001a\u00020\u00008\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u0012\u0004\u0008\u0010\u0010\u0008\u001a\u0004\u0008\n\u0010\u000f\"\"\u0010\u0014\u001a\u00020\u00008\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000e\u0012\u0004\u0008\u0013\u0010\u0008\u001a\u0004\u0008\r\u0010\u000f\"\u001c\u0010\u0017\u001a\u00020\u00048\u0000@\u0001X\u0081T\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0006\u0012\u0004\u0008\u0016\u0010\u0008*\n\u0010\u0019\"\u00020\u00182\u00020\u0018*\u001c\u0010\u001c\u001a\u0004\u0008\u0000\u0010\u001a\"\u0008\u0012\u0004\u0012\u00028\u00000\u001b2\u0008\u0012\u0004\u0012\u00028\u00000\u001b*\u000c\u0008\u0002\u0010\u001d\"\u00020\u00012\u00020\u0001*\n\u0010\u001f\"\u00020\u001e2\u00020\u001e*\u001c\u0010!\u001a\u0004\u0008\u0000\u0010\u001a\"\u0008\u0012\u0004\u0012\u00028\u00000 2\u0008\u0012\u0004\u0012\u00028\u00000 \u00a8\u0006\""
    }
    d2 = {
        "",
        "Lkotlinx/coroutines/internal/s;",
        "Lkotlinx/coroutines/internal/Node;",
        "h",
        "",
        "c",
        "I",
        "getFAILURE$annotations",
        "()V",
        "FAILURE",
        "a",
        "getUNDECIDED$annotations",
        "UNDECIDED",
        "d",
        "Ljava/lang/Object;",
        "()Ljava/lang/Object;",
        "getCONDITION_FALSE$annotations",
        "CONDITION_FALSE",
        "e",
        "getLIST_EMPTY$annotations",
        "LIST_EMPTY",
        "b",
        "getSUCCESS$annotations",
        "SUCCESS",
        "Lkotlinx/coroutines/internal/s$a;",
        "AbstractAtomicDesc",
        "T",
        "Lkotlinx/coroutines/internal/s$b;",
        "AddLastDesc",
        "Node",
        "Lkotlinx/coroutines/internal/s$d;",
        "PrepareOp",
        "Lkotlinx/coroutines/internal/s$e;",
        "RemoveFirstDesc",
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
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/r;->d:Ljava/lang/Object;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/r;->e:Ljava/lang/Object;

    return-void
.end method

.method public static final a()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/r;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static synthetic c()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final d()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/r;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic e()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static synthetic f()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static synthetic g()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final h(Ljava/lang/Object;)Lkotlinx/coroutines/internal/s;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/d0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/d0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    check-cast p0, Lkotlinx/coroutines/internal/s;

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lkotlinx/coroutines/internal/d0;->a:Lkotlinx/coroutines/internal/s;

    :goto_1
    return-object p0
.end method
