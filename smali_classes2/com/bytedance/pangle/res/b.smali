.class public final Lcom/bytedance/pangle/res/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/LayoutInflater;)V
    .locals 4

    const-string v0, "clearFactory failed."

    const-string v1, "Zeus/resources"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "mFactory"

    .line 1
    invoke-static {p0, v3, v2}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :catchall_0
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string v3, "mFactory2"

    .line 3
    invoke-static {p0, v3, v2}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 4
    :catchall_1
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
