.class public Lcom/join/mgps/dialog/e$d;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "AppDownFinishDialog.java"

# interfaces
.implements Lcom/join/mgps/dialog/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dialog/e$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/join/mgps/dialog/e;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dialog/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/e$d;->c:Lcom/join/mgps/dialog/e;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/e$d;->b:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/e$d;->a:Ljava/util/List;

    return-void
.end method

.method private c(Lcom/join/mgps/dialog/e$c;Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f09075e

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09100f

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090687

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f090216

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f091172

    .line 6
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09082b

    .line 7
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f09100c

    .line 8
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 9
    iget-object v7, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-nez v7, :cond_2

    iget-object v7, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v10, 0x0

    cmpg-float v7, v7, v10

    if-gtz v7, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v7, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :goto_1
    iget-object v4, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v4, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 18
    :cond_4
    :goto_2
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :goto_3
    sget-object v4, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    const-string v4, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 20
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d;->c:Lcom/join/mgps/dialog/e;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v4, Lcom/papa/sim/statistic/Event;->showSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v6, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v7, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_5

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d;->c:Lcom/join/mgps/dialog/e;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v4, Lcom/papa/sim/statistic/Event;->showSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v5, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v6, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_5

    .line 24
    :cond_6
    iget-object v4, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    iget-object v4, p0, Lcom/join/mgps/dialog/e$d;->c:Lcom/join/mgps/dialog/e;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    sget-object v6, Lcom/papa/sim/statistic/Event;->showSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v7, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v7}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v8, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_4

    .line 26
    :cond_7
    iget-object v4, p0, Lcom/join/mgps/dialog/e$d;->c:Lcom/join/mgps/dialog/e;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    sget-object v5, Lcom/papa/sim/statistic/Event;->showSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v6, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v7, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :goto_4
    const-string v4, "\u5b89\u88c5\u5b8c\u6210"

    .line 27
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_5
    iget-object v0, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 29
    iget-object v0, p1, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09114b

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/dialog/e$d$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/e$d$a;-><init>(Lcom/join/mgps/dialog/e$d;Lcom/join/mgps/dialog/e$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance p2, Lcom/join/mgps/dialog/e$d$b;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/dialog/e$d$b;-><init>(Lcom/join/mgps/dialog/e$d;Lcom/join/mgps/dialog/e$c;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public b(Lcom/join/mgps/dialog/e$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/e$d;->a:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c02e8

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/e$d;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/e$c;

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/dialog/e$d;->c(Lcom/join/mgps/dialog/e$c;Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/e$d;->a:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
