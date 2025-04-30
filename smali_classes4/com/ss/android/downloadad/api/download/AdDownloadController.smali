.class public Lcom/ss/android/downloadad/api/download/AdDownloadController;
.super Ljava/lang/Object;
.source "AdDownloadController.java"

# interfaces
.implements Lcom/ss/android/download/api/download/DownloadController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;
    }
.end annotation


# instance fields
.field protected mDownloadMode:I

.field protected mEnableAH:Z

.field protected mEnableAM:Z

.field protected mEnableNewActivity:Z

.field protected mEnableShowComplianceDialog:Z

.field protected mExtraClickOperation:Ljava/lang/Object;

.field protected mExtraJson:Lorg/json/JSONObject;

.field protected mExtraObject:Ljava/lang/Object;

.field protected mInterceptFlag:I

.field protected mIsAddToDownloadManage:Z

.field protected mIsAutoDownloadOnCardShow:Z

.field protected mIsEnableBackDialog:Z

.field protected mLinkMode:I

.field protected mShouldUseNewWebView:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableShowComplianceDialog:Z

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableNewActivity:Z

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableAH:Z

    .line 5
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableAM:Z

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadController;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;-><init>()V

    :try_start_0
    const-string v1, "link_mode"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setLinkMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "download_mode"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setDownloadMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "enable_back_dialog"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "add_to_manage"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setIsAddToDownloadManage(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "use_new_webview"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setShouldUseNewWebView(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "intercept_flag"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setInterceptFlag(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "enable_show_compliance_dialog"

    .line 8
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableShowComplianceDialog(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "is_auto_download_on_card_show"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setIsAutoDownloadOnCardShow(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "enable_new_activity"

    .line 10
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableNewActivity(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "enable_ah"

    .line 11
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableAH(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "enable_am"

    .line 12
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableAM(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    const-string v1, "extra"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setExtraJson(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 14
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->s()Lcom/ss/android/download/api/b/a;

    move-result-object v1

    const-string v2, "AdDownloadController fromJson"

    invoke-interface {v1, p0, v2}, Lcom/ss/android/download/api/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    :goto_7
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public enableAH()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableAH:Z

    return v0
.end method

.method public enableAM()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableAM:Z

    return v0
.end method

.method public enableNewActivity()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableNewActivity:Z

    return v0
.end method

.method public enableShowComplianceDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableShowComplianceDialog:Z

    return v0
.end method

.method public getDowloadChunkCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mDownloadMode:I

    return v0
.end method

.method public getExtraClickOperation()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mExtraClickOperation:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraJson()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mExtraJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getExtraObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mExtraObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getInterceptFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mInterceptFlag:I

    return v0
.end method

.method public getLinkMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mLinkMode:I

    return v0
.end method

.method public isAddToDownloadManage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mIsAddToDownloadManage:Z

    return v0
.end method

.method public isAutoDownloadOnCardShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mIsAutoDownloadOnCardShow:Z

    return v0
.end method

.method public isEnableBackDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mIsEnableBackDialog:Z

    return v0
.end method

.method public isEnableMultipleDownload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDownloadMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mDownloadMode:I

    return-void
.end method

.method public setEnableNewActivity(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableNewActivity:Z

    return-void
.end method

.method public setEnableShowComplianceDialog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableShowComplianceDialog:Z

    return-void
.end method

.method public setExtraJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mExtraJson:Lorg/json/JSONObject;

    return-void
.end method

.method public setExtraObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mExtraObject:Ljava/lang/Object;

    return-void
.end method

.method public setIsAutoDownloadOnCardShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mIsAutoDownloadOnCardShow:Z

    return-void
.end method

.method public setLinkMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mLinkMode:I

    return-void
.end method

.method public shouldUseNewWebView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mShouldUseNewWebView:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "link_mode"

    .line 2
    iget v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mLinkMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "download_mode"

    .line 3
    iget v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mDownloadMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enable_back_dialog"

    .line 4
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mIsEnableBackDialog:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "add_to_manage"

    .line 5
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mIsAddToDownloadManage:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "use_new_webview"

    .line 6
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mShouldUseNewWebView:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "intercept_flag"

    .line 7
    iget v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mInterceptFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enable_show_compliance_dialog"

    .line 8
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableShowComplianceDialog:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_auto_download_on_card_show"

    .line 9
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mIsAutoDownloadOnCardShow:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extra"

    .line 10
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mExtraJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enable_new_activity"

    .line 11
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableNewActivity:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enable_ah"

    .line 12
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableAH:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enable_am"

    .line 13
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadController;->mEnableAM:Z

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v1

    .line 14
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->s()Lcom/ss/android/download/api/b/a;

    move-result-object v2

    const-string v3, "AdDownloadController toJson"

    invoke-interface {v2, v1, v3}, Lcom/ss/android/download/api/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_8
    return-object v0
.end method
