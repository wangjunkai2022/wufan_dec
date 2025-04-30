.class Lcom/bytedance/sdk/openadsdk/api/plugin/f$a;
.super Ljava/lang/Object;
.source "TTPluginSdkInitializer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$a;->a:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$a;->a:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->fail(ILjava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public success()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$a;->a:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->success()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a()V

    return-void
.end method
