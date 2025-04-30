.class public abstract Lcom/xinzhu/overmind/client/a;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHostPackageName()Ljava/lang/String;
.end method

.method public abstract getMainAuthorityPrefix()Ljava/lang/String;
.end method

.method public abstract getMainPackageName()Ljava/lang/String;
.end method

.method public abstract getPluginAuthorityPrefix()Ljava/lang/String;
.end method

.method public abstract getPluginPackageName()Ljava/lang/String;
.end method

.method public abstract ifDisableDaemonService()Z
.end method

.method public abstract ifDisablePluginPackageAutoManage()Z
.end method

.method public abstract ifDisableVirtualDeviceForPackage(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation
.end method

.method public isHideRoot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHideXposed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPluginValid()Z
.end method

.method public isUseGlobalFakePath()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
