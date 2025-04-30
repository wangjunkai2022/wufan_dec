.class public Lcom/bytedance/pangle/download/PluginDownloadBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mApiVersionMax:I

.field public mApiVersionMin:I

.field public mBackupUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFlag:I

.field public mFollowId:J

.field public mMd5:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mApiVersionMin:I

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mApiVersionMax:I

    return-void
.end method


# virtual methods
.method public allowDownload()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mVersionCode:I

    .line 2
    iget-object v0, v0, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ALLOW_DOWNLOAD__"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRevert()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mFlag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUnInstall()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
