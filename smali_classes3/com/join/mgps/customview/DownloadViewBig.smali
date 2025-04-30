.class public Lcom/join/mgps/customview/DownloadViewBig;
.super Landroid/widget/LinearLayout;
.source "DownloadViewBig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/join/mgps/dto/PayTagInfo;

.field private i:I

.field private j:Lcom/join/mgps/dto/ModInfoBean;

.field private k:Ljava/lang/String;

.field private l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private m:Lcom/join/mgps/dto/CollectionBeanSub;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->n:I

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->o:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->p:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->q:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->r:Ljava/lang/String;

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/DownloadViewBig;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->n:I

    .line 10
    iput p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->o:I

    const-string p2, ""

    .line 11
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->p:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->q:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->r:Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/DownloadViewBig;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->n:I

    .line 17
    iput p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->o:I

    const-string p2, ""

    .line 18
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->p:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->q:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->r:Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/DownloadViewBig;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c02dd

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09076e

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f090c6e

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f09076d

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    const v0, 0x7f090a6f

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->d:Landroid/widget/TextView;

    const v0, 0x7f090c02

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->e:Landroid/widget/TextView;

    const v0, 0x7f090203

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->f:Landroid/widget/ProgressBar;

    const v0, 0x7f090204

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/customview/DownloadViewBig;->setCoin(Lcom/join/mgps/dto/TipNew;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/DownloadViewBig;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->k:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->i:I

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/DownloadViewBig;->g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->n:I

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->o:I

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->p:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->q:Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->r:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->j:Lcom/join/mgps/dto/ModInfoBean;

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/join/mgps/dto/TipNew;Lcom/join/mgps/dto/PayTagInfo;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILcom/join/mgps/dto/DownloadPointBase;Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p4}, Lcom/join/mgps/customview/DownloadViewBig;->setCoin(Lcom/join/mgps/dto/TipNew;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iput-object p3, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->k:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/join/mgps/customview/DownloadViewBig;->l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iput p5, p0, Lcom/join/mgps/customview/DownloadViewBig;->i:I

    .line 6
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0, p4}, Lcom/join/mgps/customview/DownloadViewBig;->g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    invoke-virtual {p6}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->n:I

    .line 9
    invoke-virtual {p6}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->o:I

    .line 10
    iput-object p7, p0, Lcom/join/mgps/customview/DownloadViewBig;->j:Lcom/join/mgps/dto/ModInfoBean;

    .line 11
    invoke-virtual {p6}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->r:Ljava/lang/String;

    .line 12
    invoke-virtual {p6}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->q:Ljava/lang/String;

    return-void
.end method

