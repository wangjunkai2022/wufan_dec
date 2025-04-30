.class public final Lkotlinx/coroutines/g1;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\"\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u0012\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u0006R\u001c\u0010\u0012\u001a\u00020\u000e8F@\u0007X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u0008\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0004\u0012\u0004\u0008\u0014\u0010\u0008\u001a\u0004\u0008\u0013\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/coroutines/g1;",
        "",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "b",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "a",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "getDefault$annotations",
        "()V",
        "Default",
        "d",
        "c",
        "getIO$annotations",
        "IO",
        "Lkotlinx/coroutines/m2;",
        "e",
        "()Lkotlinx/coroutines/m2;",
        "getMain$annotations",
        "Main",
        "g",
        "getUnconfined$annotations",
        "Unconfined",
        "<init>",
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
.field public static final a:Lkotlinx/coroutines/g1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/g1;

    invoke-direct {v0}, Lkotlinx/coroutines/g1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/g1;->a:Lkotlinx/coroutines/g1;

    .line 1
    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/g1;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    sget-object v0, Lkotlinx/coroutines/l3;->a:Lkotlinx/coroutines/l3;

    sput-object v0, Lkotlinx/coroutines/g1;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/b;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/b;->K()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/g1;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final c()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static synthetic d()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final e()Lkotlinx/coroutines/m2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/x;->c:Lkotlinx/coroutines/m2;

    return-object v0
.end method

.method public static synthetic f()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final g()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/g1;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static synthetic h()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method
