.class public Lcom/tencent/cos/utils/QLog;
.super Ljava/lang/Object;
.source "QLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/cos/utils/QLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/tencent/cos/COSClient;->isEnableLog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/cos/COSClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "COS"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/RecordLog;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/cos/utils/RecordLog;

    move-result-object v0

    const-string v1, "d"

    .line 4
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/tencent/cos/utils/RecordLog;->appendRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/cos/utils/QLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/tencent/cos/COSClient;->isEnableLog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/cos/COSClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "COS"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/RecordLog;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/cos/utils/RecordLog;

    move-result-object v0

    const-string v1, "e"

    .line 4
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/tencent/cos/utils/RecordLog;->appendRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/cos/utils/QLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/tencent/cos/COSClient;->isEnableLog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/cos/COSClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "COS"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/RecordLog;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/cos/utils/RecordLog;

    move-result-object v0

    const-string v1, "i"

    .line 4
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/tencent/cos/utils/RecordLog;->appendRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/tencent/cos/COSClient;->isEnableLog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/cos/COSClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "COS"

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/RecordLog;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/cos/utils/RecordLog;

    move-result-object v0

    const-string v1, "w"

    .line 4
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/tencent/cos/utils/RecordLog;->appendRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
