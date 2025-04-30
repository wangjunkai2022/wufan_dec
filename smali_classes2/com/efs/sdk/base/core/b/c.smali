.class public final Lcom/efs/sdk/base/core/b/c;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/core/b/c$a;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Lcom/efs/sdk/base/core/util/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/efs/sdk/base/core/b/c;->a:Z

    const/4 v0, 0x2

    const-wide/32 v1, 0xea60

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/b/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/core/b/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/efs/sdk/base/core/b/c$a;->a()Lcom/efs/sdk/base/core/b/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disk listener not support command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "efs.cache"

    .line 3
    invoke-static {v1, p1, v0}, Lcom/efs/sdk/base/core/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/efs/sdk/base/core/b/a$b;->a()Lcom/efs/sdk/base/core/b/a;

    .line 2
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/efs/sdk/base/core/util/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lcom/efs/sdk/base/core/util/b;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/efs/sdk/base/core/b/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v1}, Lcom/efs/sdk/base/core/b/a;->c(Ljava/io/File;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object v0

    const-string v1, "disk_bytes"

    const-string v2, "4194304"

    .line 9
    iget-object v3, v0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    .line 10
    iget-object v3, v3, Lcom/efs/sdk/base/core/config/a/b;->e:Ljava/util/Map;

    .line 11
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    iget-object v0, v0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    .line 13
    iget-object v0, v0, Lcom/efs/sdk/base/core/config/a/b;->e:Ljava/util/Map;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 15
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v0

    .line 16
    :goto_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 17
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v2

    iget-object v2, v2, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v3

    invoke-virtual {v3}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/efs/sdk/base/core/util/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 18
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v3

    iget-object v3, v3, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getAppid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/efs/sdk/base/core/util/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 19
    invoke-static {v2}, Lcom/efs/sdk/base/core/util/b;->c(Ljava/io/File;)J

    move-result-wide v4

    invoke-static {v3}, Lcom/efs/sdk/base/core/util/b;->c(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v4, v2

    cmp-long v2, v4, v0

    if-gez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 20
    :goto_3
    iput-boolean v2, p0, Lcom/efs/sdk/base/core/b/c;->a:Z

    if-nez v2, :cond_5

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cache Limited! curr "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "byte, max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " byte."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "efs.cache"

    .line 22
    invoke-static {v2, v0, v1}, Lcom/efs/sdk/base/core/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    const/4 v0, 0x2

    const-wide/32 v1, 0x927c0

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
