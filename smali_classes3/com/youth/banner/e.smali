.class public Lcom/youth/banner/e;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youth/banner/e$a;,
        Lcom/youth/banner/e$c;,
        Lcom/youth/banner/e$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler$Callback;

.field private final b:Lcom/youth/banner/e$b;

.field private c:Ljava/util/concurrent/locks/Lock;

.field final d:Lcom/youth/banner/e$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/e;->c:Ljava/util/concurrent/locks/Lock;

    .line 3
    new-instance v1, Lcom/youth/banner/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/youth/banner/e$a;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/youth/banner/e;->d:Lcom/youth/banner/e$a;

    .line 4
    iput-object v2, p0, Lcom/youth/banner/e;->a:Landroid/os/Handler$Callback;

    .line 5
    new-instance v0, Lcom/youth/banner/e$b;

    invoke-direct {v0}, Lcom/youth/banner/e$b;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1    # Landroid/os/Handler$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/e;->c:Ljava/util/concurrent/locks/Lock;

    .line 8
    new-instance v1, Lcom/youth/banner/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/youth/banner/e$a;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/youth/banner/e;->d:Lcom/youth/banner/e$a;

    .line 9
    iput-object p1, p0, Lcom/youth/banner/e;->a:Landroid/os/Handler$Callback;

    .line 10
    new-instance v0, Lcom/youth/banner/e$b;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/youth/banner/e$b;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/e;->c:Ljava/util/concurrent/locks/Lock;

    .line 13
    new-instance v1, Lcom/youth/banner/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/youth/banner/e$a;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/youth/banner/e;->d:Lcom/youth/banner/e$a;

    .line 14
    iput-object v2, p0, Lcom/youth/banner/e;->a:Landroid/os/Handler$Callback;

    .line 15
    new-instance v0, Lcom/youth/banner/e$b;

    invoke-direct {v0, p1}, Lcom/youth/banner/e$b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/e;->c:Ljava/util/concurrent/locks/Lock;

    .line 18
    new-instance v1, Lcom/youth/banner/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/youth/banner/e$a;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/youth/banner/e;->d:Lcom/youth/banner/e$a;

    .line 19
    iput-object p2, p0, Lcom/youth/banner/e;->a:Landroid/os/Handler$Callback;

    .line 20
    new-instance v0, Lcom/youth/banner/e$b;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/youth/banner/e$b;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    return-void
.end method

.method private u(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Runnable can\'t be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/youth/banner/e$a;

    iget-object v1, p0, Lcom/youth/banner/e;->c:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lcom/youth/banner/e$a;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    .line 3
    iget-object p1, p0, Lcom/youth/banner/e;->d:Lcom/youth/banner/e$a;

    invoke-virtual {p1, v0}, Lcom/youth/banner/e$a;->a(Lcom/youth/banner/e$a;)V

    .line 4
    iget-object p1, v0, Lcom/youth/banner/e$a;->d:Lcom/youth/banner/e$c;

    return-object p1
.end method


# virtual methods
.method public final a()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final c(ILjava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-direct {p0, p1}, Lcom/youth/banner/e;->u(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-direct {p0, p1}, Lcom/youth/banner/e;->u(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-direct {p0, p1}, Lcom/youth/banner/e;->u(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-direct {p0, p1}, Lcom/youth/banner/e;->u(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final h(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-direct {p0, p1}, Lcom/youth/banner/e;->u(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->d:Lcom/youth/banner/e$a;

    invoke-virtual {v0, p1}, Lcom/youth/banner/e$a;->c(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->d:Lcom/youth/banner/e$a;

    invoke-virtual {v0, p1}, Lcom/youth/banner/e$a;->c(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final m(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final n(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final o(IJ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final p(IJ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final q(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final r(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public s(Landroid/os/Message;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final t(Landroid/os/Message;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e;->b:Lcom/youth/banner/e$b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
