.class Landroidx/recyclerview/widget/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;->getBackgroundProxy(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final g:I = 0x1

.field static final h:I = 0x2

.field static final i:I = 0x3

.field static final j:I = 0x4


# instance fields
.field final a:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

.field private final b:Ljava/util/concurrent/Executor;

.field c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/lang/Runnable;

.field final synthetic e:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

.field final synthetic f:Landroidx/recyclerview/widget/MessageThreadUtil;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil;Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->f:Landroidx/recyclerview/widget/MessageThreadUtil;

    iput-object p2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->e:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-direct {p1}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->a:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 3
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->b:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p1, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;-><init>(Landroidx/recyclerview/widget/MessageThreadUtil$2;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->a:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->c(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->a()V

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->a:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->d(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->a()V

    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->a(III)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->b(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->c(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->b(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public refresh(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->c(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->c(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public updateRange(IIIII)V
    .locals 7

    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->b(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->c(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method
