.class Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;
.super Ljava/lang/Object;
.source "EverydayNewGameAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/EverydayNewGameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field final synthetic b:Lcom/join/mgps/adapter/EverydayNewGameAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;->b:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;->a:Ljava/lang/Object;

    instance-of v3, v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    const-string v4, ""

    if-eqz v3, :cond_1

    .line 3
    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v10

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v11

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result v12

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v13

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v14

    move v15, v14

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-lez v14, :cond_4

    .line 16
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v14

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ln1/e0;->p(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 17
    :cond_1
    instance-of v3, v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v3, :cond_24

    .line 18
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v3

    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getVer_name()Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getTp_down_url()Ljava/util/List;

    move-result-object v10

    .line 26
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getOther_down_switch()I

    move-result v11

    .line 27
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCdn_down_switch()I

    move-result v12

    .line 28
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v13

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v14}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 30
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 31
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v14

    move v15, v14

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-lez v14, :cond_3

    .line 32
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v14

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ln1/e0;->p(Ljava/lang/String;)Z

    :cond_3
    move-object v3, v2

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 33
    new-instance v2, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v4, 0x4

    .line 34
    invoke-virtual {v2, v4}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 35
    invoke-virtual {v2, v9}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 36
    invoke-static {v3, v1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    :cond_5
    if-nez v3, :cond_c

    .line 38
    invoke-static {v13}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 39
    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 40
    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v2

    .line 41
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_6

    goto :goto_3

    .line 42
    :cond_6
    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    invoke-static {v1, v8}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 43
    :cond_7
    :goto_3
    iget-object v2, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;->a:Ljava/lang/Object;

    instance-of v3, v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v3, :cond_9

    .line 44
    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-nez v3, :cond_8

    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    goto :goto_4

    .line 47
    :cond_8
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void

    .line 48
    :cond_9
    instance-of v3, v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v3, :cond_b

    .line 49
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-nez v3, :cond_a

    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    goto :goto_4

    .line 53
    :cond_a
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->H0(Landroid/content/Context;Lcom/join/mgps/dto/AppBean;)V

    :cond_b
    return-void

    :cond_c
    :goto_4
    if-eqz v3, :cond_d

    .line 54
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    .line 55
    :goto_5
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v5

    const/16 v8, 0x2b

    if-lez v5, :cond_e

    const/16 v2, 0x2b

    :cond_e
    const/4 v5, 0x5

    if-eqz v2, :cond_1d

    const/16 v13, 0xd

    if-eq v2, v13, :cond_1c

    const/4 v13, 0x2

    if-eq v2, v13, :cond_1b

    const/4 v13, 0x3

    if-eq v2, v13, :cond_1a

    if-eq v2, v5, :cond_19

    const/4 v13, 0x6

    if-eq v2, v13, :cond_1a

    const/4 v13, 0x7

    if-eq v2, v13, :cond_1d

    const/16 v13, 0x2a

    if-eq v2, v13, :cond_16

    if-eq v2, v8, :cond_1d

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 56
    :pswitch_0
    invoke-static {v3, v1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_8

    .line 57
    :pswitch_1
    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 58
    invoke-static {v1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    const-string v2, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_f
    iget-object v2, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;->a:Ljava/lang/Object;

    instance-of v8, v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v8, :cond_11

    .line 60
    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 61
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v8

    if-eqz v8, :cond_10

    return-void

    .line 62
    :cond_10
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v2

    if-ne v2, v5, :cond_13

    .line 63
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 64
    :cond_11
    instance-of v8, v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v8, :cond_13

    .line 65
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 66
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    .line 67
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v8

    if-eqz v8, :cond_12

    return-void

    .line 68
    :cond_12
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v2

    if-ne v2, v5, :cond_13

    .line 69
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 70
    :cond_13
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_6

    .line 71
    :cond_14
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 73
    invoke-static {v3}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 74
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 77
    invoke-static {v3, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_8

    :cond_15
    :goto_6
    return-void

    .line 78
    :cond_16
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_7

    .line 79
    :cond_17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 81
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 84
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    :cond_18
    :goto_7
    return-void

    .line 85
    :cond_19
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_8

    .line 86
    :cond_1a
    invoke-static {v3, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_8

    .line 87
    :cond_1b
    :pswitch_2
    invoke-static {v3}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_8

    .line 88
    :cond_1c
    invoke-static {v1, v3}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_8

    .line 89
    :cond_1d
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1e

    .line 90
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 91
    :cond_1e
    iget-object v2, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;->a:Ljava/lang/Object;

    instance-of v4, v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v4, :cond_21

    .line 92
    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 93
    invoke-static {v3, v2}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 94
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_8

    .line 95
    :cond_1f
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v2

    if-ne v2, v5, :cond_20

    .line 96
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_8

    .line 97
    :cond_20
    invoke-static {v1, v3, v10, v11, v12}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto :goto_8

    .line 98
    :cond_21
    instance-of v4, v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v4, :cond_24

    .line 99
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 100
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    .line 101
    invoke-static {v3, v2}, Lcom/join/mgps/Util/UtilsMy;->b1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/AppBean;)V

    .line 102
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_8

    .line 103
    :cond_22
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v2

    if-ne v2, v5, :cond_23

    .line 104
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_8

    .line 105
    :cond_23
    invoke-static {v1, v3, v10, v11, v12}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_24
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
