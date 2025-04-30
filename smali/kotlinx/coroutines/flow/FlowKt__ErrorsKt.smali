.class final synthetic Lkotlinx/coroutines/flow/FlowKt__ErrorsKt;
.super Ljava/lang/Object;
.source "Errors.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,226:1\n106#2:227\n106#2:229\n1#3:228\n72#4,3:230\n167#5:233\n*S KotlinDebug\n*F\n+ 1 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n58#1:227\n171#1:229\n194#1:230,3\n223#1:233\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aj\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012B\u0010\u000c\u001a>\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0002\u00a2\u0006\u0002\u0008\u000b\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001aB\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010H\u0007\u001ae\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u001423\u0008\u0002\u0010\u0012\u001a-\u0008\u0001\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u001a>\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00192\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010H\u0007\u001a\u007f\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012W\u0010\u0012\u001aS\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u001b\u00a2\u0006\u0002\u0008\u000b\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001a3\u0010 \u001a\u0004\u0018\u00010\u0004\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!\u001a\u001b\u0010$\u001a\u00020\u0011*\u00020\u00042\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%\u001a\u001d\u0010\'\u001a\u00020\u0011*\u00020\u00042\u0008\u0010&\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\'\u0010(*\\\u0008\u0007\u00104\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u00102\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010B6\u0008)\u0012\n\u0008*\u0012\u0006\u0008\n0+8,\u0012\u0008\u0008-\u0012\u0004\u0008\u0008(.\u0012\u001c\u0008/\u0012\u0018\u0008\u000bB\u0014\u00080\u0012\u0006\u00081\u0012\u0002\u0008\u000c\u0012\u0008\u00082\u0012\u0004\u0008\u0008(3\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00065"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/f;",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/flow/g;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "action",
        "b",
        "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;",
        "fallback",
        "Lkotlin/Function1;",
        "",
        "predicate",
        "f",
        "",
        "retries",
        "Lkotlin/Function2;",
        "i",
        "(Lkotlinx/coroutines/flow/f;JLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;",
        "",
        "h",
        "Lkotlin/Function4;",
        "attempt",
        "l",
        "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/f;",
        "collector",
        "c",
        "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext",
        "d",
        "(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)Z",
        "other",
        "e",
        "(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z",
        "Lkotlin/Deprecated;",
        "level",
        "Lkotlin/DeprecationLevel;",
        "ERROR",
        "message",
        "Use (Throwable) -> Boolean functional type",
        "replaceWith",
        "Lkotlin/ReplaceWith;",
        "imports",
        "expression",
        "(Throwable) -> Boolean",
        "ExceptionPredicate",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# direct methods
.method public static synthetic a()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use (Throwable) -> Boolean functional type"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "(Throwable) -> Boolean"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final b(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)V

    return-object v0
.end method

.method public static final c(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;->a:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 5
    :try_start_1
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$$inlined$collect$1;

    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$$inlined$collect$1;-><init>(Lkotlinx/coroutines/flow/g;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;->a:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1;->c:I

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/f;->e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    move-object p0, p2

    .line 6
    :goto_2
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt;->d(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object p1

    .line 7
    :cond_4
    throw p1
.end method

.method private static final d(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)Z
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/c2;->Q:Lkotlinx/coroutines/c2$b;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/c2;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lkotlinx/coroutines/c2;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/c2;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final e(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlinx/coroutines/internal/h0;->u(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lkotlinx/coroutines/internal/h0;->u(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    :goto_1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static final f(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/f;
    .locals 2
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use catch { e -> if (predicate(e)) emitAll(fallback) else throw e }"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "catch { e -> if (predicate(e)) emitAll(fallback) else throw e }"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$onErrorCollect$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$onErrorCollect$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/h;->w(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/flow/f;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$onErrorCollect$1;->a:Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$onErrorCollect$1;

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/h;->m1(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lkotlinx/coroutines/flow/f;ILkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/f;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "binary compatibility with retries: Int preview version"
    .end annotation

    .annotation build Lkotlinx/coroutines/FlowPreview;
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$6;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$6;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/h;->H1(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/f;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Expected positive amount of retries, but had "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final i(Lkotlinx/coroutines/flow/f;JLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;
    .locals 3
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;-><init>(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/h;->H1(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/f;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "Expected positive amount of retries, but had "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic j(Lkotlinx/coroutines/flow/f;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/flow/f;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const p1, 0x7fffffff

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1
    sget-object p2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$4;->a:Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$4;

    .line 2
    :cond_1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/h;->D1(Lkotlinx/coroutines/flow/f;ILkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lkotlinx/coroutines/flow/f;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/flow/f;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 1
    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/h;->E1(Lkotlinx/coroutines/flow/f;JLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/f;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function4;)V

    return-object v0
.end method
