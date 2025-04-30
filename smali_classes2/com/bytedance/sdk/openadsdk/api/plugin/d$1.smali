.class final Lcom/bytedance/sdk/openadsdk/api/plugin/d$1;
.super Ljava/lang/Object;
.source "PluginReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/d$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/d$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/d$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/d$1;->b:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b(Ljava/util/List;)V

    return-void
.end method
