.class public final Lcom/efs/sdk/base/core/controller/a/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/efs/sdk/base/core/config/b$a;->a()Lcom/efs/sdk/base/core/config/b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "network change: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "efs.info.manager"

    const/4 v4, 0x0

    .line 5
    invoke-static {v3, v2, v4}, Lcom/efs/sdk/base/core/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, v0, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string v2, "net"

    invoke-virtual {v0, v2, v1}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
