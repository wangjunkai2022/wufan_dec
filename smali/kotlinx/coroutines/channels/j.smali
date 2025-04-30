.class Lkotlinx/coroutines/channels/j;
.super Lkotlinx/coroutines/a;
.source "Broadcast.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/w;
.implements Lkotlinx/coroutines/channels/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/channels/w<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/h<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,199:1\n702#2,2:200\n702#2,2:202\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n149#1:200,2\n154#1:202,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0012\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0012\u0004\u0012\u00028\u00000\u0005B%\u0012\u0006\u00105\u001a\u000204\u0012\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u00106\u001a\u00020\u0007\u00a2\u0006\u0004\u00087\u00108J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0097\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ.\u0010\u0010\u001a\u00020\u00032#\u0010\u000f\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00030\nH\u0097\u0001J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0096\u0001J\'\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00132\u0006\u0010\u0006\u001a\u00028\u0000H\u0096\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001b\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0018\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0007J\u0016\u0010\u001b\u001a\u00020\u00032\u000e\u0010\u000e\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aJ\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0017\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0018\u0010!\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u0007H\u0014J\u0012\u0010\"\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0016R\u0016\u0010%\u001a\u00020\u00078\u0016@\u0017X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\"\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0004@\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0016\u0010+\u001a\u00020\u00078V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010$R(\u00100\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000-0,8\u0016@\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u001c\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u00000-8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00069"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/j;",
        "E",
        "Lkotlinx/coroutines/a;",
        "",
        "Lkotlinx/coroutines/channels/w;",
        "Lkotlinx/coroutines/channels/h;",
        "element",
        "",
        "offer",
        "(Ljava/lang/Object;)Z",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "handler",
        "z",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "v",
        "Lkotlinx/coroutines/channels/n;",
        "B",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "R",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "a",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "b",
        "i0",
        "value",
        "v1",
        "(Lkotlin/Unit;)V",
        "handled",
        "r1",
        "P",
        "S",
        "()Z",
        "isClosedForSend",
        "c",
        "Lkotlinx/coroutines/channels/h;",
        "u1",
        "()Lkotlinx/coroutines/channels/h;",
        "_channel",
        "isActive",
        "Lkotlinx/coroutines/selects/e;",
        "Lkotlinx/coroutines/channels/b0;",
        "r",
        "()Lkotlinx/coroutines/selects/e;",
        "onSend",
        "getChannel",
        "()Lkotlinx/coroutines/channels/b0;",
        "channel",
        "Lkotlin/coroutines/CoroutineContext;",
        "parentContext",
        "active",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/h;Z)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final c:Lkotlinx/coroutines/channels/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/h<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/h;Z)V
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/channels/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/h<",
            "TE;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p3}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    .line 3
    sget-object p2, Lkotlinx/coroutines/c2;->Q:Lkotlinx/coroutines/c2$b;

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/c2;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->G0(Lkotlinx/coroutines/c2;)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public P(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->P(Ljava/lang/Throwable;)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->start()Z

    return p1
.end method

.method public R(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/channels/b0;->R(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public S()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/b0;->S()Z

    move-result v0

    return v0
.end method

.method public final synthetic a(Ljava/lang/Throwable;)Z
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/j;->i0(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/j;->i0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getChannel()Lkotlinx/coroutines/channels/b0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/b0<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public i0(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/coroutines/JobSupport;->i1(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/h;->b(Ljava/util/concurrent/CancellationException;)V

    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->g0(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/a;->isActive()Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public r()Lkotlinx/coroutines/selects/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/e<",
            "TE;",
            "Lkotlinx/coroutines/channels/b0<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/b0;->r()Lkotlinx/coroutines/selects/e;

    move-result-object v0

    return-object v0
.end method

.method protected r1(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->P(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/q0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic s1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/j;->v1(Lkotlin/Unit;)V

    return-void
.end method

.method protected final u1()Lkotlinx/coroutines/channels/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/h<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    return-object v0
.end method

.method public v()Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/h;->v()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method protected v1(Lkotlin/Unit;)V
    .locals 2
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/channels/b0$a;->a(Lkotlinx/coroutines/channels/b0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public z(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/j;->c:Lkotlinx/coroutines/channels/h;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->z(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
