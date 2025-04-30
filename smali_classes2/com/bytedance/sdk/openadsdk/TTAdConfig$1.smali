.class Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;
.super Ljava/lang/Object;
.source "TTAdConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/AdConfig$SdkInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getSdkInfo()Lcom/bytedance/sdk/openadsdk/AdConfig$SdkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPlugin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pluginName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.byted.pangle"

    return-object v0
.end method

.method public sdkVersionCode()I
    .locals 1

    const/16 v0, 0x11fa

    return v0
.end method

.method public sdkVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "4.6.0.2"

    return-object v0
.end method
