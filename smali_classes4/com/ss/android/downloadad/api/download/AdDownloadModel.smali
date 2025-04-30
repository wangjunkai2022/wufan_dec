.class public Lcom/ss/android/downloadad/api/download/AdDownloadModel;
.super Ljava/lang/Object;
.source "AdDownloadModel.java"

# interfaces
.implements Lcom/ss/android/download/api/download/DownloadModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;
    }
.end annotation


# instance fields
.field protected mAppIcon:Ljava/lang/String;

.field protected mAppName:Ljava/lang/String;

.field protected mAutoInstall:Z

.field protected mAutoInstallWithoutNotification:Z

.field protected mBackupUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mClickTrackUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeepLink:Lcom/ss/android/download/api/model/DeepLink;

.field protected mDistinctDir:Z

.field protected mDownloadSettings:Lorg/json/JSONObject;

.field protected mDownloadUrl:Ljava/lang/String;

.field protected mEnablePause:Z

.field protected mExecutorGroup:I

.field protected mExpectFileLength:J

.field protected mExtra:Lorg/json/JSONObject;

.field protected mExtraValue:J

.field protected mFileName:Ljava/lang/String;

.field protected mFilePath:Ljava/lang/String;

.field protected mFileUriProvider:Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

.field protected mFunnelType:I

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:J

.field protected mIndependentProcess:Z

.field protected mIsAd:Z

.field protected mIsInExternalPublicDir:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mIsShowNotification:Z

.field protected mIsShowToast:Z

.field protected mLogExtra:Ljava/lang/String;

.field protected mMd5:Ljava/lang/String;

.field protected mMimeType:Ljava/lang/String;

.field protected mModelType:I

.field protected mNeedWifi:Z

.field protected mNotificationJumpUrl:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field protected mQuickAppModel:Lcom/ss/android/download/api/model/d;

.field protected mSdkMonitorScene:Ljava/lang/String;

.field protected mStartToast:Ljava/lang/String;

.field protected mVersionCode:I

.field protected mVersionName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsAd:Z

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowToast:Z

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowNotification:Z

    .line 5
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAutoInstall:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mNeedWifi:Z

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExecutorGroup:I

    .line 8
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mEnablePause:Z

    .line 9
    iput v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFunnelType:I

    return-void
.end method

