.class final Lcom/bytedance/sdk/openadsdk/api/plugin/e$b;
.super Ljava/lang/Object;
.source "TTPluginManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const-string p1, "config"

    .line 1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "plugin_pkg_name"

    .line 2
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    .line 3
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/plugin/b;

    move-result-object p1

    const-string v1, "TTPluginManager"

    if-eqz p1, :cond_4

    .line 6
    iget-object v2, p1, Lcom/bytedance/pangle/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "success"

    .line 7
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugin update received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/bytedance/pangle/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/pangle/download/PluginDownloadBean;->isRevert()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object p1, p1, Lcom/bytedance/pangle/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->unInstallPlugin(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Lcom/bytedance/sdk/openadsdk/api/plugin/b;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "installed"

    .line 12
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p1, Lcom/bytedance/pangle/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    const/16 p2, 0x3ec

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "plugin update received with invalid config"

    .line 14
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
