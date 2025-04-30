.class Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;
.super Ljava/lang/Object;
.source "TTPluginSdkInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/f;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/AdConfig;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/api/plugin/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/f;Lcom/bytedance/sdk/openadsdk/AdConfig;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->d:Lcom/bytedance/sdk/openadsdk/api/plugin/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->a:Lcom/bytedance/sdk/openadsdk/AdConfig;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->d:Lcom/bytedance/sdk/openadsdk/api/plugin/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->a:Lcom/bytedance/sdk/openadsdk/AdConfig;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->a(Lcom/bytedance/sdk/openadsdk/api/plugin/f;Lcom/bytedance/sdk/openadsdk/AdConfig;)Lcom/bytedance/sdk/openadsdk/TTInitializer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTInitializer;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->a:Lcom/bytedance/sdk/openadsdk/AdConfig;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTInitializer;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTInitializer;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/b;->a()Lcom/bytedance/sdk/openadsdk/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->register(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    const/16 v1, 0x1069

    const-string v2, "No initializer"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->fail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
