.class Lcom/mob/tools/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/d;->a()Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/mob/tools/a/d;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/d;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    iput-object p2, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v0}, Lcom/mob/tools/a/d;->a(Lcom/mob/tools/a/d;)[B

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->b(Lcom/mob/tools/a/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/tools/a/d;->a(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhs stch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v4}, Lcom/mob/tools/a/d;->c(Lcom/mob/tools/a/d;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mob/tools/a/d;->b(Lcom/mob/tools/a/d;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 4
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->c(Lcom/mob/tools/a/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/tools/a/d;->b(Lcom/mob/tools/a/d;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {v1}, Lcom/mob/tools/a/d;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 6
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhs ctd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 7
    iget-object v1, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 8
    :try_start_2
    iget-object v1, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v1}, Lcom/mob/tools/a/d;->h(Lcom/mob/tools/a/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 10
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    return-void

    .line 11
    :cond_0
    :try_start_4
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->c(Lcom/mob/tools/a/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/tools/a/d;->c(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 12
    :try_start_5
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ""

    .line 16
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v4, ":"

    const-string v5, ""

    .line 17
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 19
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhs cld nm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_1
    :cond_2
    move-object v3, v2

    .line 20
    :catchall_2
    :goto_1
    :try_start_7
    iget-object v4, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v4, v3}, Lcom/mob/tools/a/d;->d(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 22
    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dhs cac: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 23
    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_5

    .line 24
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 25
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dhs m5: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v2, :cond_4

    .line 26
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->c(Lcom/mob/tools/a/d;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mob/tools/a/d;->e(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/mob/tools/a/d;->a(Lcom/mob/tools/a/d;Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    goto :goto_3

    .line 27
    :cond_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dhs tbm: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v7}, Lcom/mob/tools/a/d;->d(Lcom/mob/tools/a/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 28
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->d(Lcom/mob/tools/a/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    goto :goto_3

    .line 29
    :cond_5
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->c(Lcom/mob/tools/a/d;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mob/tools/a/d;->e(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/mob/tools/a/d;->a(Lcom/mob/tools/a/d;Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    .line 30
    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 31
    :goto_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dhs cl: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", tm5: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", cm5: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v7}, Lcom/mob/tools/a/d;->e(Lcom/mob/tools/a/d;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v2, :cond_9

    .line 32
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->e(Lcom/mob/tools/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 33
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2, v3}, Lcom/mob/tools/a/d;->a(Lcom/mob/tools/a/d;Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 34
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 35
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    const-string v5, "dhs l succ"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 36
    new-instance v4, Lcom/mob/tools/a/f;

    invoke-direct {v4, v2}, Lcom/mob/tools/a/f;-><init>(Ljava/util/HashMap;)V

    .line 37
    invoke-static {}, Lcom/mob/tools/a/d;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->f(Lcom/mob/tools/a/d;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->f(Lcom/mob/tools/a/d;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v2, :cond_7

    .line 38
    :try_start_8
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->f(Lcom/mob/tools/a/d;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 39
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v5, "dhs dof succ"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_4

    .line 40
    :cond_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v5, "dhs dof fail"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    .line 41
    :try_start_9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 42
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v5, "dhs dof fail-e"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 43
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2, v3}, Lcom/mob/tools/a/d;->b(Lcom/mob/tools/a/d;Ljava/io/File;)Ljava/io/File;

    .line 44
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/tools/a/d;->f(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v2}, Lcom/mob/tools/a/d;->g(Lcom/mob/tools/a/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mob/tools/a/c;->b(Lcom/mob/tools/a/a;)Z

    move-result v2

    invoke-static {v2}, Lcom/mob/tools/a/d;->a(Z)Z

    .line 46
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "dhs fin"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_5

    .line 47
    :cond_8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "dhs l fail"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 48
    :cond_9
    :goto_5
    :try_start_a
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhs ctd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 49
    iget-object v1, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 50
    :try_start_b
    iget-object v1, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v1}, Lcom/mob/tools/a/d;->h(Lcom/mob/tools/a/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v1

    .line 51
    :try_start_c
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    :goto_6
    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_7

    :catchall_5
    move-exception v2

    .line 52
    :try_start_d
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhs oops: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 53
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 54
    :try_start_e
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhs ctd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 55
    iget-object v1, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 56
    :try_start_f
    iget-object v1, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v1}, Lcom/mob/tools/a/d;->h(Lcom/mob/tools/a/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v1

    .line 57
    :try_start_10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    goto :goto_6

    .line 58
    :goto_7
    monitor-exit v0

    return-void

    :catchall_7
    move-exception v2

    .line 59
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhs ctd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 60
    iget-object v1, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 61
    :try_start_11
    iget-object v1, p0, Lcom/mob/tools/a/d$1;->b:Lcom/mob/tools/a/d;

    invoke-static {v1}, Lcom/mob/tools/a/d;->h(Lcom/mob/tools/a/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iget-object v3, p0, Lcom/mob/tools/a/d$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v1

    .line 62
    :try_start_12
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 63
    :goto_8
    throw v2

    :catchall_9
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method
