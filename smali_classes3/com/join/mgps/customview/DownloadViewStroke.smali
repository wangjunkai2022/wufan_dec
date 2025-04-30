.class public Lcom/join/mgps/customview/DownloadViewStroke;
.super Landroid/widget/LinearLayout;
.source "DownloadViewStroke.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/join/mgps/dto/PayTagInfo;

.field private d:I

.field private e:Lcom/join/mgps/dto/ModInfoBean;

.field private f:Ljava/lang/String;

.field private g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private h:Lcom/join/mgps/dto/CollectionBeanSub;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lcom/papa/sim/statistic/Ext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->i:I

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->j:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->k:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/DownloadViewStroke;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/join/mgps/customview/DownloadViewStroke;->i:I

    .line 8
    iput p2, p0, Lcom/join/mgps/customview/DownloadViewStroke;->j:I

    const-string p2, ""

    .line 9
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewStroke;->k:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/DownloadViewStroke;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/join/mgps/customview/DownloadViewStroke;->i:I

    .line 13
    iput p2, p0, Lcom/join/mgps/customview/DownloadViewStroke;->j:I

    const-string p2, ""

    .line 14
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewStroke;->k:Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/DownloadViewStroke;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c02df

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09076d

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const v0, 0x7f090a6f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/customview/DownloadViewStroke;->setCoin(Lcom/join/mgps/dto/TipNew;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewStroke;->h:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->d:I

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/DownloadViewStroke;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->i:I

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->j:I

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->k:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->e:Lcom/join/mgps/dto/ModInfoBean;

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/join/mgps/dto/TipNew;Lcom/join/mgps/dto/PayTagInfo;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILcom/join/mgps/dto/DownloadPointBase;Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p4}, Lcom/join/mgps/customview/DownloadViewStroke;->setCoin(Lcom/join/mgps/dto/TipNew;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->f:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    .line 4
    iput-object p4, p0, Lcom/join/mgps/customview/DownloadViewStroke;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iput p5, p0, Lcom/join/mgps/customview/DownloadViewStroke;->d:I

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0, p4}, Lcom/join/mgps/customview/DownloadViewStroke;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    invoke-virtual {p6}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->i:I

    .line 9
    invoke-virtual {p6}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->j:I

    .line 10
    invoke-virtual {p6}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->k:Ljava/lang/String;

    .line 11
    iput-object p7, p0, Lcom/join/mgps/customview/DownloadViewStroke;->e:Lcom/join/mgps/dto/ModInfoBean;

    return-void
.end method

