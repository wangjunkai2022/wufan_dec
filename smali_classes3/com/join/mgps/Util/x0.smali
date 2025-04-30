.class public Lcom/join/mgps/Util/x0;
.super Landroid/os/Handler;
.source "MainHandler.java"


# static fields
.field private static volatile a:Lcom/join/mgps/Util/x0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static a()Lcom/join/mgps/Util/x0;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/Util/x0;->a:Lcom/join/mgps/Util/x0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/join/mgps/Util/x0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/join/mgps/Util/x0;->a:Lcom/join/mgps/Util/x0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/mgps/Util/x0;

    invoke-direct {v1}, Lcom/join/mgps/Util/x0;-><init>()V

    sput-object v1, Lcom/join/mgps/Util/x0;->a:Lcom/join/mgps/Util/x0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/mgps/Util/x0;->a:Lcom/join/mgps/Util/x0;

    return-object v0
.end method
