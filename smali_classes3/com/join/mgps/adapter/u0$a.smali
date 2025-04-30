.class Lcom/join/mgps/adapter/u0$a;
.super Ljava/lang/Object;
.source "GameAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field final synthetic b:Lcom/join/mgps/adapter/u0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/u0;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 9
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_3

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->S(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;)V

    return-void

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x2b

    if-lez v1, :cond_7

    const/16 v0, 0x2b

    :cond_7
    const/4 v1, 0x5

    if-eqz v0, :cond_14

    const/16 v4, 0xd

    if-eq v0, v4, :cond_13

    const/4 v4, 0x2

    if-eq v0, v4, :cond_12

    const/4 v4, 0x3

    if-eq v0, v4, :cond_11

    if-eq v0, v1, :cond_10

    const/4 v4, 0x6

    if-eq v0, v4, :cond_11

    const/4 v4, 0x7

    if-eq v0, v4, :cond_14

    const/16 v4, 0x2a

    const-string v5, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    if-eq v0, v4, :cond_c

    if-eq v0, v3, :cond_14

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 21
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 22
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 24
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 25
    :cond_9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 26
    :cond_a
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 28
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_b
    :goto_1
    return-void

    .line 33
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 34
    iget-object p1, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {p1}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_d
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2

    .line 36
    :cond_e
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    :cond_f
    :goto_2
    return-void

    .line 42
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 43
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_3

    .line 44
    :cond_12
    :pswitch_2
    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 45
    :cond_13
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 46
    :cond_14
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    .line 47
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 48
    :cond_15
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    if-ne v0, v1, :cond_16

    .line 49
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 50
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/adapter/u0$a;->b:Lcom/join/mgps/adapter/u0;

    invoke-static {v0}, Lcom/join/mgps/adapter/u0;->a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/u0$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
