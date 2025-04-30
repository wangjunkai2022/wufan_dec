.class public Lcom/php25/PDownload/d;
.super Ljava/lang/Object;
.source "DownloadTool.java"


# static fields
.field public static final a:Ljava/lang/String; = "com.php25.PDownload.d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v0}, Lcom/php25/PDownload/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->a3(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    const/4 v1, 0x7

    invoke-static {v0, p0, v1}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/i;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/event/i;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/i;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/event/i;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/u;->e(Landroid/content/Context;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p1

    const-string v0, "checkcoin"

    invoke-virtual {p1, v0, p0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    return-void

    .line 6
    :cond_2
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    return-void
.end method

.method public static d(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/php25/PDownload/d$a;

    invoke-direct {v0, p0, p1}, Lcom/php25/PDownload/d$a;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    return-void
.end method

.method public static e(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 6

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    :cond_0
    if-nez v2, :cond_2

    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingle_game_mod_info()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/join/mgps/dto/SingleGameModInfoBean;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 10
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingle_game_mod_info()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 12
    :cond_1
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    sget-object v3, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    sget-object v3, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 19
    :cond_5
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    sget-object v0, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    :try_start_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_7
    :goto_2
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 27
    :cond_8
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 28
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 30
    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 31
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->a0(Landroid/content/Context;Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    :cond_9
    const/high16 v2, 0x42c80000    # 100.0f

    .line 32
    :try_start_2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v1, :cond_a

    goto :goto_4

    .line 33
    :cond_a
    :try_start_3
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-float/2addr v3, v4

    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v4

    const/high16 v3, 0x42c80000    # 100.0f

    .line 34
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-eqz v0, :cond_12

    const/4 v4, 0x1

    if-eq v0, v4, :cond_10

    const/4 v4, 0x2

    if-eq v0, v4, :cond_e

    const/4 v4, 0x3

    if-eq v0, v4, :cond_c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_b

    goto :goto_5

    .line 35
    :cond_b
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    if-eqz v1, :cond_15

    .line 36
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_5

    :cond_c
    cmpg-float v0, v3, v2

    if-gez v0, :cond_d

    .line 37
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    if-eqz v1, :cond_15

    .line 38
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_5

    :cond_d
    const-string v0, "\u4e0b\u8f7d\u5185\u5bb9\u5927\u4e8e100M\uff0c\u786e\u8ba4\u4f7f\u7528\u6d41\u91cf\u4e0b\u8f7d\u5417\uff1f"

    .line 39
    invoke-static {p0, v0, p1, v1}, Lcom/php25/PDownload/d;->j(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto :goto_5

    :cond_e
    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_f

    .line 40
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    if-eqz v1, :cond_15

    .line 41
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_5

    :cond_f
    const-string v0, "\u4e0b\u8f7d\u5185\u5bb9\u5927\u4e8e50M\uff0c\u786e\u8ba4\u4f7f\u7528\u6d41\u91cf\u4e0b\u8f7d\u5417\uff1f"

    .line 42
    invoke-static {p0, v0, p1, v1}, Lcom/php25/PDownload/d;->j(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto :goto_5

    :cond_10
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_11

    .line 43
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    if-eqz v1, :cond_15

    .line 44
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_5

    :cond_11
    const-string v0, "\u4e0b\u8f7d\u5185\u5bb9\u5927\u4e8e30M\uff0c\u786e\u8ba4\u4f7f\u7528\u6d41\u91cf\u4e0b\u8f7d\u5417\uff1f"

    .line 45
    invoke-static {p0, v0, p1, v1}, Lcom/php25/PDownload/d;->j(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto :goto_5

    :cond_12
    const-string v0, "\u4e0b\u8f7d\u4efb\u52a1\u5c06\u4f7f\u7528\u6570\u636e\u6d41\u91cf\uff0c\u786e\u8ba4\u4e0b\u8f7d\u5417\uff1f"

    .line 46
    invoke-static {p0, v0, p1, v1}, Lcom/php25/PDownload/d;->j(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto :goto_5

    .line 47
    :cond_13
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 48
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 49
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    const-string p1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 50
    :cond_14
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :cond_15
    :goto_5
    return-void
.end method

.method public static f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/php25/PDownload/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->a3(Landroid/content/Context;)V

    .line 3
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/event/i;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/event/i;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "activity"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x64

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.join.android.app.common.servcie.DownloadService_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v0}, Lcom/php25/PDownload/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->a3(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/i;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/event/i;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/String;J)D
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 4
    div-long/2addr v0, p1

    long-to-double p0, v0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static j(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p0

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;->d(Ljava/lang/String;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;->a(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 8
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    :goto_0
    return-void
.end method
