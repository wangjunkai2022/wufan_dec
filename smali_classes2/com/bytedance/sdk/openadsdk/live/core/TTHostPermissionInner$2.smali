.class Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner$2;
.super Ljava/lang/Object;
.source "TTHostPermissionInner.java"

# interfaces
.implements Lcom/bytedance/android/live/base/api/LocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;->getTTLocation()Lcom/bytedance/android/live/base/api/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/LocationProvider;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;Lcom/bytedance/sdk/openadsdk/LocationProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner$2;->b:Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner$2;->a:Lcom/bytedance/sdk/openadsdk/LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner$2;->a:Lcom/bytedance/sdk/openadsdk/LocationProvider;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/LocationProvider;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner$2;->a:Lcom/bytedance/sdk/openadsdk/LocationProvider;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/LocationProvider;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method
