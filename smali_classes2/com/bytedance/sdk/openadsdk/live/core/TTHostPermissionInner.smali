.class public Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;
.super Ljava/lang/Object;
.source "TTHostPermissionInner.java"

# interfaces
.implements Lcom/bytedance/android/live/base/api/IHostPermission;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/TTCustomController;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner$1;-><init>(Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    :goto_0
    return-void
.end method


# virtual methods
.method public alist()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    move-result v0

    return v0
.end method

.method public getDevImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevOaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTLocation()Lcom/bytedance/android/live/base/api/LocationProvider;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner$2;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner$2;-><init>(Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;Lcom/bytedance/sdk/openadsdk/LocationProvider;)V

    return-object v1
.end method

.method public isCanUseLocation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v0

    return v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    return v0
.end method

.method public isCanUseWifiState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    return v0
.end method

.method public isCanUseWriteExternal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    return v0
.end method
