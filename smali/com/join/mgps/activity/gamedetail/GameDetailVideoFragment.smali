.class public Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;
.super Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;
.source "GameDetailVideoFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0286
.end annotation


# instance fields
.field accountBean:Lcom/join/mgps/dto/AccountBean;

.field butnProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field butn_showdownload:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field content:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

.field controller:Landroid/widget/MediaController;

.field cover:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field coverback:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field extBean:Lcom/join/mgps/dto/ExtBean;

.field gameId:Ljava/lang/String;

.field gameName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field instalButtomButn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field instalbutnLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field mpx:Landroid/media/MediaPlayer;

.field nowIsNoSound:Z

.field percent:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field playIcon:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private playUrl:Ljava/lang/String;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field progressbarLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private proxy:Lcom/danikula/videocache/i;

.field private proxyUrl:Ljava/lang/String;

.field rpcClient:Lcom/join/mgps/rpc/d;

.field sound:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statuHVIew:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private statubarH:I

.field videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    return-void
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private uptateUi()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Lg1/f;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    sget-object v7, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 8
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 12
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_2

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_9

    .line 17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_d

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v3, 0x2775

    .line 20
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_3

    .line 28
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_3

    .line 29
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_3

    .line 30
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_3

    .line 31
    :cond_d
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTask_down_type(I)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 34
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    return-void
.end method