.method public d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x2b

    if-eqz v1, :cond_2

    .line 5
    iget-object v6, v0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    const/16 v4, 0x2b

    :cond_2
    if-nez v1, :cond_5

    .line 6
    iget-object v1, v0, Lcom/join/mgps/customview/DownloadViewBig;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/join/mgps/customview/DownloadViewBig;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/customview/DownloadViewBig;->j:Lcom/join/mgps/dto/ModInfoBean;

    if-nez v1, :cond_4

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/join/mgps/customview/DownloadViewBig;->k:Ljava/lang/String;

    iget v5, v0, Lcom/join/mgps/customview/DownloadViewBig;->n:I

    iget v6, v0, Lcom/join/mgps/customview/DownloadViewBig;->o:I

    iget-object v7, v0, Lcom/join/mgps/customview/DownloadViewBig;->p:Ljava/lang/String;

    iget-object v8, v0, Lcom/join/mgps/customview/DownloadViewBig;->q:Ljava/lang/String;

    iget-object v9, v0, Lcom/join/mgps/customview/DownloadViewBig;->r:Ljava/lang/String;

    iget-object v1, v0, Lcom/join/mgps/customview/DownloadViewBig;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v10

    const/4 v11, 0x0

    const-string v4, ""

    invoke-static/range {v2 .. v11}, Lcom/join/mgps/Util/UtilsMy;->N0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v1, v0, Lcom/join/mgps/customview/DownloadViewBig;->j:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v13

    iget v15, v0, Lcom/join/mgps/customview/DownloadViewBig;->n:I

    iget v1, v0, Lcom/join/mgps/customview/DownloadViewBig;->o:I

    iget-object v2, v0, Lcom/join/mgps/customview/DownloadViewBig;->p:Ljava/lang/String;

    iget-object v3, v0, Lcom/join/mgps/customview/DownloadViewBig;->q:Ljava/lang/String;

    iget-object v4, v0, Lcom/join/mgps/customview/DownloadViewBig;->r:Ljava/lang/String;

    iget-object v5, v0, Lcom/join/mgps/customview/DownloadViewBig;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v20

    const/16 v21, 0x0

    const-string v14, ""

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-static/range {v12 .. v21}, Lcom/join/mgps/Util/UtilsMy;->N0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    :goto_1
    return-void

    :cond_5
    const/4 v6, 0x2

    if-eq v4, v6, :cond_1d

    const/16 v6, 0xa

    if-ne v4, v6, :cond_6

    goto/16 :goto_6

    :cond_6
    const/16 v6, 0xc

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x1b

    if-ne v4, v6, :cond_7

    goto/16 :goto_5

    :cond_7
    const/16 v6, 0xd

    if-ne v4, v6, :cond_8

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_8
    const/4 v6, 0x3

    if-eq v4, v6, :cond_1b

    const/4 v6, 0x6

    if-ne v4, v6, :cond_9

    goto/16 :goto_4

    :cond_9
    const/4 v6, 0x5

    if-ne v4, v6, :cond_a

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_7

    :cond_a
    const/16 v7, 0x9

    if-ne v4, v7, :cond_f

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_2

    .line 14
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-void

    .line 15
    :cond_c
    iget v2, v0, Lcom/join/mgps/customview/DownloadViewBig;->i:I

    if-ne v2, v6, :cond_d

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 17
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 24
    sget-object v2, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_e
    :goto_2
    return-void

    :cond_f
    const/16 v7, 0x2a

    if-ne v4, v7, :cond_12

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_3

    .line 27
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_7

    :cond_11
    :goto_3
    return-void

    :cond_12
    const/16 v2, 0xb

    if-ne v2, v4, :cond_13

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_13
    if-ne v5, v4, :cond_17

    .line 36
    sget-object v2, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 37
    iget-object v2, v0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 39
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_7

    .line 40
    :cond_15
    iget v2, v0, Lcom/join/mgps/customview/DownloadViewBig;->i:I

    if-ne v2, v6, :cond_16

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_7

    .line 42
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v1, v4, v3, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto :goto_7

    .line 43
    :cond_17
    sget-object v2, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 44
    iget-object v2, v0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_18

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 46
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_7

    .line 47
    :cond_19
    iget v2, v0, Lcom/join/mgps/customview/DownloadViewBig;->i:I

    if-ne v2, v6, :cond_1a

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_7

    .line 49
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v1, v4, v3, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto :goto_7

    .line 50
    :cond_1b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_7

    :cond_1c
    :goto_5
    return-void

    .line 51
    :cond_1d
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 52
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/customview/DownloadViewBig;->g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 9

    const v0, 0x7f110261

    const v1, 0x7f1100d1

    const v2, 0x7f080715

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    iget v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->i:I

    iget-object v1, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v4

    :goto_1
    iget-object v1, p0, Lcom/join/mgps/customview/DownloadViewBig;->k:Ljava/lang/String;

    invoke-static {p1, v0, v4, v1}, Lcom/join/mgps/Util/UtilsMy;->k2(Landroid/widget/TextView;IILjava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    const-string v0, "\u5f00\u59cb"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    return-void

    .line 13
    :cond_3
    iget-object v5, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    .line 15
    iget-object v5, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x2b

    if-lez v5, :cond_4

    const/16 v2, 0x2b

    :cond_4
    const/16 v5, 0x9

    const v7, 0x7f080345

    const v8, 0x7f080324

    if-ne v2, v5, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    const-string v0, "\u66f4\u65b0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_5
    const/16 v5, 0xc

    if-ne v2, v5, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    const-string v0, "\u89e3\u538b\u4e2d.."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_6
    const/16 v5, 0xd

    if-ne v2, v5, :cond_7

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    const-string v0, "\u89e3\u538b"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_7
    const/16 v5, 0xb

    if-ne v2, v5, :cond_8

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    const v0, 0x7f080714

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_8
    const/4 v5, 0x5

    if-eq v2, v5, :cond_12

    const/16 v5, 0x2a

    if-ne v2, v5, :cond_9

    goto/16 :goto_5

    :cond_9
    const/4 v5, 0x2

    const-string v7, "%"

    if-ne v2, v5, :cond_a

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->f()V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    const v1, 0x7f080325

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_a
    const/4 v5, 0x3

    if-eq v2, v5, :cond_11

    const/4 v5, 0x6

    if-eq v2, v5, :cond_11

    const/16 v5, 0x1b

    if-ne v2, v5, :cond_b

    goto/16 :goto_4

    :cond_b
    const/16 v5, 0xa

    if-ne v2, v5, :cond_c

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    .line 35
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    const-string v0, "\u7b49\u5f85"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_c
    if-ne v2, v3, :cond_d

    goto/16 :goto_6

    :cond_d
    if-ne v2, v6, :cond_f

    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    .line 38
    iget-object v2, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result v2

    if-lez v2, :cond_e

    .line 39
    iget-object v1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 40
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->J2(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_6

    .line 44
    :cond_f
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    .line 45
    iget-object v2, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result v2

    if-lez v2, :cond_10

    .line 46
    iget-object v1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 47
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->h:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->J2(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_6

    .line 51
    :cond_11
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->f()V

    .line 52
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 56
    :cond_12
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadViewBig;->e()V

    .line 57
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    const v0, 0x7f080716

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 58
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadViewBig;->l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/DownloadViewBig;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public setCoin(Lcom/join/mgps/dto/TipNew;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->d:Landroid/widget/TextView;

    invoke-static {p1, v0, p2}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadViewBig;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
