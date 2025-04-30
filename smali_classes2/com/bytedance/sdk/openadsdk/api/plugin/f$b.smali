.class public Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;
.super Ljava/lang/Object;
.source "TTPluginSdkInitializer.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ThreadGroup;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "tt_pangle_group_pl_init"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;->a:Ljava/lang/ThreadGroup;

    const-string v0, "tt_pangle_thread_pl_init"

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "tt_pangle_group_pl_init"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;->a:Ljava/lang/ThreadGroup;

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7

    .line 1
    new-instance v6, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;->a:Ljava/lang/ThreadGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 3
    invoke-virtual {v6}, Ljava/lang/Thread;->isDaemon()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v6, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 5
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Thread;->getPriority()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    .line 6
    invoke-virtual {v6, v0}, Ljava/lang/Thread;->setPriority(I)V

    :cond_1
    return-object v6
.end method
