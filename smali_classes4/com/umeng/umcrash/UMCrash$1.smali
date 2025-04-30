.class Lcom/umeng/umcrash/UMCrash$1;
.super Ljava/lang/Object;
.source "UMCrash.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/umcrash/UMCrash;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCreated"

    invoke-static {p1, p2}, Lcom/umeng/umcrash/UMCrash;->access$700(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDestroyed"

    invoke-static {p1, v0}, Lcom/umeng/umcrash/UMCrash;->access$700(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPaused"

    invoke-static {p1, v0}, Lcom/umeng/umcrash/UMCrash;->access$700(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResumed"

    invoke-static {v0, v1}, Lcom/umeng/umcrash/UMCrash;->access$700(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStarted"

    invoke-static {v0, v1}, Lcom/umeng/umcrash/UMCrash;->access$700(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Lcom/umeng/umcrash/UMCrash;->access$700(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
