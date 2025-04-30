.class public Lcom/mob/tools/log/NLog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/log/NLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/tools/log/NLog;->a:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/tools/log/NLog;->b:Ljava/util/HashMap;

    .line 3
    invoke-static {}, Lcom/mob/tools/b;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/tools/log/NLog;->e:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mob/tools/log/NLog;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/mob/tools/log/NLog;->d:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/mob/tools/log/NLog;->e:Z

    .line 7
    iput-object p1, p0, Lcom/mob/tools/log/NLog;->c:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/mob/tools/log/NLog;->d:I

    return-void
.end method

.method private a(IILjava/lang/String;)I
    .locals 7

    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, p3

    :goto_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 6
    :try_start_1
    iget-object p2, p0, Lcom/mob/tools/log/NLog;->c:Ljava/lang/String;

    .line 7
    iget v2, p0, Lcom/mob/tools/log/NLog;->d:I

    .line 8
    sget-object v3, Lcom/mob/tools/log/NLog;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11
    sget-object p3, Lcom/mob/tools/log/NLog;->a:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/mob/tools/log/NLog;

    :cond_1
    if-eqz v4, :cond_2

    .line 12
    iget-object p2, v4, Lcom/mob/tools/log/NLog;->c:Ljava/lang/String;

    .line 13
    iget v2, v4, Lcom/mob/tools/log/NLog;->d:I

    .line 14
    :cond_2
    invoke-static {}, Lcom/mob/commons/m;->a()Lcom/mob/commons/m;

    move-result-object p3

    invoke-virtual {p3, v1, p2, v2, v0}, Lcom/mob/commons/m;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 15
    invoke-static {}, Lcom/mob/commons/m;->a()Lcom/mob/commons/m;

    move-result-object p2

    iget-object v1, p0, Lcom/mob/tools/log/NLog;->c:Ljava/lang/String;

    iget v2, p0, Lcom/mob/tools/log/NLog;->d:I

    invoke-virtual {p2, p3, v1, v2, v0}, Lcom/mob/commons/m;->a(ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    :cond_4
    :goto_1
    invoke-static {}, Lcom/mob/commons/m;->a()Lcom/mob/commons/m;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/mob/commons/m;->a(ILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    const-string p1, "023<ddDgb,cf<bIbdbebhcgbfbdbe[g.cf;bFbfbcbiddgacacaCj"

    .line 3
    invoke-static {p1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    sget-object v0, Lcom/mob/tools/log/NLog;->a:Ljava/util/HashMap;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/log/NLog;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/mob/tools/log/NLog;

    const/4 v2, -0x1

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/log/NLog;-><init>(Ljava/lang/String;I)V

    .line 11
    sget-object v2, Lcom/mob/tools/log/NLog;->b:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/mob/tools/log/NLog;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/tools/log/NLog;->a:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/log/NLog;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/mob/tools/log/NLog;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/log/NLog;-><init>(Ljava/lang/String;I)V

    .line 4
    sget-object p1, Lcom/mob/tools/log/NLog;->b:Ljava/util/HashMap;

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstanceForSDK(Ljava/lang/String;Z)Lcom/mob/tools/log/NLog;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object p0

    return-object p0
.end method

.method public static setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lcom/mob/tools/log/NLog;->setCollector(Lcom/mob/tools/log/LogCollector;)Lcom/mob/tools/log/NLog;

    return-void
.end method


# virtual methods
.method public final crash(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->a(IILjava/lang/String;)I

    return-void
.end method

.method public final varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final dg()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mob/tools/log/NLog;->e:Z

    return-void
.end method

.method public final varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x6

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    .line 4
    invoke-virtual {p0, v1, p1, v0}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final error(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/mob/tools/log/NLog;->a(IILjava/lang/String;)I

    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/tools/log/NLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v1, p1, v0}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final varargs log(ILjava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 p3, 0x0

    .line 4
    invoke-direct {p0, p1, p3, p2}, Lcom/mob/tools/log/NLog;->a(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final log(ILjava/lang/Throwable;)I
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/mob/tools/log/NLog;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/mob/tools/log/NLog;->a(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final varargs log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p4

    if-lez v1, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p0, p2}, Lcom/mob/tools/log/NLog;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 8
    invoke-direct {p0, p1, p3, p2}, Lcom/mob/tools/log/NLog;->a(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCollector(Lcom/mob/tools/log/LogCollector;)Lcom/mob/tools/log/NLog;
    .locals 0

    return-object p0
.end method

.method public final varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final v(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final w(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    .line 4
    invoke-virtual {p0, v1, p1, v0}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final w(Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public final varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
