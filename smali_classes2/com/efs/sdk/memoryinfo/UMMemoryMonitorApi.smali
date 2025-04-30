.class public interface abstract Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentActivity()Ljava/lang/String;
.end method

.method public abstract isEnable()Z
.end method

.method public abstract isForeground()Z
.end method

.method public abstract onActivityResumed(Landroid/app/Activity;)V
.end method

.method public abstract onActivityStarted(Landroid/app/Activity;)V
.end method

.method public abstract onActivityStopped(Landroid/app/Activity;)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract start(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
.end method
