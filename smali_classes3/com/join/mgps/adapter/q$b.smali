.class Lcom/join/mgps/adapter/q$b;
.super Ljava/lang/Object;
.source "DownloadCenterAdapter1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field b:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field c:I

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/q;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/q;Lcom/join/mgps/business/CollectionBeanSubBusiness;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/q$b;->b:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 4
    iput p3, p0, Lcom/join/mgps/adapter/q$b;->c:I

    .line 5
    iput-object p4, p0, Lcom/join/mgps/adapter/q$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->b:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->d:Ljava/lang/String;

    const-string v1, "4-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->d:Ljava/lang/String;

    const-string v1, "6-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->d:Ljava/lang/String;

    const-string v1, "5-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/adapter/q$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/adapter/q;->k(Lcom/join/mgps/adapter/q;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    :cond_3
    if-nez p1, :cond_9

    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    if-nez p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 20
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_6

    if-eqz v0, :cond_7

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->S(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;)V

    return-void

    .line 22
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_8

    .line 23
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    :goto_2
    return-void

    :cond_9
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    .line 26
    :cond_a
    iget-object v1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    const/16 v4, 0x2b

    if-eqz v1, :cond_b

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    const/16 v0, 0x2b

    :cond_b
    const/4 v1, 0x5

    if-eqz v0, :cond_1e

    const/16 v5, 0xd

    if-eq v0, v5, :cond_1d

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1c

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1b

    if-eq v0, v1, :cond_1a

    const/4 v6, 0x6

    if-eq v0, v6, :cond_1b

    const/4 v6, 0x7

    if-eq v0, v6, :cond_1e

    const/16 v6, 0x2a

    if-eq v0, v6, :cond_17

    if-eq v0, v4, :cond_1e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v4, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    if-nez v0, :cond_c

    .line 30
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadType()I

    move-result v0

    if-eqz v0, :cond_12

    if-eq v0, v2, :cond_12

    if-eq v0, v5, :cond_11

    .line 32
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 33
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 34
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 35
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 36
    :cond_e
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3

    .line 37
    :cond_f
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 39
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_10
    :goto_3
    return-void

    .line 44
    :cond_11
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_6

    .line 45
    :cond_12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4

    .line 46
    :cond_13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v2, v2, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-void

    .line 48
    :cond_14
    iget-object v2, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v2

    if-ne v2, v1, :cond_15

    .line 49
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 50
    :cond_15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 51
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 52
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_16
    :goto_4
    return-void

    .line 56
    :cond_17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_5

    .line 57
    :cond_18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 59
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_6

    :cond_19
    :goto_5
    return-void

    .line 63
    :cond_1a
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    const-string v1, "1"

    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 64
    :cond_1b
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 65
    :cond_1c
    :pswitch_2
    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_6

    .line 66
    :cond_1d
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_6

    .line 67
    :cond_1e
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/adapter/q$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/adapter/q;->k(Lcom/join/mgps/adapter/q;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v0, :cond_22

    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1f

    .line 70
    iget-object p1, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 71
    :cond_1f
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    const-string v2, "downloadGame4.2.0.6"

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 73
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_6

    .line 74
    :cond_20
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    if-ne v0, v1, :cond_21

    .line 75
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_6

    .line 76
    :cond_21
    iget-object v0, p0, Lcom/join/mgps/adapter/q$b;->e:Lcom/join/mgps/adapter/q;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/q$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_22
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
