.class public Lcom/join/mgps/adapter/a3;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "ModGameRecommendExpandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private b:[I

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c031e

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/join/mgps/adapter/a3;->b:[I

    const-string v0, "#EACBC3"

    const-string v1, "#E8E351"

    const-string v2, "#D1AFF4"

    .line 3
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/a3;->c:[Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/a3;->a:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080b0a
        0x7f080b0b
        0x7f080b0c
    .end array-data
.end method


# virtual methods
.method protected a(Lcom/join/mgps/base/b;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 9

    const v0, 0x7f09109e

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090d90

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f080b13

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/a3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_dimension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const v0, 0x7f09090b

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/adapter/a3;->b:[I

    const/4 v5, 0x3

    rem-int/2addr v1, v5

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v3, 0x7f0910bd

    .line 7
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/join/mgps/adapter/a3;->c:[Ljava/lang/String;

    aget-object v1, v6, v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_dimension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->O(IZ)Lcom/join/mgps/base/b;

    .line 9
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_dimension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const v0, 0x7f0910be

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0907c9

    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 15
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 18
    :cond_5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v0

    if-eqz v0, :cond_7

    const v0, 0x7f0907cd

    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 21
    :cond_6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/a;

    sget-object v3, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_7
    const v0, 0x7f090c58

    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 26
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    goto :goto_3

    .line 27
    :cond_8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    :goto_3
    const-string v1, "\u6682\u505c"

    const-string v3, "\u83b7\u53d6"

    if-eqz p2, :cond_f

    .line 28
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_e

    const/16 v8, 0x1b

    if-eq v6, v8, :cond_d

    const/16 v8, 0x30

    if-eq v6, v8, :cond_c

    const/4 v8, 0x2

    if-eq v6, v8, :cond_b

    if-eq v6, v5, :cond_a

    const/4 v1, 0x5

    if-eq v6, v1, :cond_9

    const/4 v1, 0x6

    if-eq v6, v1, :cond_a

    const/4 p2, 0x7

    if-eq v6, p2, :cond_e

    const/16 p2, 0x2a

    if-eq v6, p2, :cond_9

    const/16 p2, 0x2b

    if-eq v6, p2, :cond_e

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    .line 29
    :pswitch_0
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "\u89e3\u538b"

    goto :goto_5

    .line 30
    :pswitch_1
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "\u89e3\u538b\u4e2d"

    goto :goto_5

    .line 31
    :pswitch_2
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "\u5b89\u88c5"

    goto :goto_5

    .line 32
    :pswitch_3
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "\u7b49\u5f85"

    goto :goto_5

    .line 33
    :cond_9
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "\u542f\u52a8"

    goto :goto_5

    .line 34
    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 35
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int p2, v5

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v1, "\u7ee7\u7eed"

    goto :goto_5

    .line 36
    :cond_b
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 37
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int p2, v5

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_5

    .line 38
    :cond_c
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "\u5b89\u88c5\u4e2d"

    goto :goto_5

    .line 39
    :cond_d
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 40
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int p2, v5

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_5

    .line 41
    :cond_e
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_f
    :goto_4
    move-object v1, v3

    :goto_5
    const p2, 0x7f0910b0

    .line 42
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v0, v4, [I

    aput p2, v0, v2

    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->c([I)Lcom/join/mgps/base/b;

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/a3;->a(Lcom/join/mgps/base/b;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/a3;->a:Ljava/util/List;

    return-void
.end method
