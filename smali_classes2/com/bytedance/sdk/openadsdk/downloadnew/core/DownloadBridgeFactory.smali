.class public Lcom/bytedance/sdk/openadsdk/downloadnew/core/DownloadBridgeFactory;
.super Ljava/lang/Object;
.source "DownloadBridgeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDownloadBridge(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdBridge;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/downloadnew/e;

    move-result-object p0

    return-object p0
.end method
