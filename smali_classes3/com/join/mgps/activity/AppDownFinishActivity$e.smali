.class public Lcom/join/mgps/activity/AppDownFinishActivity$e;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "AppDownFinishActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/AppDownFinishActivity$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AppDownFinishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
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
            "Lcom/join/mgps/activity/AppDownFinishActivity$d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/join/mgps/activity/AppDownFinishActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/AppDownFinishActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->c:Lcom/join/mgps/activity/AppDownFinishActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->b:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->a:Ljava/util/List;

    return-void
.end method

.method private c(Lcom/join/mgps/activity/AppDownFinishActivity$d;Landroid/view/View;)V
    .locals 8

    const v0, 0x7f09075e

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09100f

    .line 2
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090687

    .line 3
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f090216

    .line 4
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 5
    sget-object v4, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->b:Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->c:Lcom/join/mgps/activity/AppDownFinishActivity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v4, Lcom/papa/sim/statistic/Event;->showSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v5, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v6, p1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->c:Lcom/join/mgps/activity/AppDownFinishActivity;

    invoke-static {v4}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    sget-object v5, Lcom/papa/sim/statistic/Event;->showSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v6, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v7, p1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    const/4 v4, 0x0

    .line 10
    iput-boolean v4, p1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->b:Z

    const-string v4, "\u5b89\u88c5\u5b8c\u6210"

    .line 11
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    iget-object v0, p1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    iget-object v0, p1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09114b

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity$e;Lcom/join/mgps/activity/AppDownFinishActivity$d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance p1, Lcom/join/mgps/activity/AppDownFinishActivity$e$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/AppDownFinishActivity$e$b;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity$e;)V

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public b(Lcom/join/mgps/activity/AppDownFinishActivity$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->a:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->b:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/AppDownFinishActivity$d;

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/AppDownFinishActivity$e;->c(Lcom/join/mgps/activity/AppDownFinishActivity$d;Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e;->a:Ljava/util/List;

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
