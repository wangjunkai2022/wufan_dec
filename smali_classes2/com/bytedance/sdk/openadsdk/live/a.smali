.class public Lcom/bytedance/sdk/openadsdk/live/a;
.super Ljava/lang/Object;
.source "TTLiveSDKPluginHelper.java"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method public static a(J)V
    .locals 4

    const-string v0, "live_init_"

    .line 10
    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "csj_live"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    .line 12
    :cond_0
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 14
    sget-object v2, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .line 3
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/a;->a()Lcom/bytedance/sdk/openadsdk/b/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/live/a$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/live/a$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const-string v1, "room_id"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 7
    :try_start_0
    invoke-static {}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->getLiveRoomService()Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v3, p0, v1, v2, p1}, Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;->enterLiveRoom(Landroid/content/Context;JLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;Lcom/bytedance/android/live/base/api/ILiveInitCallback;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/a;->a()Lcom/bytedance/sdk/openadsdk/b/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/live/a$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/live/a$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;Lcom/bytedance/android/live/base/api/ILiveInitCallback;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(J)V
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "csj_live"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live_init_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(J)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "csj_live"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/a;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live_init_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x5

    if-ge p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static d(J)V
    .locals 1

    :try_start_0
    const-string v0, "com.byted.live.lite"

    .line 1
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->unInstallPlugin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3
    :goto_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/live/a;->b(J)V

    return-void
.end method
