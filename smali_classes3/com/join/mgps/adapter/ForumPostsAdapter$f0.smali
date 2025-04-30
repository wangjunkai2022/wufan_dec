.class Lcom/join/mgps/adapter/ForumPostsAdapter$f0;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f0"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$f0;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$f0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$f0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_1d

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v4

    .line 10
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v5

    .line 11
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$f0;->a:Ljava/lang/Object;

    instance-of v7, v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 12
    check-cast v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 13
    invoke-virtual {v6}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 14
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 16
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v7

    move v9, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-lez v7, :cond_4

    .line 17
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v7

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ln1/e0;->p(Ljava/lang/String;)Z

    goto :goto_2

    .line 18
    :cond_1
    instance-of v7, v6, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v7, :cond_3

    .line 19
    check-cast v6, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 20
    invoke-virtual {v6}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v6

    .line 21
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 22
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v7

    move v9, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    if-lez v7, :cond_4

    .line 23
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v7

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ln1/e0;->p(Ljava/lang/String;)Z

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 24
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 25
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v2, 0x4

    .line 26
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 27
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 28
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    .line 30
    :cond_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    .line 31
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v7

    const/16 v11, 0x2b

    if-lez v7, :cond_6

    const/16 v6, 0x2b

    :cond_6
    const/4 v7, 0x5

    if-eqz v6, :cond_16

    const/16 v12, 0xd

    if-eq v6, v12, :cond_15

    const/4 v12, 0x2

    if-eq v6, v12, :cond_14

    const/4 v12, 0x3

    if-eq v6, v12, :cond_13

    if-eq v6, v7, :cond_12

    const/4 v12, 0x6

    if-eq v6, v12, :cond_13

    const/4 v12, 0x7

    if-eq v6, v12, :cond_16

    const/16 v12, 0x2a

    const-string v13, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    if-eq v6, v12, :cond_e

    if-eq v6, v11, :cond_16

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_5

    .line 32
    :pswitch_0
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 33
    :pswitch_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 34
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v13}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_7
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$f0;->a:Ljava/lang/Object;

    instance-of v4, v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v4, :cond_9

    .line 36
    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 37
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_8

    return-void

    .line 38
    :cond_8
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v3

    if-ne v3, v7, :cond_b

    .line 39
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 40
    :cond_9
    instance-of v4, v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v4, :cond_b

    .line 41
    check-cast v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 42
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v3

    .line 43
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_a

    return-void

    .line 44
    :cond_a
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v3

    if-ne v3, v7, :cond_b

    .line 45
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 46
    :cond_b
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    .line 47
    :cond_c
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 49
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 53
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_d
    :goto_3
    return-void

    .line 54
    :cond_e
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 55
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v13}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 56
    :cond_f
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_4

    .line 57
    :cond_10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 62
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    :cond_11
    :goto_4
    return-void

    .line 63
    :cond_12
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    .line 64
    :cond_13
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_5

    .line 65
    :cond_14
    :pswitch_2
    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 66
    :cond_15
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 67
    :cond_16
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_17

    .line 68
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 69
    :cond_17
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$f0;->a:Ljava/lang/Object;

    instance-of v2, v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v2, :cond_1a

    .line 70
    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 71
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 72
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_5

    .line 73
    :cond_18
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v1

    if-ne v1, v7, :cond_19

    .line 74
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 75
    :cond_19
    invoke-static {p1, v0, v3, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto :goto_5

    .line 76
    :cond_1a
    instance-of v2, v1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v2, :cond_1d

    .line 77
    check-cast v1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->b1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/AppBean;)V

    .line 80
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_5

    .line 81
    :cond_1b
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v1

    if-ne v1, v7, :cond_1c

    .line 82
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 83
    :cond_1c
    invoke-static {p1, v0, v3, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_1d
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
