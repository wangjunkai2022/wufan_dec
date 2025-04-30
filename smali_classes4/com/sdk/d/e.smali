.class public abstract Lcom/sdk/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/sdk/d/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/d/e$a;,
        Lcom/sdk/d/e$c;,
        Lcom/sdk/d/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sdk/d/k;"
    }
.end annotation


# static fields
.field public static final a:Lcom/sdk/d/e$b;

.field public static final b:Ljava/util/concurrent/Executor;


# instance fields
.field public final c:Lcom/sdk/d/e$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/e$c<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile g:Z

.field public h:Ljava/lang/Boolean;

.field public i:Lcom/sdk/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sdk/d/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sdk/d/e$b;-><init>(Lcom/sdk/d/c;)V

    sput-object v0, Lcom/sdk/d/e;->a:Lcom/sdk/d/e$b;

    new-instance v0, Lcom/sdk/d/g;

    invoke-direct {v0}, Lcom/sdk/d/g;-><init>()V

    sput-object v0, Lcom/sdk/d/e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdk/d/e;->g:Z

    sget-boolean v0, Lcom/sdk/f/g;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    new-instance v0, Lcom/sdk/d/c;

    invoke-direct {v0, p0}, Lcom/sdk/d/c;-><init>(Lcom/sdk/d/e;)V

    iput-object v0, p0, Lcom/sdk/d/e;->c:Lcom/sdk/d/e$c;

    new-instance v1, Lcom/sdk/d/d;

    invoke-direct {v1, p0, v0}, Lcom/sdk/d/d;-><init>(Lcom/sdk/d/e;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/sdk/d/e;->d:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public static synthetic a(Lcom/sdk/d/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sdk/d/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/sdk/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/sdk/d/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lcom/sdk/d/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sdk/d/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sdk/d/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/sdk/d/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sdk/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    sget-object v0, Lcom/sdk/d/e;->a:Lcom/sdk/d/e$b;

    new-instance v1, Lcom/sdk/d/e$a;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/sdk/d/e$a;-><init>(Lcom/sdk/d/e;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sdk/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/sdk/d/e;->a:Lcom/sdk/d/e$b;

    new-instance v1, Lcom/sdk/d/e$a;

    invoke-direct {v1, p0, p1}, Lcom/sdk/d/e$a;-><init>(Lcom/sdk/d/e;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
