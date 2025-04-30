.class public Lcom/papa91/arc/ext/ToastManager;
.super Ljava/lang/Object;
.source "ToastManager.java"


# static fields
.field private static final lastMonitor:Ljava/lang/Object;

.field private static volatile lastToast:Landroid/widget/Toast;

.field private static volatile lastUserHide:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final lastUserMonitor:Ljava/lang/Object;

.field private static volatile lastUserToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private static source:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/papa91/arc/ext/ToastManager;->lastMonitor:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/papa91/arc/ext/ToastManager;->lastUserMonitor:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/widget/Toast;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/papa91/arc/ext/ToastManager$2;

    invoke-direct {v0, p0}, Lcom/papa91/arc/ext/ToastManager$2;-><init>(Landroid/widget/Toast;)V

    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static fixToast(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 8

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 5
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 6
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mShow"

    .line 7
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "mHide"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "mHandler"

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 11
    instance-of v7, v6, Landroid/os/Handler;

    if-eqz v7, :cond_2

    .line 12
    check-cast v6, Landroid/os/Handler;

    invoke-static {v6}, Lcom/papa91/arc/ext/Tools$HandlerWrapper;->wrap(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_1
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 14
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 15
    instance-of v7, v6, Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 16
    check-cast v6, Ljava/lang/Runnable;

    invoke-static {v6}, Lcom/papa91/arc/ext/Tools$RunnableWrapper;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I

    :cond_3
    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/papa91/arc/ext/ToastManager;->source:Landroid/content/Context;

    return-void
.end method

.method public static show(Landroid/widget/Toast;)V
    .locals 6

    .line 3
    sget-object v0, Lcom/papa91/arc/ext/ToastManager;->lastUserMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/papa91/arc/ext/ToastManager;->lastUserToast:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast;

    .line 6
    :goto_0
    sput-object v2, Lcom/papa91/arc/ext/ToastManager;->lastUserToast:Ljava/lang/ref/WeakReference;

    .line 7
    sget-object v3, Lcom/papa91/arc/ext/ToastManager;->lastUserHide:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 9
    :goto_1
    sput-object v2, Lcom/papa91/arc/ext/ToastManager;->lastUserHide:Ljava/lang/ref/WeakReference;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->fixToast(Landroid/widget/Toast;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 12
    new-instance v4, Lcom/papa91/arc/ext/ToastManager$1;

    invoke-direct {v4, p0}, Lcom/papa91/arc/ext/ToastManager$1;-><init>(Landroid/widget/Toast;)V

    .line 13
    monitor-enter v0

    .line 14
    :try_start_1
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v5, Lcom/papa91/arc/ext/ToastManager;->lastUserToast:Ljava/lang/ref/WeakReference;

    .line 15
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/papa91/arc/ext/ToastManager;->lastUserHide:Ljava/lang/ref/WeakReference;

    .line 16
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    sget-object p0, Lcom/papa91/arc/ext/ToastManager;->lastMonitor:Ljava/lang/Object;

    monitor-enter p0

    .line 18
    :try_start_2
    sget-object v0, Lcom/papa91/arc/ext/ToastManager;->lastToast:Landroid/widget/Toast;

    .line 19
    sput-object v2, Lcom/papa91/arc/ext/ToastManager;->lastToast:Landroid/widget/Toast;

    .line 20
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->cancel(Landroid/widget/Toast;)V

    .line 22
    invoke-static {v1}, Lcom/papa91/arc/ext/ToastManager;->cancel(Landroid/widget/Toast;)V

    .line 23
    invoke-static {}, Lcom/papa91/arc/ext/ThreadManager;->getHandlerUiThread()Landroid/os/Handler;

    move-result-object p0

    if-eqz v3, :cond_2

    .line 24
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    const-wide/16 v0, 0xbb8

    .line 25
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    .line 26
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    .line 27
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 28
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public static show(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static show(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/arc/ext/ToastManager;->source:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Landroid/widget/Toast;)V

    return-void
.end method