.method private static appendBackupUrlsFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V
    .locals 3

    const-string v0, "backup_urls"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setBackupUrls(Ljava/util/List;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    :cond_1
    return-void
.end method

.method private static appendDeepLinkFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V
    .locals 3

    const-string v0, "open_url"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "web_url"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Lcom/ss/android/download/api/model/DeepLink;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/ss/android/download/api/model/DeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDeepLink(Lcom/ss/android/download/api/model/DeepLink;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    return-void
.end method

.method private static appendHeaderMapFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V
    .locals 5

    const-string v0, "header_keys"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "header_values"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setHeaders(Ljava/util/Map;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    :cond_1
    return-void
.end method

.method private static appendQuickAppUrlFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V
    .locals 1

    const-string v0, "quick_app_url"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/ss/android/download/api/model/d$a;

    invoke-direct {v0}, Lcom/ss/android/download/api/model/d$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ss/android/download/api/model/d$a;->a(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/download/api/model/d$a;->a()Lcom/ss/android/download/api/model/d;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setQuickAppModel(Lcom/ss/android/download/api/model/d;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    :cond_0
    return-void
.end method

.method private static appendTrackUrlFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V
    .locals 3

    const-string v0, "click_track_urls"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setClickTrackUrl(Ljava/util/List;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    :cond_1
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 2
    invoke-static {p0, v1}, Lcom/ss/android/download/api/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAdId(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "is_ad"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setIsAd(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "model_type"

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setModelType(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "mime_type"

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setMimeType(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "ext_value"

    .line 6
    invoke-static {p0, v2}, Lcom/ss/android/download/api/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setExtraValue(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "log_extra"

    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setLogExtra(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "package_name"

    .line 8
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setPackageName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "download_url"

    .line 9
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "app_name"

    .line 10
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAppName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "app_icon"

    .line 11
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAppIcon(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "is_show_toast"

    .line 12
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setIsShowToast(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "show_notification"

    .line 13
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setIsShowNotification(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "need_wifi"

    .line 14
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setNeedWifi(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "md5"

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setMd5(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "expect_file_length"

    .line 16
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setExpectFileLength(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "independent_process"

    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setNeedIndependentProcess(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "version_code"

    .line 18
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setVersionCode(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "version_name"

    .line 19
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setVersionName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "file_path"

    .line 20
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setFilePath(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "file_name"

    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setFileName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "notification_jump_url"

    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setNotificationJumpUrl(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "auto_install_without_notify"

    .line 23
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAutoInstallWithoutNotification(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "executor_group"

    .line 24
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setExecutorGroup(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "download_settings"

    .line 25
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDownloadSettings(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "extra"

    .line 26
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setExtra(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "start_toast"

    .line 27
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setStartToast(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "sdk_monitor_scene"

    .line 28
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setSdkMonitorScene(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "auto_install"

    .line 29
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAutoInstall(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "distinct_dir"

    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDistinctDir(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v1

    const-string v2, "enable_pause"

    .line 31
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_9

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v1, v3}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setEnablePause(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    .line 32
    invoke-static {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->appendDeepLinkFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V

    .line 33
    invoke-static {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->appendQuickAppUrlFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V

    .line 34
    invoke-static {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->appendTrackUrlFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V

    .line 35
    invoke-static {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->appendHeaderMapFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V

    .line 36
    invoke-static {p0, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->appendBackupUrlsFromJson(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    .line 37
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->s()Lcom/ss/android/download/api/b/a;

    move-result-object v1

    const-string v2, "AdDownloadModel fromJson"

    invoke-interface {v1, p0, v2}, Lcom/ss/android/download/api/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 38
    :goto_9
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public autoInstallWithoutNotification()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAutoInstallWithoutNotification:Z

    return v0
.end method

.method public distinctDir()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDistinctDir:Z

    return v0
.end method

.method public enablePause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mEnablePause:Z

    return v0
.end method

.method public forceHideNotification()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowNotification:Z

    return-void
.end method

.method public forceHideToast()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowToast:Z

    return-void
.end method

.method public forceWifi()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mNeedWifi:Z

    return-void
.end method

.method public getAppIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAppIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getBackupUrls()Ljava/util/List;
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
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mBackupUrls:Ljava/util/List;

    return-object v0
.end method

.method public getClickTrackUrl()Ljava/util/List;
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
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mClickTrackUrl:Ljava/util/List;

    return-object v0
.end method

.method public getDeepLink()Lcom/ss/android/download/api/model/DeepLink;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDeepLink:Lcom/ss/android/download/api/model/DeepLink;

    return-object v0
.end method

.method public getDownloadFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFileUriProvider:Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    return-object v0
.end method

.method public getDownloadSettings()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDownloadSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutorGroup()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExecutorGroup:I

    return v0
.end method

.method public getExpectFileLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExpectFileLength:J

    return-wide v0
.end method

.method public getExtra()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExtra:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getExtraValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExtraValue:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFunnelType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFunnelType:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mId:J

    return-wide v0
.end method

.method public getLogExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mLogExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModelType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mModelType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationJumpUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mNotificationJumpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuickAppModel()Lcom/ss/android/download/api/model/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mQuickAppModel:Lcom/ss/android/download/api/model/d;

    return-object v0
.end method

.method public getSdkMonitorScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mSdkMonitorScene:Ljava/lang/String;

    return-object v0
.end method

.method public getStartToast()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mStartToast:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mVersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public isAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsAd:Z

    return v0
.end method

.method public isAutoInstall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAutoInstall:Z

    return v0
.end method

.method public isInExternalPublicDir()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsInExternalPublicDir:Z

    return v0
.end method

.method public isNeedWifi()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mNeedWifi:Z

    return v0
.end method

.method public isShowNotification()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowNotification:Z

    return v0
.end method

.method public isShowToast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowToast:Z

    return v0
.end method

.method public isVisibleInDownloadsUi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needIndependentProcess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIndependentProcess:Z

    return v0
.end method

.method public setAdId(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setId(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object p1

    return-object p1
.end method

.method public setAppIcon(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAppIcon:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setAutoInstallWithoutNotification(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAutoInstallWithoutNotification:Z

    return-object p0
.end method

.method public setBackupUrls(Ljava/util/List;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/downloadad/api/download/AdDownloadModel;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mBackupUrls:Ljava/util/List;

    return-object p0
.end method

.method public setClickTrackUrl(Ljava/util/List;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/downloadad/api/download/AdDownloadModel;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mClickTrackUrl:Ljava/util/List;

    return-object p0
.end method

.method public setDeepLink(Lcom/ss/android/download/api/model/DeepLink;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDeepLink:Lcom/ss/android/download/api/model/DeepLink;

    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setExpectFileLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExpectFileLength:J

    return-void
.end method

.method public setExtra(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExtra:Lorg/json/JSONObject;

    return-void
.end method

.method public setExtraValue(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExtraValue:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setFilePath(Ljava/lang/String;)Lcom/ss/android/download/api/download/DownloadModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setFilePath(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object p1

    return-object p1
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setFileUriProvider(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFileUriProvider:Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    return-object p0
.end method

.method public setFunnelType(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFunnelType:I

    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/downloadad/api/download/AdDownloadModel;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setId(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mId:J

    return-object p0
.end method

.method public setIsAd(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsAd:Z

    return-object p0
.end method

.method public setIsShowNotification(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowNotification:Z

    return-object p0
.end method

.method public setIsShowToast(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowToast:Z

    return-void
.end method

.method public setLogExtra(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mLogExtra:Ljava/lang/String;

    return-object p0
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mMd5:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setModelType(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mModelType:I

    return-object p0
.end method

.method public setNeedIndependentProcess(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIndependentProcess:Z

    return-object p0
.end method

.method public setNeedWifi(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mNeedWifi:Z

    return-void
.end method

.method public setNotificationJumpUrl(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mNotificationJumpUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setQuickAppModel(Lcom/ss/android/download/api/model/d;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mQuickAppModel:Lcom/ss/android/download/api/model/d;

    return-object p0
.end method

.method public setSdkMonitorScene(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mSdkMonitorScene:Ljava/lang/String;

    return-void
.end method

.method public setStartToast(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mStartToast:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mVersionCode:I

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public shouldDownloadWithPatchApply()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->getDownloadSettings()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/download/api/c/b;->a(Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 2
    iget-wide v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "is_ad"

    .line 3
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsAd:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "model_type"

    .line 4
    iget v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mModelType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mime_type"

    .line 5
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ext_value"

    .line 6
    iget-wide v5, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExtraValue:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "log_extra"

    .line 7
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mLogExtra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package_name"

    .line 8
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "download_url"

    .line 9
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_name"

    .line 10
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_icon"

    .line 11
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAppIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_show_toast"

    .line 12
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowToast:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "show_notification"

    .line 13
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIsShowNotification:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "need_wifi"

    .line 14
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mNeedWifi:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "md5"

    .line 15
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expect_file_length"

    .line 16
    iget-wide v5, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExpectFileLength:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "independent_process"

    .line 17
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mIndependentProcess:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "version_code"

    .line 18
    iget v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mVersionCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "version_name"

    .line 19
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_path"

    .line 20
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_name"

    .line 21
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "notification_jump_url"

    .line 22
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mNotificationJumpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "auto_install_without_notify"

    .line 23
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAutoInstallWithoutNotification:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "executor_group"

    .line 24
    iget v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExecutorGroup:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "start_toast"

    .line 25
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mStartToast:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_monitor_scene"

    .line 26
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mSdkMonitorScene:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "auto_install"

    .line 27
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mAutoInstall:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "distinct_dir"

    .line 28
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDistinctDir:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enable_pause"

    .line 29
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mEnablePause:Z

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget-object v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDownloadSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_9

    const-string v2, "download_settings"

    .line 31
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_9
    iget-object v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mBackupUrls:Ljava/util/List;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 33
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 34
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mBackupUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 36
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_b
    const-string v2, "backup_urls"

    .line 37
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_c
    iget-object v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDeepLink:Lcom/ss/android/download/api/model/DeepLink;

    if-eqz v1, :cond_e

    .line 39
    invoke-virtual {v1}, Lcom/ss/android/download/api/model/DeepLink;->getOpenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "open_url"

    .line 40
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDeepLink:Lcom/ss/android/download/api/model/DeepLink;

    invoke-virtual {v2}, Lcom/ss/android/download/api/model/DeepLink;->getOpenUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_d
    iget-object v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDeepLink:Lcom/ss/android/download/api/model/DeepLink;

    invoke-virtual {v1}, Lcom/ss/android/download/api/model/DeepLink;->getWebUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "web_url"

    .line 42
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mDeepLink:Lcom/ss/android/download/api/model/DeepLink;

    invoke-virtual {v2}, Lcom/ss/android/download/api/model/DeepLink;->getWebUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_e
    iget-object v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mQuickAppModel:Lcom/ss/android/download/api/model/d;

    if-eqz v1, :cond_f

    const-string v2, "quick_app_url"

    .line 44
    invoke-virtual {v1}, Lcom/ss/android/download/api/model/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_f
    iget-object v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mClickTrackUrl:Ljava/util/List;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 46
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 47
    iget-object v2, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mClickTrackUrl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    :cond_10
    const-string v2, "click_track_urls"

    .line 49
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_11
    iget-object v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mExtra:Lorg/json/JSONObject;

    if-eqz v1, :cond_12

    const-string v2, "extra"

    .line 51
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_12
    iget-object v1, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mHeaders:Ljava/util/Map;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 53
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 54
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 55
    iget-object v3, p0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->mHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :cond_13
    const-string v3, "header_keys"

    .line 58
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "header_values"

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v1

    .line 60
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->s()Lcom/ss/android/download/api/b/a;

    move-result-object v2

    const-string v3, "AdDownloadModel toJson"

    invoke-interface {v2, v1, v3}, Lcom/ss/android/download/api/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_14
    :goto_c
    return-object v0
.end method
