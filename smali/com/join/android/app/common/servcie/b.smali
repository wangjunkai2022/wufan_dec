.class public Lcom/join/android/app/common/servcie/b;
.super Ljava/lang/Object;
.source "DownloadServiceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    :try_start_1
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 5
    :cond_1
    :goto_1
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    if-ne v1, v3, :cond_9

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, ""

    if-eqz v1, :cond_4

    .line 7
    :try_start_2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TipBean;

    .line 13
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 14
    sget-object v5, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 16
    sget-object v5, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :cond_5
    if-nez v4, :cond_9

    .line 17
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/TipBean;

    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 21
    sget-object v5, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_7
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 23
    sget-object v5, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 24
    :cond_8
    :goto_3
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25
    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 26
    :cond_9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    move-object v2, v1

    goto :goto_5

    :catch_1
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 29
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 32
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v1, "\u5f53\u524d\u7248\u672c\u4e0d\u652f\u6301\u8be5\u7c7b\u6e38\u620f\n\u5347\u7ea7\u540e\u5373\u53ef\u4f53\u9a8c"

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/join/android/app/common/servcie/b$a;

    invoke-direct {p1, p0}, Lcom/join/android/app/common/servcie/b$a;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return v0

    :cond_b
    const/4 v1, 0x1

    .line 37
    invoke-static {p0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->J1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    move-result p0

    if-nez p0, :cond_c

    return v0

    .line 38
    :cond_c
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 39
    sget-object p0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    :cond_d
    return v1
.end method

.method public static b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V
    .locals 18

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Where;->article:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getInterrupt()I

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v12

    move v13, v1

    invoke-virtual/range {v3 .. v13}, Lcom/papa/sim/statistic/p;->E0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_3

    .line 6
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getInterrupt()I

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v11

    move v12, v1

    invoke-virtual/range {v3 .. v12}, Lcom/papa/sim/statistic/p;->D0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;III)V

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    sget-object v2, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v4

    .line 11
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Where;->article:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getInterrupt()I

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt1()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v3 .. v17}, Lcom/papa/sim/statistic/p;->C0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 13
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getInterrupt()I

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v14

    move v15, v1

    move-object/from16 v16, v2

    invoke-virtual/range {v3 .. v16}, Lcom/papa/sim/statistic/p;->A0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 14
    :cond_6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg1/f;->Z(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 15
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "_"

    if-eqz v3, :cond_8

    .line 16
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/p;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 17
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 19
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/papa/sim/statistic/p;->j1(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/p;->k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 22
    :cond_9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg1/f;->Z(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 23
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->gameRemove:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 24
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/papa/sim/statistic/p;->Z0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 25
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStarNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v3

    if-ne v3, v2, :cond_c

    .line 28
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v2

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/papa/sim/statistic/p;->c1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 29
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v2

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/papa/sim/statistic/p;->c1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_2
    const-string v1, "downloadRequest"

    .line 30
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStarNumber(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->update(Ljava/lang/Object;)I

    goto :goto_3

    .line 32
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 33
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/p;->U1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->downloadStop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/papa/sim/statistic/p;->e0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_3
    return-void
.end method
