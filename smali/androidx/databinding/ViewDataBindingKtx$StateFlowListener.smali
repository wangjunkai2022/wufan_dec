.class public final Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;
.super Ljava/lang/Object;
.source "ViewDataBindingKtx.kt"

# interfaces
.implements Landroidx/databinding/ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBindingKtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateFlowListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/databinding/ObservableReference<",
        "Lkotlinx/coroutines/flow/f<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001B\'\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u001e\u00a2\u0006\u0004\u0008 \u0010!J \u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0002J\u0016\u0010\n\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\tH\u0016J\u001a\u0010\u000c\u001a\u00020\u00072\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00072\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u0012\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0016R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R$\u0010\u0016\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0018\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;",
        "Landroidx/databinding/ObservableReference;",
        "Lkotlinx/coroutines/flow/f;",
        "",
        "Landroidx/lifecycle/LifecycleOwner;",
        "owner",
        "flow",
        "",
        "a",
        "Landroidx/databinding/WeakListener;",
        "getListener",
        "target",
        "addListener",
        "removeListener",
        "lifecycleOwner",
        "setLifecycleOwner",
        "Lkotlinx/coroutines/c2;",
        "b",
        "Lkotlinx/coroutines/c2;",
        "observerJob",
        "c",
        "Landroidx/databinding/WeakListener;",
        "listener",
        "Ljava/lang/ref/WeakReference;",
        "Ljava/lang/ref/WeakReference;",
        "_lifecycleOwnerRef",
        "Landroidx/databinding/ViewDataBinding;",
        "binder",
        "",
        "localFieldId",
        "Ljava/lang/ref/ReferenceQueue;",
        "referenceQueue",
        "<init>",
        "(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V",
        "databindingKtx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkotlinx/coroutines/c2;

.field private final c:Landroidx/databinding/WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/WeakListener<",
            "Lkotlinx/coroutines/flow/f<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/ReferenceQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    const-string v0, "referenceQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/WeakListener;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->c:Landroidx/databinding/WeakListener;

    return-void
.end method

.method private final a(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlinx/coroutines/flow/f<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->b:Lkotlinx/coroutines/c2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/c2$a;->b(Lkotlinx/coroutines/c2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    new-instance v0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1;

    invoke-direct {v0, p0, p2, v1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1;-><init>(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenCreated(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/c2;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->b:Lkotlinx/coroutines/c2;

    return-void
.end method

.method public static final synthetic access$getListener$p(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)Landroidx/databinding/WeakListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->c:Landroidx/databinding/WeakListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/f;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->addListener(Lkotlinx/coroutines/flow/f;)V

    return-void
.end method

.method public addListener(Lkotlinx/coroutines/flow/f;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    const-string v1, "_lifecycleOwnerRef?.get() ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->a(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/f;)V

    :cond_0
    return-void
.end method

.method public getListener()Landroidx/databinding/WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/WeakListener<",
            "Lkotlinx/coroutines/flow/f<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->c:Landroidx/databinding/WeakListener;

    return-object v0
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/f;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->removeListener(Lkotlinx/coroutines/flow/f;)V

    return-void
.end method

.method public removeListener(Lkotlinx/coroutines/flow/f;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->b:Lkotlinx/coroutines/c2;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/c2$a;->b(Lkotlinx/coroutines/c2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iput-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->b:Lkotlinx/coroutines/c2;

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne v0, p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->b:Lkotlinx/coroutines/c2;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/c2$a;->b(Lkotlinx/coroutines/c2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    .line 3
    iput-object v1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->a:Ljava/lang/ref/WeakReference;

    return-void

    .line 4
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->a:Ljava/lang/ref/WeakReference;

    .line 5
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->c:Landroidx/databinding/WeakListener;

    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/f;

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p1, v0}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->a(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/f;)V

    :cond_4
    return-void
.end method
