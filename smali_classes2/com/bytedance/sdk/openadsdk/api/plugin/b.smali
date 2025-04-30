.class final Lcom/bytedance/sdk/openadsdk/api/plugin/b;
.super Lcom/bytedance/pangle/download/PluginDownloadBean;
.source "PluginConfigInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/pangle/download/PluginDownloadBean;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/b;->b:Ljava/io/File;

    iput-object v0, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mBackupUrlList:Ljava/util/List;

    return-void
.end method
