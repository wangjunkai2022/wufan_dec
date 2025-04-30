.class public Lcom/papa91/arc/ext/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;
    }
.end annotation


# static fields
.field private static final THREAD_COUNT:I = 0x4

.field private static final THREAD_LOG:I = 0x2

.field private static final THREAD_MAIN:I = 0x1

.field private static final THREAD_UI:I = 0x0

.field private static final THREAD_WRITE:I = 0x3

.field private static final handlers:[Landroid/os/Handler;

.field private static final loopers:[Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/os/Looper;

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;

    const-string v4, "Main"

    invoke-direct {v2, v4}, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 5
    new-instance v2, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;

    const-string v5, "Log"

    invoke-direct {v2, v5}, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 7
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 8
    new-instance v2, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;

    const-string v6, "Write"

    invoke-direct {v2, v6}, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 10
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v0, v0, [Landroid/os/Handler;

    .line 11
    new-instance v2, Landroid/os/Handler;

    aget-object v7, v1, v3

    invoke-direct {v2, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    aput-object v2, v0, v3

    new-instance v2, Landroid/os/Handler;

    aget-object v3, v1, v4

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    aput-object v2, v0, v4

    new-instance v2, Landroid/os/Handler;

    aget-object v3, v1, v5

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    aput-object v2, v0, v5

    new-instance v2, Landroid/os/Handler;

    aget-object v3, v1, v6

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    aput-object v2, v0, v6

    .line 12
    sput-object v1, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    .line 13
    sput-object v0, Lcom/papa91/arc/ext/ThreadManager;->handlers:[Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    sget-object v1, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    if-eqz v0, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    :try_start_0
    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getHandler(I)Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/ext/ThreadManager;->handlers:[Landroid/os/Handler;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getHandlerLogThread()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerMainThread()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerUiThread()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerWriteThread()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private static getLooper(I)Landroid/os/Looper;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getLooperLogThread()Landroid/os/Looper;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getLooper(I)Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getLooperMainThread()Landroid/os/Looper;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getLooper(I)Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getLooperUiThread()Landroid/os/Looper;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getLooper(I)Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getLooperWriteThread()Landroid/os/Looper;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getLooper(I)Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static isInLogThread()Z
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->isInThread(I)Z

    move-result v0

    return v0
.end method

.method public static isInMainThread()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->isInThread(I)Z

    move-result v0

    return v0
.end method

.method private static isInThread(I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    aget-object p0, v1, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInUiThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInWriteThread()Z
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->isInThread(I)Z

    move-result v0

    return v0
.end method

.method private static run(ILjava/lang/Runnable;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    const-string v1, "Bad implementation"

    const-string v2, "WF-LOG"

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "loopers"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, p0}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3
    :cond_0
    aget-object v3, v0, p0

    if-nez v3, :cond_1

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loopers["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    aget-object v0, v0, p0

    if-ne v1, v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    sget-object p2, Lcom/papa91/arc/ext/ThreadManager;->handlers:[Landroid/os/Handler;

    aget-object p0, p2, p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public static runOnLogThread(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/ext/ThreadManager;->run(ILjava/lang/Runnable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "WF-LOG"

    const-string v1, "Bad implementation"

    .line 2
    invoke-static {v0, v1, p0}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/ext/ThreadManager;->run(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, v0}, Lcom/papa91/arc/ext/ThreadManager;->run(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method public static runOnWriteThread(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/ext/ThreadManager;->run(ILjava/lang/Runnable;Z)V

    return-void
.end method
