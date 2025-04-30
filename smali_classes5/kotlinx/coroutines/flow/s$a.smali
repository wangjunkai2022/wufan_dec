.class public final Lkotlinx/coroutines/flow/s$a;
.super Ljava/lang/Object;
.source "SharingStarted.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002R\u0019\u0010\u000b\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0019\u0010\r\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\u0007\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "kotlinx/coroutines/flow/s$a",
        "",
        "",
        "stopTimeoutMillis",
        "replayExpirationMillis",
        "Lkotlinx/coroutines/flow/s;",
        "a",
        "c",
        "Lkotlinx/coroutines/flow/s;",
        "d",
        "()Lkotlinx/coroutines/flow/s;",
        "Lazily",
        "b",
        "Eagerly",
        "<init>",
        "()V",
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
.field static final synthetic a:Lkotlinx/coroutines/flow/s$a;

.field private static final b:Lkotlinx/coroutines/flow/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/flow/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/s$a;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/s$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/s$a;->a:Lkotlinx/coroutines/flow/s$a;

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/u;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/u;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/s$a;->b:Lkotlinx/coroutines/flow/s;

    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/StartedLazily;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/s$a;->c:Lkotlinx/coroutines/flow/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lkotlinx/coroutines/flow/s$a;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/s;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide p3, 0x7fffffffffffffffL

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/s$a;->a(JJ)Lkotlinx/coroutines/flow/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JJ)Lkotlinx/coroutines/flow/s;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    invoke-direct {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(JJ)V

    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/flow/s;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/s$a;->b:Lkotlinx/coroutines/flow/s;

    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/flow/s;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/s$a;->c:Lkotlinx/coroutines/flow/s;

    return-object v0
.end method
