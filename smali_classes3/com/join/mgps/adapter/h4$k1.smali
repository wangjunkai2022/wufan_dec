.class Lcom/join/mgps/adapter/h4$k1;
.super Ljava/lang/Object;
.source "PapaMainAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/h4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k1"
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/AppBean;

.field b:Lcom/join/mgps/business/RecomDatabeanBusiness;

.field c:I

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/h4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    .line 6
    invoke-virtual {p1, p5}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/join/mgps/adapter/h4$k1;->b:Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/h4$k1;->c:I

    .line 9
    iput-object p4, p0, Lcom/join/mgps/adapter/h4$k1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->b:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->d:Ljava/lang/String;

    const-string v1, "4-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->d:Ljava/lang/String;

    const-string v1, "6-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->d:Ljava/lang/String;

    const-string v1, "5-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    sget-object v3, Lcom/psk/eventmodule/Event;->check:Lcom/psk/eventmodule/Event;

    iget-object v4, p0, Lcom/join/mgps/adapter/h4$k1;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v6

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/join/mgps/adapter/h4;->z(Lcom/join/mgps/adapter/h4;Lcom/psk/eventmodule/Event;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/adapter/h4$k1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/adapter/h4;->p(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

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

    .line 8
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    :cond_3
    if-nez p1, :cond_9

    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 21
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_6

    if-eqz v0, :cond_7

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->S(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;)V

    return-void

    .line 23
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_8

    .line 24
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->H0(Landroid/content/Context;Lcom/join/mgps/dto/AppBean;)V

    :goto_2
    return-void

    :cond_9
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    .line 27
    :cond_a
    iget-object v1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    const/16 v4, 0x2b

    if-eqz v1, :cond_b

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    const/16 v0, 0x2b

    :cond_b
    const/4 v1, 0x5

    if-eqz v0, :cond_1a

    const/16 v5, 0xd

    if-eq v0, v5, :cond_19

    const/4 v5, 0x2

    if-eq v0, v5, :cond_18

    const/4 v6, 0x3

    if-eq v0, v6, :cond_17

    if-eq v0, v1, :cond_16

    const/4 v6, 0x6

    if-eq v0, v6, :cond_17

    const/4 v6, 0x7

    if-eq v0, v6, :cond_1a

    const/16 v6, 0x2a

    if-eq v0, v6, :cond_13

    if-eq v0, v4, :cond_1a

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 31
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDownloadType()I

    move-result v0

    if-eqz v0, :cond_e

    if-eq v0, v2, :cond_e

    if-eq v0, v5, :cond_d

    goto/16 :goto_5

    .line 33
    :cond_d
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    .line 34
    :cond_e
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3

    .line 35
    :cond_f
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 36
    iget-object v2, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-void

    .line 37
    :cond_10
    iget-object v2, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v2

    if-ne v2, v1, :cond_11

    .line 38
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 39
    :cond_11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 40
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_12
    :goto_3
    return-void

    .line 45
    :cond_13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_4

    .line 46
    :cond_14
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    :cond_15
    :goto_4
    return-void

    .line 52
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    .line 53
    :cond_17
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 54
    :cond_18
    :pswitch_2
    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    .line 55
    :cond_19
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_5

    .line 56
    :cond_1a
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/adapter/h4$k1;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/adapter/h4;->p(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    if-eqz v0, :cond_1e

    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b

    .line 59
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 60
    :cond_1b
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->b1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/AppBean;)V

    .line 61
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_5

    .line 62
    :cond_1c
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v0

    if-ne v0, v1, :cond_1d

    .line 63
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 64
    :cond_1d
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$k1;->e:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/h4$k1;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCdn_down_switch()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_1e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
