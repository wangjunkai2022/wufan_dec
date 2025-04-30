.class Lcom/join/mgps/adapter/h5$g;
.super Ljava/lang/Object;
.source "SearchGameListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic b:Lcom/join/mgps/adapter/h5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/h5$g;Landroid/content/Context;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5$g;->b(Landroid/content/Context;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Landroid/content/Context;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const v0, 0x7f090bfd

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f090a3a

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const-string v0, ""

    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->V1(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v2

    if-eqz v2, :cond_12

    const/4 v3, 0x0

    const-string v4, ""

    if-nez v1, :cond_5

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    iget-object v2, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/h5;->p(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->is64Bit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->b(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/i5;

    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/adapter/i5;-><init>(Lcom/join/mgps/adapter/h5$g;Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->f(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    const v1, 0x7f090bfd

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v1, 0x7f090a3a

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->V1(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    return-void

    .line 15
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 17
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 18
    iget-object v3, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 19
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    const/4 v2, 0x4

    .line 20
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 21
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_url_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 22
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    :cond_6
    if-eqz v1, :cond_7

    .line 24
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    .line 25
    :cond_7
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x2b

    if-lez p1, :cond_8

    const/16 v3, 0x2b

    :cond_8
    if-eqz v3, :cond_11

    const/16 p1, 0xd

    if-eq v3, p1, :cond_10

    const/4 p1, 0x2

    if-eq v3, p1, :cond_e

    const/4 p1, 0x3

    if-eq v3, p1, :cond_c

    const/4 p1, 0x5

    if-eq v3, p1, :cond_b

    const/4 p1, 0x6

    if-eq v3, p1, :cond_c

    const/4 p1, 0x7

    if-eq v3, p1, :cond_11

    const/16 p1, 0x2a

    if-eq v3, p1, :cond_a

    if-eq v3, v2, :cond_11

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 26
    :pswitch_0
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 27
    :pswitch_1
    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 28
    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    iget-object v2, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {v2}, Lcom/join/mgps/adapter/h5;->n(Lcom/join/mgps/adapter/h5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->setKeyword(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    iget-object v2, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {p1, v2}, Lcom/join/mgps/adapter/h5;->p(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 31
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->X1(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    goto/16 :goto_0

    .line 32
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    iget-object v1, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {v1}, Lcom/join/mgps/adapter/h5;->n(Lcom/join/mgps/adapter/h5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setKeyword(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    iget-object v1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {p1, v1}, Lcom/join/mgps/adapter/h5;->p(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->x3(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    goto :goto_0

    .line 35
    :cond_b
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 36
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    iget-object v2, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {v2}, Lcom/join/mgps/adapter/h5;->n(Lcom/join/mgps/adapter/h5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->setKeyword(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    iget-object v2, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {p1, v2}, Lcom/join/mgps/adapter/h5;->p(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 38
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMiniGame()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSingleGame()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 39
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->R(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 40
    :cond_d
    invoke-static {v1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_0

    .line 41
    :cond_e
    :pswitch_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMiniGame()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSingleGame()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 42
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->R(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 43
    :cond_f
    invoke-static {v1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 44
    :cond_10
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 45
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    iget-object v2, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {v2}, Lcom/join/mgps/adapter/h5;->n(Lcom/join/mgps/adapter/h5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->setKeyword(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    iget-object v2, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {p1, v2}, Lcom/join/mgps/adapter/h5;->p(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 47
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->V1(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 48
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {p1}, Lcom/join/mgps/adapter/h5;->o(Lcom/join/mgps/adapter/h5;)Lcom/join/mgps/adapter/h5$e;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 49
    iget-object p1, p0, Lcom/join/mgps/adapter/h5$g;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {p1}, Lcom/join/mgps/adapter/h5;->o(Lcom/join/mgps/adapter/h5;)Lcom/join/mgps/adapter/h5$e;

    move-result-object p1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/h5$e;->b(Ljava/lang/String;)V

    :cond_12
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
