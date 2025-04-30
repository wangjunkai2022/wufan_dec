.class final Lcom/bytedance/pangle/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/pangle/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/pangle/g;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/pangle/g;


# direct methods
.method constructor <init>(Lcom/bytedance/pangle/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/pangle/g$1;->a:Lcom/bytedance/pangle/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "Zeus/reporter"

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    if-nez p3, :cond_1

    .line 2
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    if-nez p4, :cond_2

    .line 3
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const/4 v1, 0x0

    .line 4
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    invoke-static {}, Lcom/bytedance/pangle/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/pangle/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_3
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_4

    .line 7
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    if-nez v1, :cond_5

    const-string v1, "unknown"

    .line 8
    :cond_5
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/pangle/download/a;->a(Landroid/content/Context;)Lcom/bytedance/pangle/download/a$a;

    move-result-object v4

    .line 9
    iget v4, v4, Lcom/bytedance/pangle/download/a$a;->h:I

    :try_start_0
    const-string v5, "net_type"

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "process_name"

    .line 11
    invoke-static {v1}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "host_package_name"

    .line 12
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "plugin_package_name"

    .line 13
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;Z)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {v1}, Lcom/bytedance/pangle/plugin/Plugin;->getApiVersionCode()I

    move-result v2

    :cond_6
    const-string v1, "plugin_api_version"

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "zeus_sdk_version"

    const-string v2, "0.0.1-beta.4200.70-pangle"

    .line 16
    invoke-static {v2}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eventName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ncategoryData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 18
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nmetricData:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nlogExtrData:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/pangle/GlobalParam;->getReporter()Lcom/bytedance/pangle/log/IZeusReporter;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 24
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 25
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 27
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 28
    :cond_7
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 29
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 32
    :cond_8
    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 33
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 35
    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 36
    :cond_9
    invoke-interface {v1, p1, v2}, Lcom/bytedance/pangle/log/IZeusReporter;->report(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 37
    :cond_a
    invoke-static {}, Lcom/bytedance/pangle/log/a;->a()Lcom/bytedance/pangle/log/a;

    invoke-static {}, Lcom/bytedance/pangle/log/a;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
