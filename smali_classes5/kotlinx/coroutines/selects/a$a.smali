.class public final Lkotlinx/coroutines/selects/a$a;
.super Ljava/lang/Object;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/a;
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
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static a(Lkotlinx/coroutines/selects/a;Lkotlinx/coroutines/selects/e;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p0    # Lkotlinx/coroutines/selects/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/a<",
            "-TR;>;",
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

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0, p2}, Lkotlinx/coroutines/selects/a;->f(Lkotlinx/coroutines/selects/e;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
