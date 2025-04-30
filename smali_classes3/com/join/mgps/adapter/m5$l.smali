.class Lcom/join/mgps/adapter/m5$l;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/m5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field final synthetic b:Lcom/join/mgps/adapter/m5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/m5;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object v0, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 11
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 12
    :cond_2
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object v0, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->S(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;)V

    return-void

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 16
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 18
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    const/4 v2, 0x4

    .line 19
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 21
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    :cond_5
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    .line 24
    :cond_6
    iget-object v2, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x2b

    if-lez v2, :cond_7

    const/16 v1, 0x2b

    :cond_7
    const/4 v2, 0x5

    if-eqz v1, :cond_14

    const/16 v5, 0xd

    if-eq v1, v5, :cond_13

    const/4 v5, 0x2

    if-eq v1, v5, :cond_12

    const/4 v5, 0x3

    if-eq v1, v5, :cond_11

    if-eq v1, v2, :cond_10

    const/4 v5, 0x6

    if-eq v1, v5, :cond_11

    const/4 v5, 0x7

    if-eq v1, v5, :cond_14

    const/16 v5, 0x2a

    if-eq v1, v5, :cond_d

    if-eq v1, v4, :cond_14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 25
    :pswitch_0
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 26
    :pswitch_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 27
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_8
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 29
    :cond_9
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 30
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 31
    :cond_a
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_1

    .line 32
    :cond_b
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 34
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 35
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {v1}, Lcom/join/mgps/adapter/m5;->e(Lcom/join/mgps/adapter/m5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/m5;->g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 40
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_c
    :goto_1
    return-void

    .line 41
    :cond_d
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2

    .line 42
    :cond_e
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 44
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {v1}, Lcom/join/mgps/adapter/m5;->e(Lcom/join/mgps/adapter/m5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/m5;->g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 49
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    :cond_f
    :goto_2
    return-void

    .line 50
    :cond_10
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    .line 51
    :cond_11
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {v1}, Lcom/join/mgps/adapter/m5;->e(Lcom/join/mgps/adapter/m5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/m5;->g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 53
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 54
    :cond_12
    :pswitch_2
    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    .line 55
    :cond_13
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    .line 56
    :cond_14
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {v1}, Lcom/join/mgps/adapter/m5;->e(Lcom/join/mgps/adapter/m5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/m5;->g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 58
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_15

    .line 59
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 60
    :cond_15
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 61
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_3

    .line 62
    :cond_16
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v1

    if-ne v1, v2, :cond_17

    .line 63
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 64
    :cond_17
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/m5$l;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 65
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {p1}, Lcom/join/mgps/adapter/m5;->d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 66
    iget-object p1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {p1}, Lcom/join/mgps/adapter/m5;->d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/adapter/m5$g;->h(Ljava/lang/String;)V

    .line 67
    :cond_18
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {p1}, Lcom/join/mgps/adapter/m5;->d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 68
    iget-object p1, p0, Lcom/join/mgps/adapter/m5$l;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {p1}, Lcom/join/mgps/adapter/m5;->d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/m5$g;->b(Ljava/lang/String;)V

    :cond_19
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
