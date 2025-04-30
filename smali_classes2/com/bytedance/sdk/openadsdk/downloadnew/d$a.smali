.class public Lcom/bytedance/sdk/openadsdk/downloadnew/d$a;
.super Ljava/lang/Object;
.source "TTDownloadVisitor.java"

# interfaces
.implements Lcom/ss/android/download/api/config/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ss/android/download/api/model/c;Z)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->d()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->d()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->getTTDownloadEventLogger()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->shouldFilterOpenSdkLog()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->d()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/download/api/model/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->isOpenSdkEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a(Lcom/ss/android/download/api/model/c;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->onV3Event(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a(Lcom/ss/android/download/api/model/c;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->onEvent(Lorg/json/JSONObject;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private c(Lcom/ss/android/download/api/model/c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/download/api/model/c;->l()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 3
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    .line 4
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->builder()Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/ss/android/download/api/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->setTag(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/ss/android/download/api/model/c;->h()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->setExtJson(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->setMaterialMeta(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/ss/android/download/api/model/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->setLabel(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/ss/android/download/api/model/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_notification"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/ss/android/download/api/model/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "landing_h5_download_ad_button"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 11
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->d()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->d()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->executeLogUpload(Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/download/api/model/c;)V
    .locals 2

    const-string v0, "LibEventLogger"

    const-string v1, "onV3Event"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$a;->a(Lcom/ss/android/download/api/model/c;Z)V

    return-void
.end method

.method public b(Lcom/ss/android/download/api/model/c;)V
    .locals 2

    const-string v0, "LibEventLogger"

    const-string v1, "onEvent called"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$a;->a(Lcom/ss/android/download/api/model/c;Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$a;->c(Lcom/ss/android/download/api/model/c;)V

    return-void
.end method