# virtual methods
.method addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "112"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v2, "101"

    .line 4
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    const-string v1, "1"

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setNodeId(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method afterView()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/d;

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const-string v2, "videoDatas"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;

    if-eqz v2, :cond_6

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v3}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v3}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v3

    const-string v4, "\u5f53\u524d\u4e3a\u975eWi-Fi\u73af\u5883\uff0c\u8bf7\u6ce8\u610f\u6d41\u91cf\u6d88\u8017"

    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->soundnowIsNoSound()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    const v4, 0x7f080470

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    const v4, 0x7f080471

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideo_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideo_url()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playUrl:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getModleFourBeanShow()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    const-string v3, "gameId"

    .line 15
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    const-string v3, "extBean"

    .line 16
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-nez v0, :cond_2

    .line 17
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-nez v0, :cond_3

    return-void

    .line 19
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071146

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->content:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getSub_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->controller:Landroid/widget/MediaController;

    const/4 v3, 0x4

    .line 24
    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/MApplication;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->proxy:Lcom/danikula/videocache/i;

    .line 26
    invoke-virtual {v2}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideo_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/danikula/videocache/i;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->proxyUrl:Ljava/lang/String;

    .line 27
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    const-string v4, ""

    invoke-virtual {v3, v0, v1, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->thumbImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideoCover()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v0, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    iget-boolean v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMute(Z)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    const-string v0, "xxxxxxxx"

    const-string v2, "detailVIdeo PlayVideo"

    .line 32
    invoke-static {v0, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showVideo()V

    .line 34
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statubarH:I

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statuHVIew:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_7

    .line 37
    iget v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statubarH:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statuHVIew:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 39
    :cond_7
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statuHVIew:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->uptateUi()V

    .line 42
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    return-void
.end method

.method changeGameFollow(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->accountBean:Lcom/join/mgps/dto/AccountBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 6
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 8
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v1, ""

    .line 11
    :goto_1
    new-instance v2, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;-><init>()V

    .line 12
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setApp_ver(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setGame_id(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setUid(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setMobile(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->d0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    goto :goto_2

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->o(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    goto :goto_2

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->D(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    goto :goto_2

    .line 20
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->O0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    :cond_6
    return-void
.end method

.method public clearVideo()V
    .locals 2

    const-string v0, "sssssssscc"

    const-string v1, "clearVideo"

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->controller:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/widget/MediaController;->removeAllViews()V

    :cond_1
    return-void
.end method

.method coverText()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->clickPlay()V

    return-void
.end method

.method delayCheckplay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    :cond_1
    return-void
.end method

.method gameInfoLayout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    sget-boolean v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method instalButtomButn()V
    .locals 13
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->changeGameFollow(I)V

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 10
    :goto_1
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v6, 0x2b

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    const/16 v0, 0x2b

    .line 11
    :cond_5
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    const/4 v7, 0x5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 12
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v5, v8}, Lg1/f;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    .line 14
    :cond_6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_f

    .line 15
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f

    .line 16
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :cond_7
    const/4 v9, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    sget-object v11, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 18
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v8

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v7, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 19
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    if-ne v9, v7, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_a
    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    .line 20
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_4

    :cond_b
    if-eqz v8, :cond_c

    .line 21
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 22
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_4

    :cond_c
    if-eqz v9, :cond_d

    .line 23
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_4

    .line 24
    :cond_d
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 25
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    :cond_e
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v5, :cond_10

    .line 27
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    .line 28
    iput-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    :cond_10
    :goto_4
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v5, :cond_11

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->M0(Landroid/content/Context;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void

    :cond_11
    if-eqz v5, :cond_13

    if-eq v0, v2, :cond_12

    const/16 v8, 0xa

    if-ne v0, v8, :cond_13

    .line 31
    :cond_12
    invoke-static {v5}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_a

    :cond_13
    const/16 v8, 0xc

    if-eq v0, v8, :cond_3b

    const/16 v8, 0x1b

    if-ne v0, v8, :cond_14

    goto/16 :goto_b

    :cond_14
    const/16 v8, 0xd

    if-ne v0, v8, :cond_15

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0, v5}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_15
    if-ne v0, v7, :cond_16

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    const-string v1, "2"

    invoke-static {v0, v5, v1}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_16
    const/16 v8, 0x2a

    if-ne v0, v8, :cond_18

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v4

    :cond_17
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_a

    :cond_18
    const/16 v8, 0x9

    const-string v9, "checkgame"

    if-ne v0, v8, :cond_28

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_19
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v6, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialMoreBean;->getAd_pic_qq()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v5, v6, v8, v10}, Lcom/join/mgps/Util/z;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1a
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v0

    if-eqz v0, :cond_1c

    if-eq v0, v3, :cond_1c

    if-eq v0, v2, :cond_1b

    goto/16 :goto_a

    .line 50
    :cond_1b
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_a

    .line 51
    :cond_1c
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_7

    .line 52
    :cond_1d
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    .line 54
    :cond_1e
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_1f

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 56
    :cond_1f
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v4

    :cond_20
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_24

    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 68
    :cond_21
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_5

    .line 69
    :cond_22
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_23

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 71
    :cond_23
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    goto/16 :goto_a

    .line 73
    :cond_24
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->g1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_6

    .line 75
    :cond_25
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_26

    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_6

    .line 77
    :cond_26
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 78
    :goto_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    goto/16 :goto_a

    :cond_27
    :goto_7
    return-void

    :cond_28
    const/16 v1, 0xb

    if-ne v1, v0, :cond_29

    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v5, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_a

    :cond_29
    if-ne v6, v0, :cond_31

    .line 80
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_3a

    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialMoreBean;->getAd_pic_qq()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/z;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_2a
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2e

    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 88
    :cond_2b
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_8

    .line 89
    :cond_2c
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_2d

    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_8

    .line 91
    :cond_2d
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :goto_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    goto/16 :goto_a

    .line 93
    :cond_2e
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->g1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto/16 :goto_a

    .line 95
    :cond_2f
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_30

    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_a

    .line 97
    :cond_30
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto/16 :goto_a

    :cond_31
    const/16 v1, 0x30

    if-ne v1, v0, :cond_32

    goto/16 :goto_a

    .line 98
    :cond_32
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gamePageDownload_type:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_3a

    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialMoreBean;->getAd_pic_qq()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/z;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_33
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_37

    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 107
    :cond_34
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_9

    .line 108
    :cond_35
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_36

    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_9

    .line 110
    :cond_36
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    :goto_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    goto :goto_a

    .line 112
    :cond_37
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->g1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_a

    .line 114
    :cond_38
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_39

    .line 115
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_a

    .line 116
    :cond_39
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 117
    :cond_3a
    :goto_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    :cond_3b
    :goto_b
    return-void
.end method

.method iv_back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    :cond_0
    const-string v0, "ssssssssx"

    const-string v1, "onDestroy"

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->controller:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/widget/MediaController;->removeAllViews()V

    .line 8
    :cond_1
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "ssssssss"

    const-string v1, "onDestroyView"

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method onDetailDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadCenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    const-string v1, "detailDownload4.2.0.6"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v1

    const-string v2, "%"

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_6

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    if-eq p1, v3, :cond_3

    const/16 v1, 0xb

    if-eq p1, v1, :cond_5

    const/16 v1, 0x30

    if-eq p1, v1, :cond_5

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_4
    return-void

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->pauseVideo()V

    const-string v0, "xxxxxxxxxxxx"

    const-string v1, "onPause"

    .line 3
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playVideo()V

    const-string v0, "xxxxxxxxxxxx"

    const-string v1, "onResume"

    .line 3
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V

    return-void
.end method

.method public pauseVideo()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -->performClick"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public playVideo()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getViewpagerCurrentPage()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -->performClick"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method progress_layout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDetailDownload()V

    :cond_3
    :goto_0
    return-void
.end method

.method public resumVideo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getViewpagerCurrentPage()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -->performClick"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showInstallButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->progressbarLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method showProgress()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->progressbarLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method showVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playVideo()V

    return-void
.end method

.method sound()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    const v1, 0x7f080470

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    const v1, 0x7f080471

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    iget-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMute(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->soundnowIsNoSound()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    iget-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->nowIsNoSound:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method updateButn()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDel_tag()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SNK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    const v1, 0x7f080344

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    const-string v1, "\u5df2\u4e0b\u67b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08034f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x2b

    if-lez v4, :cond_4

    const/16 v0, 0x2b

    :cond_4
    const/16 v4, 0x9

    const v6, 0x7f080324

    if-ne v0, v4, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_5
    const/16 v4, 0xc

    if-ne v0, v4, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_6
    const/16 v4, 0xd

    if-ne v0, v4, :cond_7

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_7
    const/16 v4, 0xb

    if-ne v0, v4, :cond_8

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    const-string v1, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    const v1, 0x7f080345

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_5

    :cond_8
    const/4 v4, 0x5

    if-eq v0, v4, :cond_18

    const/16 v4, 0x2a

    if-ne v0, v4, :cond_9

    goto/16 :goto_4

    :cond_9
    const-string v3, "%"

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showProgress()V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    const v1, 0x7f080325

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_a
    const/4 v7, 0x3

    if-eq v0, v7, :cond_17

    const/4 v7, 0x6

    if-eq v0, v7, :cond_17

    const/16 v8, 0x1b

    if-ne v0, v8, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v3, 0xa

    if-ne v0, v3, :cond_c

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b49\u5f85\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_c
    if-ne v0, v2, :cond_d

    goto/16 :goto_5

    :cond_d
    const-string v3, "\u5df2\u9884\u7ea6"

    const-string v8, "\u9884\u7ea6"

    const v9, 0x7f110261

    const-string v10, "\u7acb\u5373\u83b7\u53d6"

    if-ne v0, v5, :cond_12

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v10, v2, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v11}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 37
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_19

    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v0

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-eq v0, v4, :cond_f

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 41
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->A2(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    goto/16 :goto_5

    .line 45
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 46
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->A2(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    goto/16 :goto_5

    :cond_12
    const/16 v5, 0x30

    if-ne v0, v5, :cond_13

    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 50
    :cond_13
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v1

    invoke-virtual {v5, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 53
    :cond_14
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_19

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v0

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    if-ne v0, v4, :cond_16

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v0

    if-ne v0, v2, :cond_15

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->A2(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    goto :goto_5

    .line 61
    :cond_15
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 62
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->A2(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    goto :goto_5

    .line 64
    :cond_17
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showProgress()V

    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 69
    :cond_18
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_19
    :goto_5
    return-void
.end method

.method updatePlayImg()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x12cL
    .end annotation

    return-void
.end method

.method updateProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    instance-of v1, v0, Lcom/join/mgps/customview/DownloadProgressBar;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/join/mgps/customview/DownloadProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/customview/DownloadProgressBar;->update(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->setGame_book(I)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.broadcast.bespeak.sussess"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p2

    const-string v1, "gameid"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    new-instance v1, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment$1;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/join/mgps/Util/z;->O(Landroid/content/Context;ILl1/a;)Lcom/join/mgps/customview/t;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->setGame_book(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->setGame_follow(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->context:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u6536\u85cf\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->setGame_follow(I)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    :cond_5
    return-void
.end method