.method public d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->l:Lcom/papa/sim/statistic/Ext;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickAdvDownButton:Lcom/papa/sim/statistic/Event;

    iget-object v2, p0, Lcom/join/mgps/customview/DownloadViewStroke;->l:Lcom/papa/sim/statistic/Ext;

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_0
    const-string v0, ""

    if-eqz p1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2b

    if-eqz p1, :cond_3

    .line 7
    iget-object v4, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    const/16 v2, 0x2b

    :cond_3
    if-nez p1, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->h:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void

    :cond_4
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1c

    const/16 v4, 0xa

    if-ne v2, v4, :cond_5

    goto/16 :goto_5

    :cond_5
    const/16 v4, 0xc

    if-eq v2, v4, :cond_1b

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_6

    goto/16 :goto_4

    :cond_6
    const/16 v4, 0xd

    if-ne v2, v4, :cond_7

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_7
    const/4 v4, 0x5

    if-ne v2, v4, :cond_8

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_6

    :cond_8
    const/4 v5, 0x3

    if-eq v2, v5, :cond_1a

    const/4 v5, 0x6

    if-ne v2, v5, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v5, 0x9

    if-ne v2, v5, :cond_e

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 12
    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 13
    :cond_b
    iget v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->d:I

    if-ne v0, v4, :cond_c

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 15
    :cond_c
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_d
    :goto_1
    return-void

    :cond_e
    const/16 v5, 0x2a

    if-ne v2, v5, :cond_11

    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2

    .line 25
    :cond_f
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_6

    :cond_10
    :goto_2
    return-void

    :cond_11
    const/16 v0, 0xb

    if-ne v0, v2, :cond_12

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_12
    if-ne v3, v2, :cond_16

    .line 34
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_13

    .line 36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 37
    :cond_13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_6

    .line 38
    :cond_14
    iget v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->d:I

    if-ne v0, v4, :cond_15

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_6

    .line 40
    :cond_15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p1, v2, v1, v1}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto :goto_6

    .line 41
    :cond_16
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_17

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 44
    :cond_17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_6

    .line 45
    :cond_18
    iget v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->d:I

    if-ne v0, v4, :cond_19

    .line 46
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_6

    .line 47
    :cond_19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p1, v2, v1, v1}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto :goto_6

    .line 48
    :cond_1a
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_6

    :cond_1b
    :goto_4
    return-void

    .line 49
    :cond_1c
    :goto_5
    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 50
    :goto_6
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/DownloadViewStroke;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method e(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const v0, 0x7f090a6f

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "\u5f00\u59cb"

    const-string v1, ""

    const v3, 0x7f110261

    const v4, 0x7f1100d1

    const/4 v5, 0x1

    const v6, 0x7f080a62

    const v7, 0x7f071151

    const/4 v8, 0x0

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {v9}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    iget v3, p0, Lcom/join/mgps/customview/DownloadViewStroke;->d:I

    iget-object v4, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/join/mgps/customview/DownloadViewStroke;->f:Ljava/lang/String;

    invoke-static {p1, v3, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->k2(Landroid/widget/TextView;IILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->h:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->h:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v11}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x2b

    if-lez v1, :cond_5

    const/16 v0, 0x2b

    .line 23
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v1, 0x9

    const v10, 0x7f060030

    const v11, 0x7f080a67

    if-ne v0, v1, :cond_6

    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const-string v0, "\u66f4\u65b0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    :cond_6
    const/16 v1, 0xc

    const/4 v12, 0x2

    if-ne v0, v1, :cond_7

    .line 28
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const-string v0, "\u89e3\u538b\u4e2d.."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v12, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    :cond_7
    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 30
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const-string v0, "\u89e3\u538b"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    :cond_8
    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 32
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_9
    const/16 v1, 0x30

    if-ne v0, v1, :cond_a

    .line 36
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const-string v0, "\u5b89\u88c5\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    :cond_a
    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_b

    goto/16 :goto_5

    :cond_b
    if-ne v0, v12, :cond_c

    .line 39
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 41
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const-string v0, "\u6682\u505c"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    :cond_c
    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_d

    goto/16 :goto_4

    :cond_d
    const/16 v1, 0xa

    if-ne v0, v1, :cond_e

    .line 43
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const-string v0, "\u7b49\u5f85"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    :cond_e
    if-ne v0, v5, :cond_f

    goto/16 :goto_6

    :cond_f
    if-ne v0, v9, :cond_11

    .line 45
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result v0

    if-lez v0, :cond_10

    .line 46
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 47
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->p2(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_6

    .line 50
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result v0

    if-lez v0, :cond_12

    .line 51
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 52
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->c:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->p2(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_6

    .line 55
    :cond_13
    :goto_4
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const-string v0, "\u7ee7\u7eed"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6

    .line 59
    :cond_14
    :goto_5
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    const v0, 0x7f080a6e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 60
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/DownloadViewStroke;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public setCoin(Lcom/join/mgps/dto/TipNew;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p0, p2}, Lcom/join/mgps/customview/DownloadViewStroke;->e(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public setExt(Lcom/papa/sim/statistic/Ext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewStroke;->l:Lcom/papa/sim/statistic/Ext;

    return-void
.end method
