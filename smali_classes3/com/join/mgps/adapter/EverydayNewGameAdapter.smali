.class public Lcom/join/mgps/adapter/EverydayNewGameAdapter;
.super Landroid/widget/BaseAdapter;
.source "EverydayNewGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$k;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$i;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$j;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$d;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;,
        Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/EverydayNewGameAdapter$k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/EverydayNewGameAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->k(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;Lcom/join/mgps/dto/AppBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->r(Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;Lcom/join/mgps/dto/AppBean;)V

    return-void
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$d;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$d;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$d;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090710

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090fc5

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$d;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-eqz p3, :cond_3

    .line 7
    iget-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$d;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$a;

    .line 9
    iget-object v0, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$a;->a:Lcom/join/mgps/dto/RecomDatabean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$a;->a:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 10
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f080168

    invoke-static {p3, v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 11
    iget-object p3, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$a;->a:Lcom/join/mgps/dto/RecomDatabean;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$a;->a:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {p3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 12
    iget-object p1, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$a;->a:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getJump_type()I

    move-result v2

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 18
    new-instance p3, Lcom/join/mgps/Util/IntentDateBean;

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/Util/IntentDateBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {p3, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 21
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->q(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-object p2
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;

    move-object/from16 v2, p2

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;)V

    .line 3
    iget-object v2, v1, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c04db

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const v3, 0x7f09057f

    .line 4
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->d:Landroid/widget/TextView;

    const v3, 0x7f090771

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->e:Landroid/widget/TextView;

    const v3, 0x7f090559

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f090df6

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->a:Landroid/widget/TextView;

    const v3, 0x7f090b7b

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->g:Landroid/widget/TextView;

    const v3, 0x7f09030b

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->h:Landroid/widget/LinearLayout;

    const v3, 0x7f090ffa

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->b:Landroid/widget/TextView;

    const v3, 0x7f090ffb

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->c:Landroid/widget/TextView;

    const v3, 0x7f090b7e

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->i:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_5

    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;

    .line 15
    iget-object v4, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/AppBeanMain;

    .line 16
    iget-object v6, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v6}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v6

    .line 17
    iget-object v7, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v7}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v8, ""

    if-eqz v7, :cond_1

    .line 18
    :try_start_2
    invoke-virtual {v7}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    move-object v7, v8

    .line 19
    :goto_2
    iget-object v9, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->a:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_2

    .line 20
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    goto :goto_3

    :cond_2
    move-object v7, v8

    .line 22
    :goto_3
    iget-object v9, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->d:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v8, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v9, 0x7f0807b1

    invoke-static {v8, v9, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 24
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v7

    iget-object v8, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v8}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    invoke-static {v7, v2, v8}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 25
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    move-result v10

    .line 26
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getJump_type()I

    move-result v11

    .line 27
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    move-result-object v12

    .line 28
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 30
    new-instance v4, Lcom/join/mgps/Util/IntentDateBean;

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/join/mgps/Util/IntentDateBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    new-instance v7, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {v4, v7}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 32
    invoke-virtual {v1, v2, v4}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->q(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 33
    iget-object v4, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->e:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v1, v4, v0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->d(Landroid/widget/TextView;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 34
    :try_start_3
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getGame_open_time()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "MM\u6708dd\u65e5 HH:mm"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v7, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v4, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 38
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 39
    :goto_4
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :goto_5
    const/16 v4, 0x8

    if-eqz v0, :cond_4

    .line 40
    iget-object v0, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    iget-object v0, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->g:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    const v4, 0x7f1100e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 43
    :cond_4
    iget-object v0, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    iget-object v0, v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    const v5, 0x7f1100e4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v1, v3, v6}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->s(Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;Lcom/join/mgps/dto/AppBean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p2

    .line 47
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_7
    return-object v2
.end method

.method private g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$i;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$i;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$i;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0516

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090677

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HorizontalRecyclerView;

    iput-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$i;->b:Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-eqz p3, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$c;

    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$c;->b:Ljava/util/List;

    .line 8
    iget-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$i;->a:Lit/sephiroth/android/library/widget/HListView;

    const v1, 0x7f090443

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;

    iget-object v2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Landroid/content/Context;)V

    .line 11
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 12
    :cond_1
    iget-object v2, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$i;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->a(Ljava/util/List;)V

    .line 14
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$i;->b:Lcom/join/mgps/customview/HorizontalRecyclerView;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;

    if-nez v0, :cond_3

    .line 17
    new-instance v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;

    iget-object v2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Landroid/content/Context;)V

    .line 18
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    :cond_3
    iget-object p3, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$i;->b:Lcom/join/mgps/customview/HorizontalRecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->c(Ljava/util/List;)V

    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object p2
.end method

.method private j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$j;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$j;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$j;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c04dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0904fa

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$j;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090df6

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$j;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$j;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$j;->b:Landroid/widget/TextView;

    const-string v1, "\u6e38\u620f\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$d;

    if-eqz p1, :cond_1

    .line 10
    iget-object v0, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object p3, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$j;->b:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$d;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p2
.end method

.method private k(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter$k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$k;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private r(Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;Lcom/join/mgps/dto/AppBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    const v3, 0x7f1100e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    .line 6
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v2

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-lez v1, :cond_3

    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->n(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 8
    :cond_3
    iget-object p1, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->m(Landroid/widget/TextView;I)V

    :goto_2
    return-void
.end method


# virtual methods
.method d(Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3
    instance-of v5, v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    const-string v6, ""

    if-eqz v5, :cond_3

    .line 4
    move-object v5, v2

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 5
    invoke-virtual {v5}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    .line 6
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v9

    .line 7
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v12

    .line 10
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v13

    .line 11
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 12
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 13
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-lez v7, :cond_2

    .line 14
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v14

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v7, 0x0

    :cond_2
    move v14, v7

    const/4 v7, 0x0

    goto :goto_2

    .line 15
    :cond_3
    instance-of v5, v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v5, :cond_18

    .line 16
    move-object v5, v2

    check-cast v5, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 17
    invoke-virtual {v5}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    .line 18
    invoke-virtual {v5}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v9

    .line 20
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 22
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v12

    .line 23
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v13

    .line 24
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v15}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 25
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 26
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v14

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    :goto_1
    if-lez v14, :cond_5

    .line 27
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v15

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v14, 0x0

    :cond_5
    :goto_2
    const v5, 0x7f080a62

    const v15, 0x7f06002a

    if-eqz v6, :cond_6

    .line 28
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v4, "\u5f00\u59cb"

    .line 29
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_6
    const-string v6, "\u66f4\u65b0"

    const v15, 0x7f080a6e

    const v7, 0x7f060030

    const v5, 0x7f080a67

    if-nez v8, :cond_d

    .line 31
    invoke-static {v12}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 32
    invoke-static {v3}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v8

    invoke-virtual {v8, v3, v11}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-lez v14, :cond_7

    const/16 v17, 0x0

    goto :goto_3

    :cond_7
    move/from16 v17, v8

    :goto_3
    if-eqz v17, :cond_9

    .line 33
    invoke-static {v3}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v8

    invoke-virtual {v8, v3, v11}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v8

    .line 34
    invoke-static {v10}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 35
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 36
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 38
    :cond_8
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 39
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1100d2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f060033

    .line 40
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 41
    :cond_9
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-lez v14, :cond_a

    .line 42
    invoke-virtual {v0, v1, v14}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->n(Landroid/widget/TextView;I)V

    goto/16 :goto_5

    .line 43
    :cond_a
    invoke-virtual {v0, v1, v9}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->m(Landroid/widget/TextView;I)V

    goto/16 :goto_5

    .line 44
    :cond_b
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-lez v14, :cond_c

    .line 45
    invoke-virtual {v0, v1, v14}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->n(Landroid/widget/TextView;I)V

    goto/16 :goto_5

    .line 46
    :cond_c
    invoke-virtual {v0, v1, v9}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->m(Landroid/widget/TextView;I)V

    goto/16 :goto_5

    .line 47
    :cond_d
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    .line 48
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x2b

    if-lez v11, :cond_e

    const/16 v10, 0x2b

    :cond_e
    if-eqz v10, :cond_15

    const/16 v11, 0x1b

    if-eq v10, v11, :cond_14

    const/16 v11, 0x30

    if-eq v10, v11, :cond_13

    const/4 v11, 0x2

    if-eq v10, v11, :cond_12

    const/4 v8, 0x3

    if-eq v10, v8, :cond_10

    const/4 v8, 0x5

    if-eq v10, v8, :cond_11

    const/4 v8, 0x6

    if-eq v10, v8, :cond_10

    const/4 v8, 0x7

    if-eq v10, v8, :cond_15

    const/16 v8, 0x2a

    if-eq v10, v8, :cond_11

    if-eq v10, v12, :cond_f

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const v3, 0x7f080a7b

    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v3, "\u89e3\u538b"

    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f06002a

    .line 51
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :pswitch_1
    const v3, 0x7f0803ca

    .line 52
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v3, "\u89e3\u538b\u4e2d"

    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f060031

    .line 54
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 55
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v3, "\u5b89\u88c5"

    .line 56
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :pswitch_3
    const v3, 0x7f080a62

    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v3, "\u7b49\u5f85"

    .line 59
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f06002a

    .line 60
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 61
    :pswitch_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_f
    const v3, 0x7f080396

    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-lez v14, :cond_17

    .line 65
    invoke-virtual {v0, v1, v14}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->n(Landroid/widget/TextView;I)V

    goto/16 :goto_5

    :cond_10
    const v3, 0x7f080a62

    goto :goto_4

    .line 66
    :cond_11
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1100d2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f060033

    .line 68
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 69
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v3, "\u7ee7\u7eed"

    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f06002a

    .line 71
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_12
    const v3, 0x7f080a62

    const v5, 0x7f06002a

    .line 72
    invoke-static {v8}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 73
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v3, "\u6682\u505c"

    .line 74
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_13
    const v3, 0x7f080a62

    const v5, 0x7f06002a

    .line 76
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v3, "\u5b89\u88c5\u4e2d"

    .line 77
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_14
    const-string v3, "\u6682\u505c\u4e2d"

    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 80
    :cond_15
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-lez v14, :cond_16

    .line 81
    invoke-virtual {v0, v1, v14}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->n(Landroid/widget/TextView;I)V

    goto :goto_5

    .line 82
    :cond_16
    invoke-virtual {v0, v1, v9}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->m(Landroid/widget/TextView;I)V

    .line 83
    :cond_17
    :goto_5
    new-instance v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;

    invoke-direct {v3, v0, v2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$c;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;->b()Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getItemViewType(I)I

    move-result v0

    .line 3
    sget-object v1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_AD:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_EXPLOSION:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_SECTION_TITLE:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_GAME_LIST:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->values()[Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public i()Lcom/join/mgps/adapter/EverydayNewGameAdapter$k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter$k;

    return-object v0
.end method

.method public l(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/Map;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 2
    invoke-virtual {p0, v1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getItemViewType(I)I

    move-result v2

    sget-object v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_GAME_LIST:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_a

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$c;

    .line 4
    iget-object v2, v2, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$c;->b:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v7, 0x5

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v7, :cond_1

    .line 10
    iget-object v8, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v8

    iget-object v9, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 11
    :goto_1
    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 13
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v7

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v3, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_4

    :cond_3
    if-eqz v5, :cond_4

    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 17
    invoke-virtual {v3, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 19
    invoke-virtual {v3, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 20
    :cond_5
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 21
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    goto :goto_3

    :cond_6
    move-object v5, v4

    :goto_3
    if-nez v5, :cond_7

    .line 22
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    :cond_7
    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 24
    invoke-virtual {v3, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 25
    :cond_8
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    invoke-virtual {v3, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    .line 29
    :cond_a
    invoke-virtual {p0, v1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getItemViewType(I)I

    move-result v2

    sget-object v3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_EXPLOSION:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 30
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;

    .line 31
    iget-object v2, v2, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_e

    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v5, :cond_b

    if-nez v7, :cond_b

    .line 36
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    if-ne p3, v6, :cond_f

    .line 37
    invoke-virtual {v2, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    :cond_b
    if-eqz v5, :cond_c

    .line 38
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    if-ne p3, v6, :cond_f

    .line 39
    invoke-virtual {v2, v5}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    :cond_c
    if-eqz v7, :cond_d

    .line 40
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    if-ne p3, v6, :cond_f

    .line 41
    invoke-virtual {v2, v7}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 42
    :cond_d
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 43
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    if-ne p3, v6, :cond_f

    .line 44
    invoke-virtual {v2, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 45
    :cond_e
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 46
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    if-ne p3, v6, :cond_f

    .line 47
    invoke-virtual {v2, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 48
    :cond_f
    :goto_5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method m(Landroid/widget/TextView;I)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, -0xc35b03

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f080a62

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1100d4

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 4
    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    const-string p2, "\u5373\u5c06\u5f00\u653e"

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41300000    # 11.0f

    .line 8
    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p2, -0x767677

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    const p2, 0x7f080a6a

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1100d1

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 13
    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method n(Landroid/widget/TextView;I)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v1, -0xc35b03

    .line 2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    int-to-double v3, p2

    invoke-static {v3, v4}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v0, v3

    const p2, 0x7f110261

    invoke-virtual {v2, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    const/high16 v0, 0x41500000    # 13.0f

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f080a62

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->b:Ljava/util/List;

    return-void
.end method

.method public p(Lcom/join/mgps/adapter/EverydayNewGameAdapter$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter$k;

    return-void
.end method

.method q(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$a;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Lcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public s(Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;Lcom/join/mgps/dto/AppBean;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getResidual_time()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 5
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-lez v2, :cond_1

    .line 6
    new-instance v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    move-object v10, p2

    move-object v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;JJLcom/join/mgps/dto/AppBean;Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->r(Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;Lcom/join/mgps/dto/AppBean;)V

    :cond_2
    :goto_0
    return-void
.end method
