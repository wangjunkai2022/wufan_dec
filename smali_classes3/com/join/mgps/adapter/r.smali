.class public Lcom/join/mgps/adapter/r;
.super Landroid/widget/BaseAdapter;
.source "DownloadedCenterEmulatorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/r$k;,
        Lcom/join/mgps/adapter/r$l;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/app/Activity;

.field c:Landroid/widget/ListView;

.field d:Lcom/join/mgps/adapter/r$k;

.field e:Lcom/join/mgps/dto/DownloadCenterBean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/r;->a:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadCenterBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/join/mgps/adapter/r;->d:Lcom/join/mgps/adapter/r$k;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/adapter/r$k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/r;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadCenterBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/r;->d:Lcom/join/mgps/adapter/r$k;

    return-void
.end method


# virtual methods
.method public a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public c()Lcom/join/mgps/dto/DownloadCenterBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    return-object v0
.end method

.method public d()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public e(Landroid/widget/ListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r;->c:Landroid/widget/ListView;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    new-instance v2, Lcom/join/mgps/adapter/r$l;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/r$l;-><init>(Lcom/join/mgps/adapter/r;)V

    .line 2
    iget-object v3, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c01cb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const v4, 0x7f090709

    .line 3
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0905ef

    .line 4
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->c:Landroid/widget/ImageView;

    const v4, 0x7f090acd

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->d:Landroid/widget/TextView;

    const v4, 0x7f090ee6

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->f:Landroid/widget/LinearLayout;

    const v4, 0x7f09033d

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->g:Landroid/widget/LinearLayout;

    const v4, 0x7f090a3a

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    const v4, 0x7f090cac

    .line 9
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->j:Landroid/widget/RelativeLayout;

    const v4, 0x7f090a92

    .line 10
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->h:Landroid/widget/LinearLayout;

    const v4, 0x7f0900a9

    .line 11
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->i:Landroid/widget/LinearLayout;

    const v4, 0x7f0900df

    .line 12
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->e:Landroid/widget/TextView;

    const v4, 0x7f090b2b

    .line 13
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->l:Landroid/widget/ImageView;

    const v4, 0x7f0907a6

    .line 14
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/join/mgps/adapter/r$l;->m:Landroid/widget/ImageView;

    const v4, 0x7f0908d3

    .line 15
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {v2, v4}, Lcom/join/mgps/adapter/r$l;->b(Lcom/join/mgps/adapter/r$l;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 17
    :cond_0
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/r$l;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v3, p2

    .line 18
    :goto_0
    :try_start_3
    iget-object v4, v1, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v0, v4, :cond_13

    .line 19
    iget-object v4, v1, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v5, 0x7f

    .line 20
    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v5, 0x1

    const v6, 0x7f08099f

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 21
    :try_start_4
    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 23
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 24
    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    goto :goto_1

    .line 25
    :cond_1
    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    move-result v12

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v14

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v15

    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->f:Landroid/widget/LinearLayout;

    iget-object v10, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 27
    :goto_1
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGift_package_switch()I

    move-result v9

    if-ne v9, v5, :cond_2

    .line 28
    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->c:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 29
    :cond_2
    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->c:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    :goto_2
    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 31
    :catch_0
    :try_start_5
    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->i:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/join/mgps/adapter/r$b;

    invoke-direct {v10, v1, v4}, Lcom/join/mgps/adapter/r$b;-><init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-static {v2}, Lcom/join/mgps/adapter/r$l;->a(Lcom/join/mgps/adapter/r$l;)Landroid/widget/LinearLayout;

    move-result-object v9

    new-instance v10, Lcom/join/mgps/adapter/r$c;

    invoke-direct {v10, v1, v0, v4}, Lcom/join/mgps/adapter/r$c;-><init>(Lcom/join/mgps/adapter/r;ILcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v9, v1, Lcom/join/mgps/adapter/r;->d:Lcom/join/mgps/adapter/r$k;

    if-eqz v9, :cond_3

    .line 34
    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->m:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object v9, v2, Lcom/join/mgps/adapter/r$l;->m:Landroid/widget/ImageView;

    new-instance v10, Lcom/join/mgps/adapter/r$d;

    invoke-direct {v10, v1, v0, v4}, Lcom/join/mgps/adapter/r$d;-><init>(Lcom/join/mgps/adapter/r;ILcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_3
    invoke-static {v2}, Lcom/join/mgps/adapter/r$l;->a(Lcom/join/mgps/adapter/r$l;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v9, Lcom/join/mgps/adapter/r$e;

    invoke-direct {v9, v1, v4}, Lcom/join/mgps/adapter/r$e;-><init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 37
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 39
    :cond_4
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_3
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    const v9, 0x7f06002a

    const v10, 0x7f080a62

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v12}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    .line 42
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 43
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    const-string v5, "\u5f00\u59cb"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->j:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/join/mgps/adapter/r$f;

    invoke-direct {v5, v1, v4}, Lcom/join/mgps/adapter/r$f;-><init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 47
    :cond_5
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v11, "\u5b89\u88c5"

    const/4 v12, 0x5

    const-string v13, "\u66f4\u65b0"

    const/16 v14, 0x9

    const v15, -0x8d57ef

    const v9, 0x7f080a67

    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v16, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    goto :goto_4

    .line 51
    :cond_6
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    move-result v17

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v19

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v20

    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->f:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    invoke-static/range {v16 .. v22}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 53
    :goto_4
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 54
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eq v0, v12, :cond_8

    if-eq v0, v14, :cond_7

    goto :goto_5

    .line 55
    :cond_7
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    .line 56
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 59
    :cond_8
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 61
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    :goto_5
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->j:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/join/mgps/adapter/r$g;

    invoke-direct {v5, v1, v4}, Lcom/join/mgps/adapter/r$g;-><init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 64
    :cond_9
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    const v7, 0x7f080a6e

    if-eqz v0, :cond_11

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v16, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    .line 67
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v5

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v5

    const/16 v6, 0x2b

    if-lez v5, :cond_a

    const/16 v0, 0x2b

    :cond_a
    if-eq v0, v12, :cond_10

    if-eq v0, v14, :cond_f

    const/16 v5, 0xb

    if-eq v0, v5, :cond_e

    const/16 v5, 0x30

    if-eq v0, v5, :cond_d

    const/16 v5, 0x2a

    if-eq v0, v5, :cond_10

    if-eq v0, v6, :cond_b

    goto/16 :goto_6

    .line 68
    :cond_b
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 69
    iget-object v0, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f1100d5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v5

    if-lez v5, :cond_c

    .line 71
    iget-object v0, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f110261

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v7

    int-to-double v9, v7

    invoke-static {v9, v10}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_c
    iget-object v5, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 74
    :cond_d
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    .line 75
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 76
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    const-string v5, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 78
    :cond_e
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 80
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 82
    :cond_f
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    .line 83
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 86
    :cond_10
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    .line 87
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 88
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    const v5, -0xa81da

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    :goto_6
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->j:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/join/mgps/adapter/r$h;

    invoke-direct {v5, v1, v4}, Lcom/join/mgps/adapter/r$h;-><init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 91
    :cond_11
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    .line 92
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 93
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    const v5, -0xa81da

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v14, :cond_12

    .line 96
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    .line 97
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 98
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->j:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/join/mgps/adapter/r$i;

    invoke-direct {v5, v1, v4}, Lcom/join/mgps/adapter/r$i;-><init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 101
    :cond_12
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->j:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/join/mgps/adapter/r$j;

    invoke-direct {v5, v1, v4}, Lcom/join/mgps/adapter/r$j;-><init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :goto_7
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    :goto_8
    iget-object v0, v2, Lcom/join/mgps/adapter/r$l;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/r$a;

    invoke-direct {v2, v1, v4}, Lcom/join/mgps/adapter/r$a;-><init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v3, p2

    .line 104
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_a
    return-object v3
.end method
