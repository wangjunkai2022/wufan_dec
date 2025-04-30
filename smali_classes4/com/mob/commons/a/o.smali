.class public Lcom/mob/commons/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcom/mob/commons/a/o;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/commons/a/o;

    invoke-direct {v0}, Lcom/mob/commons/a/o;-><init>()V

    sput-object v0, Lcom/mob/commons/a/o;->a:Lcom/mob/commons/a/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "M-"

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "004Mfjhjijhm"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0, p0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/a/o;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mob/commons/a/c;",
            ">;)I"
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit16 p1, p1, 0x2710

    goto :goto_0

    :cond_0
    add-int/lit16 p1, p1, -0x2710

    :goto_0
    return p1
.end method

.method public static a()Lcom/mob/commons/a/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/a/o;->a:Lcom/mob/commons/a/o;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    .line 15
    invoke-static {p0, v0}, Lcom/mob/commons/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/os/Message;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 13
    iget-object v0, p0, Lcom/mob/commons/a/o;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/mob/commons/a/o;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private a(IJLjava/lang/Runnable;)Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mob/commons/a/o;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/commons/a/o;->b(IJLjava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private b(IJLjava/lang/Runnable;)Z
    .locals 1

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    invoke-direct {p0, v0, p2, p3}, Lcom/mob/commons/a/o;->a(Landroid/os/Message;J)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(JLjava/lang/Class;[Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mob/commons/a/c;",
            ">;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p3}, Lcom/mob/commons/a/o;->a(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p5, v2, :cond_0

    .line 3
    iget-object p5, p0, Lcom/mob/commons/a/o;->b:Landroid/os/Handler;

    invoke-virtual {p5, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    if-ne p5, v1, :cond_1

    .line 4
    iget-object p5, p0, Lcom/mob/commons/a/o;->b:Landroid/os/Handler;

    invoke-virtual {p5, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p5

    if-eqz p5, :cond_1

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p5

    .line 6
    iput v0, p5, Landroid/os/Message;->what:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    .line 7
    iput-object v0, p5, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    .line 8
    invoke-direct {p0, p5, p1, p2}, Lcom/mob/commons/a/o;->a(Landroid/os/Message;J)V

    return-void
.end method

.method public a(JLjava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    const/16 v0, 0x3eb

    .line 9
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mob/commons/a/o;->a(IJLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public b()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/a/o;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(JLjava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    const/16 v0, 0x3ec

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mob/commons/a/o;->a(IJLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public c(JLjava/lang/Runnable;)Z
    .locals 1

    const/16 v0, 0x3ed

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mob/commons/a/o;->b(IJLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 4
    iget-object p1, p0, Lcom/mob/commons/a/o;->b:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    .line 5
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3eb

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x3ed

    if-ne v1, v2, :cond_2

    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 7
    sget-object v1, Lcom/mob/commons/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_3

    const/16 v2, -0x2710

    if-ge v1, v2, :cond_5

    .line 8
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 9
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 10
    invoke-static {v1}, Lcom/mob/commons/a/c;->a(Ljava/lang/Class;)Lcom/mob/commons/a/c;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    .line 11
    aget-object p1, p1, v2

    check-cast p1, [Ljava/lang/Object;

    .line 12
    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/mob/commons/a/c;->b:I

    .line 13
    aget-object p1, p1, v2

    iput-object p1, v1, Lcom/mob/commons/a/c;->a:Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Lcom/mob/commons/a/c;->g()Z

    goto :goto_1

    .line 15
    :cond_4
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 16
    sget-object v1, Lcom/mob/commons/u;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return v0
.end method
