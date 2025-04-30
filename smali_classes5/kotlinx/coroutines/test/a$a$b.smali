.class public final Lkotlinx/coroutines/test/a$a$b;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/test/a$a;->g(JLkotlinx/coroutines/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext$Dispatcher\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n229#2:19\n230#2:21\n1#3:20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0000H\n\u00a8\u0006\u0001"
    }
    d2 = {
        "",
        "kotlinx/coroutines/w2$a",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/p;

.field final synthetic b:Lkotlinx/coroutines/test/a$a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/p;Lkotlinx/coroutines/test/a$a;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/test/a$a$b;->a:Lkotlinx/coroutines/p;

    iput-object p2, p0, Lkotlinx/coroutines/test/a$a$b;->b:Lkotlinx/coroutines/test/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/test/a$a$b;->a:Lkotlinx/coroutines/p;

    iget-object v1, p0, Lkotlinx/coroutines/test/a$a$b;->b:Lkotlinx/coroutines/test/a$a;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/p;->M(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    return-void
.end method
