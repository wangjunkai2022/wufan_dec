.class Lcom/join/mgps/adapter/w4$b;
.super Ljava/lang/Object;
.source "RankingItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field b:I

.field final synthetic c:Lcom/join/mgps/adapter/w4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/w4;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/adapter/w4$b;->b:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 4
    iput p3, p0, Lcom/join/mgps/adapter/w4$b;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_6

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 9
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez p1, :cond_2

    if-eqz v1, :cond_3

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->S(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;)V

    return-void

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->a(Lcom/join/mgps/adapter/w4;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "home"

    goto :goto_1

    :cond_4
    const-string p1, "ranking"

    :goto_1
    move-object v3, p1

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-ranking-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/adapter/w4$b;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/adapter/w4$b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->b(Lcom/join/mgps/adapter/w4;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    sget-object p1, Lcom/psk/eventmodule/StatFactory;->Companion:Lcom/psk/eventmodule/StatFactory$Companion;

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/psk/eventmodule/StatFactory$Companion;->getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/StatFactory;

    move-result-object p1

    new-instance v10, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;

    sget-object v7, Lcom/psk/eventmodule/Event;->check:Lcom/psk/eventmodule/Event;

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/psk/eventmodule/StatFactory$SpmData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/adapter/w4$b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v2, "wufun"

    const-string v4, "ranking"

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcom/psk/eventmodule/StatFactory$SpmData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v1

    move-object v4, v10

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v0

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;-><init>(Lcom/psk/eventmodule/Event;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$SpmData;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    .line 19
    invoke-virtual {p1, v10}, Lcom/psk/eventmodule/StatFactory;->sendEvent(Lcom/psk/eventmodule/StatFactory$VolcanoEvent;)V

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void

    .line 21
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    :cond_7
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    .line 28
    :cond_8
    iget-object v2, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x2b

    if-lez v2, :cond_9

    const/16 v1, 0x2b

    :cond_9
    const/4 v2, 0x5

    if-eqz v1, :cond_16

    const/16 v4, 0xd

    if-eq v1, v4, :cond_15

    const/4 v4, 0x2

    if-eq v1, v4, :cond_14

    const/4 v4, 0x3

    if-eq v1, v4, :cond_13

    if-eq v1, v2, :cond_12

    const/4 v4, 0x6

    if-eq v1, v4, :cond_13

    const/4 v4, 0x7

    if-eq v1, v4, :cond_16

    const/16 v4, 0x2a

    const-string v5, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    if-eq v1, v4, :cond_e

    if-eq v1, v3, :cond_16

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_4

    .line 30
    :pswitch_1
    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 31
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_a
    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 33
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 34
    :cond_b
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    .line 35
    :cond_c
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 37
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_d
    :goto_2
    return-void

    .line 42
    :cond_e
    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 43
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {p1}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_f
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    .line 45
    :cond_10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_4

    :cond_11
    :goto_3
    return-void

    .line 51
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 52
    :cond_13
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_4

    .line 53
    :cond_14
    :pswitch_2
    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 54
    :cond_15
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 55
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_17

    .line 56
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 57
    :cond_17
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    if-ne v0, v2, :cond_18

    .line 58
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 59
    :cond_18
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$b;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/w4$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
