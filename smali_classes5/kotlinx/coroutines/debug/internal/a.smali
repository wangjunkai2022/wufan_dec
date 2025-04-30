.class public final Lkotlinx/coroutines/debug/internal/a;
.super Ljava/lang/Object;
.source "ConcurrentWeakMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u000e\u0010\u0002\u001a\u00020\u0001*\u0004\u0018\u00010\u0000H\u0002\u001a\u0008\u0010\u0004\u001a\u00020\u0003H\u0002\"\u0016\u0010\u0006\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u0005\"\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\"\u0016\u0010\u000c\u001a\u00020\u00078\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\t\"\u0016\u0010\r\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005\"\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "",
        "Lkotlinx/coroutines/debug/internal/g;",
        "d",
        "",
        "e",
        "Lkotlinx/coroutines/debug/internal/g;",
        "MARKED_NULL",
        "",
        "b",
        "I",
        "MIN_CAPACITY",
        "a",
        "MAGIC",
        "MARKED_TRUE",
        "Lkotlinx/coroutines/internal/i0;",
        "c",
        "Lkotlinx/coroutines/internal/i0;",
        "REHASH",
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
.field private static final a:I = -0x61c88647

.field private static final b:I = 0x10

.field private static final c:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lkotlinx/coroutines/debug/internal/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lkotlinx/coroutines/debug/internal/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "REHASH"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/a;->c:Lkotlinx/coroutines/internal/i0;

    .line 2
    new-instance v0, Lkotlinx/coroutines/debug/internal/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/debug/internal/g;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/a;->d:Lkotlinx/coroutines/debug/internal/g;

    .line 3
    new-instance v0, Lkotlinx/coroutines/debug/internal/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/debug/internal/g;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/a;->e:Lkotlinx/coroutines/debug/internal/g;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/debug/internal/a;->c:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/g;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/debug/internal/a;->d(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/debug/internal/a;->e()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static final d(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/g;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lkotlinx/coroutines/debug/internal/a;->d:Lkotlinx/coroutines/debug/internal/g;

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/debug/internal/a;->e:Lkotlinx/coroutines/debug/internal/g;

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lkotlinx/coroutines/debug/internal/g;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/debug/internal/g;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static final e()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
