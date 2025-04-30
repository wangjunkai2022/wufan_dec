.class public Lcom/join/mgps/fragment/k0$d;
.super Lcom/join/mgps/base/a;
.source "FindMiniGameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/k0$d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/a<",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:I = 0x1

.field public static final f:I = 0x2


# instance fields
.field final synthetic d:Lcom/join/mgps/fragment/k0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/k0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/k0$d;->d:Lcom/join/mgps/fragment/k0;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/base/a;-><init>(Ljava/util/List;)V

    const/4 p1, 0x1

    const v0, 0x7f0c02f6

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->a(II)V

    const/4 p1, 0x2

    const v0, 0x7f0c02f7

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->a(II)V

    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/fragment/k0$d;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/k0$d;->l(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method private j(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 13

    const-string v0, "#"

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/JpInfoBean;->isGame()Z

    move-result v2

    const v6, 0x7f090d07

    const v7, 0x7f090dd1

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f090a37

    invoke-virtual {p1, v9, v8}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 6
    invoke-virtual {p1, v9}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {p1, v7}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    move-result-object v8

    .line 12
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 13
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v7}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const v7, 0x7f0905ee

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    move-result v8

    if-ne v8, v4, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p1, v7, v8}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    const v11, 0x7f091172

    cmpl-double v12, v7, v9

    if-lez v12, :cond_3

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->showScore()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v11, v7}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 18
    invoke-virtual {p1, v11, v4}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {p1, v11, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :goto_2
    const v7, 0x7f091121

    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v8

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->o1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v2

    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v2, v7, v1}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    :cond_4
    const v1, 0x7f0900e1

    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 23
    invoke-virtual {p1, v7}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 24
    :cond_5
    :goto_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0912d4

    .line 25
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/video/MultiStandVideo;

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/component/video/MultiStandVideo;->i(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/join/mgps/fragment/k0$d;->d:Lcom/join/mgps/fragment/k0;

    iget-object v2, v2, Lcom/join/mgps/fragment/k0;->j:Lcom/join/android/app/component/video/d;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    move-object v7, v1

    .line 30
    invoke-virtual/range {v7 .. v12}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 31
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 32
    invoke-virtual {v1, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 33
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 34
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 35
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 36
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 37
    new-instance v2, Lcom/join/mgps/fragment/k0$d$a;

    invoke-direct {v2, p0, p2}, Lcom/join/mgps/fragment/k0$d$a;-><init>(Lcom/join/mgps/fragment/k0$d;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lc2/h;)V

    .line 38
    :cond_6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f090916

    if-eqz v1, :cond_8

    .line 39
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->q(II)Lcom/join/mgps/base/b;

    goto :goto_4

    .line 41
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->q(II)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_8
    const-string v0, "#994558"

    .line 43
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->q(II)Lcom/join/mgps/base/b;

    :goto_4
    const v0, 0x7f090cac

    .line 44
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/k0$d$b;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/fragment/k0$d$b;-><init>(Lcom/join/mgps/fragment/k0$d;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/l0;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/fragment/l0;-><init>(Lcom/join/mgps/fragment/k0$d;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :cond_9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getRequestStatus()I

    move-result p2

    const/16 v0, 0x2f

    const v1, 0x7f090a3a

    const v2, 0x7f090bfd

    if-ne p2, v0, :cond_a

    .line 47
    invoke-virtual {p1, v2, v4}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 48
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto :goto_5

    .line 49
    :cond_a
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    const-string p2, "\u6253\u5f00"

    .line 50
    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    :goto_5
    return-void
.end method

.method private synthetic l(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 1

    const/16 p2, 0x96

    .line 1
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/fragment/k0$d;->d:Lcom/join/mgps/fragment/k0;

    iget-object v0, v0, Lcom/join/mgps/fragment/k0;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/k0$d;->k(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method i(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 3

    const/16 v0, 0x96

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExt()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    :goto_0
    const-string v1, "150"

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExt(Ljava/lang/String;)V

    return-void
.end method

.method protected k(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/k0$d;->j(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    return-void
.end method
