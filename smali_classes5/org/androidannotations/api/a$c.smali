.class public abstract Lorg/androidannotations/api/a$c;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field private executionAsked:Z

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private managed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private remainingDelay:J

.field private serial:Ljava/lang/String;

.field private targetTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/a$c;->managed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p1, p0, Lorg/androidannotations/api/a$c;->id:Ljava/lang/String;

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_1

    .line 5
    iput-wide p2, p0, Lorg/androidannotations/api/a$c;->remainingDelay:J

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, p0, Lorg/androidannotations/api/a$c;->targetTimeMillis:J

    .line 7
    :cond_1
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iput-object p4, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/androidannotations/api/a$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/a$c;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/androidannotations/api/a$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/androidannotations/api/a$c;->executionAsked:Z

    return p0
.end method

.method static synthetic access$202(Lorg/androidannotations/api/a$c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/androidannotations/api/a$c;->executionAsked:Z

    return p1
.end method

.method static synthetic access$300(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/a$c;->future:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic access$302(Lorg/androidannotations/api/a$c;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/androidannotations/api/a$c;->future:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$400(Lorg/androidannotations/api/a$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/androidannotations/api/a$c;->remainingDelay:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/a$c;->managed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$600(Lorg/androidannotations/api/a$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/a$c;->postExecute()V

    return-void
.end method

.method private postExecute()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/a$c;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lorg/androidannotations/api/a;->a()Ljava/lang/ThreadLocal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    const-class v0, Lorg/androidannotations/api/a;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/androidannotations/api/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v1}, Lorg/androidannotations/api/a;->c(Ljava/lang/String;)Lorg/androidannotations/api/a$c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-wide v2, v1, Lorg/androidannotations/api/a$c;->remainingDelay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 8
    iget-wide v2, v1, Lorg/androidannotations/api/a$c;->targetTimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/androidannotations/api/a$c;->remainingDelay:J

    .line 9
    :cond_1
    invoke-static {v1}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/a$c;->managed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/androidannotations/api/a;->a()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lorg/androidannotations/api/a$c;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lorg/androidannotations/api/a$c;->postExecute()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/androidannotations/api/a$c;->postExecute()V

    .line 5
    throw v0
.end method
