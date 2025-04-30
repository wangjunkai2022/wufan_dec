.class public Lcom/mob/tools/MobLog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mob/tools/log/NLog;
    .locals 4

    const-class v0, Lcom/mob/tools/MobLog;

    monitor-enter v0

    :try_start_0
    const-string v1, "MobSDK"

    .line 1
    sget v2, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    const-string v3, "009l4ecfcel\'d\'ececedfg"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
