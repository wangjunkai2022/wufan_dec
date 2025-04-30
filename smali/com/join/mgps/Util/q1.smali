.class public Lcom/join/mgps/Util/q1;
.super Ljava/lang/Object;
.source "SDCardPathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/Filepath;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "/wufan91/"

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTime "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sdCard "

    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "storage"

    .line 2
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v5, Lcom/join/mgps/Util/u;->f:Ljava/lang/String;

    .line 5
    new-instance v5, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v5, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->sdcardisFirst()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    .line 7
    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->sdcardData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v9

    const-class v10, Ljava/util/List;

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Lcom/join/mgps/dto/Filepath;

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    :cond_0
    if-nez v4, :cond_1

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 12
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/Filepath;

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    goto :goto_0

    .line 15
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "getVolumePaths"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_3

    .line 16
    sget-object v0, Lcom/join/mgps/Util/u;->f:Ljava/lang/String;

    .line 17
    new-instance v1, Lcom/join/mgps/dto/Filepath;

    invoke-direct {v1}, Lcom/join/mgps/dto/Filepath;-><init>()V

    .line 18
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, v7}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 20
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 21
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 22
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 23
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4

    .line 24
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/mgpapa/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5

    .line 27
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 28
    invoke-static {v9}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 29
    invoke-virtual {v0, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 30
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v10

    invoke-virtual {v10}, Lg1/f;->d()Ljava/util/List;

    move-result-object v10

    .line 31
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    sget-object v12, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 33
    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 34
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 36
    invoke-virtual {v11, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v11, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v12

    invoke-virtual {v12, v11}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const/4 v0, 0x0

    .line 40
    :goto_2
    array-length v9, v6

    if-ge v0, v9, :cond_14

    .line 41
    new-instance v9, Ljava/io/File;

    aget-object v10, v6, v0

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 43
    new-instance v10, Lcom/join/mgps/dto/Filepath;

    invoke-direct {v10}, Lcom/join/mgps/dto/Filepath;-><init>()V

    .line 44
    aget-object v11, v6, v0

    .line 45
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 46
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "ddMMyyyy_HHmmss"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 47
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "test_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v9

    const-string v14, "AA58-160F"

    if-eqz v9, :cond_9

    .line 49
    invoke-static {v13}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    const-string v9, "1"

    .line 50
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "extSdCard"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "sdcard_ext"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "sdcard-ext"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "ext_sdcard"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "SD_CARD"

    .line 51
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "sdcard2"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "extra_sd"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "extrasd_bind"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "ext_sd"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "external_SD"

    .line 52
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "extSdCard "

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "ext"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    .line 53
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v10, v7}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/Filepath;

    invoke-virtual {v9}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 56
    invoke-virtual {v10, v8}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 57
    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 58
    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 59
    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 60
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 61
    :cond_7
    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 62
    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 63
    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 64
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 65
    :cond_8
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 66
    invoke-virtual {v10, v9}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v10, v8}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 70
    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 71
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_9
    const-string v9, "0"

    .line 72
    invoke-virtual {v11, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    const-string v9, "/sdcard"

    invoke-virtual {v11, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 73
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v10, v7}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 75
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/Filepath;

    invoke-virtual {v9}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_7

    .line 76
    :cond_c
    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 77
    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 78
    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 79
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 80
    :cond_d
    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v13

    const/16 v9, 0x13

    const-wide/16 v16, 0x0

    cmp-long v18, v13, v16

    if-lez v18, :cond_10

    aget-object v13, v6, v0

    invoke-static {v13}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v18, v13, v16

    if-nez v18, :cond_10

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v13, v9, :cond_10

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 82
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_e

    .line 84
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 85
    invoke-static {v13}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    goto :goto_4

    :cond_e
    const/4 v12, 0x1

    .line 86
    :cond_f
    :goto_4
    invoke-virtual {v10, v9}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    goto :goto_6

    .line 87
    :cond_10
    aget-object v12, v6, v0

    invoke-static {v12}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v14, v12, v16

    if-lez v14, :cond_13

    .line 88
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/Android/data/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 89
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v13, v9, :cond_11

    const/4 v9, 0x0

    .line 90
    invoke-virtual {v1, v9}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    goto :goto_5

    .line 91
    :cond_11
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 92
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 93
    :goto_5
    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 94
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_12

    .line 96
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v12

    goto :goto_6

    :cond_12
    const/4 v12, 0x1

    .line 97
    :goto_6
    invoke-virtual {v10, v8}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 98
    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 99
    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 100
    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    if-eqz v12, :cond_13

    .line 101
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 102
    :cond_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 103
    sget-object v0, Lcom/join/mgps/Util/u;->f:Ljava/lang/String;

    .line 104
    new-instance v1, Lcom/join/mgps/dto/Filepath;

    invoke-direct {v1}, Lcom/join/mgps/dto/Filepath;-><init>()V

    .line 105
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v7}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 107
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 108
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 109
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 110
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_15
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->sdcardisFirst()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->sdcardData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 114
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EndTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 115
    :catch_1
    sget-object v0, Lcom/join/mgps/Util/u;->f:Ljava/lang/String;

    .line 116
    new-instance v1, Lcom/join/mgps/dto/Filepath;

    invoke-direct {v1}, Lcom/join/mgps/dto/Filepath;-><init>()V

    .line 117
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v7}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 119
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 120
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 121
    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 122
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/q1;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/join/mgps/Util/q1;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object p0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "papaCache"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
