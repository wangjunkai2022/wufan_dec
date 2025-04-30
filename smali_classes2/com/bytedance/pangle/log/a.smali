.class public Lcom/bytedance/pangle/log/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/bytedance/pangle/log/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/pangle/log/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/pangle/log/a;->a:Lcom/bytedance/pangle/log/a;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/bytedance/pangle/log/a;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/bytedance/pangle/log/a;

    invoke-direct {v1}, Lcom/bytedance/pangle/log/a;-><init>()V

    sput-object v1, Lcom/bytedance/pangle/log/a;->a:Lcom/bytedance/pangle/log/a;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/pangle/log/a;->a:Lcom/bytedance/pangle/log/a;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const-string v0, "Zeus/DefaultReporterImpl"

    const-string v1, "skip default report"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
