.class public final Lkotlinx/coroutines/f2;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "kotlinx/coroutines/g2",
        "kotlinx/coroutines/h2"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final A(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->y(Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final B(Lkotlinx/coroutines/c2;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->z(Lkotlinx/coroutines/c2;)V

    return-void
.end method

.method public static final C(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/c2;
    .locals 0
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/c2;

    move-result-object p0

    return-object p0
.end method

.method public static final D(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 0
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->B(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p0

    return p0
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/j1;
    .locals 0
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/j1;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->a(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/j1;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/f0;
    .locals 0
    .param p0    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->b(Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/c2;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "Job"
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->c(Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/c2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lkotlinx/coroutines/c2;ILjava/lang/Object;)Lkotlinx/coroutines/f0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/h2;->d(Lkotlinx/coroutines/c2;ILjava/lang/Object;)Lkotlinx/coroutines/f0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkotlinx/coroutines/c2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/h2;->e(Lkotlinx/coroutines/c2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->f(Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final g(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/h2;->g(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final h(Lkotlinx/coroutines/c2;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/h2;->h(Lkotlinx/coroutines/c2;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic i(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/h2;->i(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/h2;->j(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lkotlinx/coroutines/c2;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/h2;->k(Lkotlinx/coroutines/c2;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/h2;->l(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final m(Lkotlinx/coroutines/c2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c2;",
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
    invoke-static {p0, p1}, Lkotlinx/coroutines/h2;->m(Lkotlinx/coroutines/c2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->n(Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic o(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/h2;->o(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final p(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/h2;->p(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final synthetic q(Lkotlinx/coroutines/c2;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/h2;->q(Lkotlinx/coroutines/c2;)V

    return-void
.end method

.method public static final synthetic r(Lkotlinx/coroutines/c2;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/h2;->r(Lkotlinx/coroutines/c2;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final s(Lkotlinx/coroutines/c2;Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/h2;->s(Lkotlinx/coroutines/c2;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic t(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/h2;->t(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic u(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/h2;->u(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic v(Lkotlinx/coroutines/c2;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/h2;->v(Lkotlinx/coroutines/c2;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic w(Lkotlinx/coroutines/c2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/h2;->w(Lkotlinx/coroutines/c2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public static final x(Lkotlinx/coroutines/p;Ljava/util/concurrent/Future;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/p<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/g2;->a(Lkotlinx/coroutines/p;Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static final y(Lkotlinx/coroutines/c2;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/j1;
    .locals 0
    .param p0    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c2;",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lkotlinx/coroutines/j1;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/g2;->b(Lkotlinx/coroutines/c2;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/j1;

    move-result-object p0

    return-object p0
.end method

.method public static final z(Lkotlinx/coroutines/c2;Lkotlinx/coroutines/j1;)Lkotlinx/coroutines/j1;
    .locals 0
    .param p0    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/j1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/h2;->x(Lkotlinx/coroutines/c2;Lkotlinx/coroutines/j1;)Lkotlinx/coroutines/j1;

    move-result-object p0

    return-object p0
.end method
