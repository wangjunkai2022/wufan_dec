.class public Lcom/ss/android/downloadlib/addownload/b/e;
.super Ljava/lang/Object;
.source "ModelBox.java"

# interfaces
.implements Lcom/ss/android/downloadad/api/a/a;


# instance fields
.field public a:J

.field public b:Lcom/ss/android/download/api/download/DownloadModel;

.field public c:Lcom/ss/android/download/api/download/DownloadEventConfig;

.field public d:Lcom/ss/android/download/api/download/DownloadController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 0
    .param p3    # Lcom/ss/android/download/api/download/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ss/android/download/api/download/DownloadEventConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/ss/android/download/api/download/DownloadController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    .line 4
    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 5
    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    .line 6
    iput-object p5, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/DeepLink;->getOpenUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getExtra()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFunnelType()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getRefer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickButtonTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getParamsJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getExtraValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->isEnableV3Event()Z

    move-result v0

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getClickTrackUrl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getExtraEventObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public p()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getExtraJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->enableNewActivity()Z

    move-result v0

    return v0
.end method

.method public r()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadSettings()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getDownloadScene()I

    move-result v0

    return v0
.end method

.method public u()Lcom/ss/android/download/api/download/DownloadModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    return-object v0
.end method

.method public v()Lcom/ss/android/download/api/download/DownloadEventConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    return-object v0
.end method

.method public w()Lcom/ss/android/download/api/download/DownloadController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    return-object v0
.end method

.method public x()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    cmp-long v5, v0, v3

    if-gtz v5, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public y()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/b/e;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    instance-of v2, v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    instance-of v0, v0, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    instance-of v0, v0, Lcom/ss/android/downloadad/api/download/AdDownloadController;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    instance-of v0, v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    return v0
.end method
