.class Lcom/bytedance/sdk/openadsdk/api/plugin/e$1;
.super Ljava/lang/Object;
.source "TTPluginManager.java"

# interfaces
.implements Lcom/bytedance/pangle/log/IZeusReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/api/plugin/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$1;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
