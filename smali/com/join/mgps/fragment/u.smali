.class public Lcom/join/mgps/fragment/u;
.super Landroidx/fragment/app/Fragment;
.source "CollectionThreeSubFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c00f8
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private k:Landroid/content/Context;

.field private l:Lcom/join/mgps/dto/CollectionDataBeanInfo;

.field private m:Lcom/join/mgps/dto/CollectionBeanSub;

.field private n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field o:Lcom/join/mgps/rpc/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method M(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->updateButn()V

    return-void
.end method

.method N(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public O(Lcom/join/mgps/dto/CollectionDataBeanInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u;->l:Lcom/join/mgps/dto/CollectionDataBeanInfo;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getSub()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    iput-object p1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    return-void
.end method

.method P()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->l:Lcom/join/mgps/dto/CollectionDataBeanInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getMain()Lcom/join/mgps/dto/BreakBeanMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/BreakBeanMain;->getTpl_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f0807b1

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->updateButn()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->o:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 17
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->P()V

    return-void
.end method

.method instalButtomButn()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/16 v0, 0x2b

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x2

    if-eqz v1, :cond_4

    if-eq v0, v2, :cond_3

    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    :cond_3
    const/4 v0, 0x3

    .line 4
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_4

    :cond_4
    const/16 v3, 0xc

    if-ne v0, v3, :cond_5

    return-void

    :cond_5
    const/16 v3, 0xd

    if-ne v0, v3, :cond_6

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_6
    const/4 v3, 0x5

    if-ne v0, v3, :cond_7

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_4

    :cond_7
    const/16 v4, 0x9

    const-string v5, ""

    if-ne v0, v4, :cond_10

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    if-eq v0, v2, :cond_9

    goto/16 :goto_4

    .line 11
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_4

    .line 12
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_1

    .line 13
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 22
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_4

    .line 24
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    if-ne v0, v3, :cond_e

    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_4

    .line 26
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto/16 :goto_4

    :cond_f
    :goto_1
    return-void

    :cond_10
    const/16 v4, 0x2a

    if-ne v0, v4, :cond_13

    .line 27
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2

    .line 28
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    :cond_12
    :goto_2
    return-void

    :cond_13
    const/16 v4, 0xb

    if-ne v4, v0, :cond_14

    .line 35
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_4

    .line 36
    :cond_14
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 38
    :cond_15
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_3

    .line 40
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    if-ne v0, v3, :cond_17

    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 42
    :cond_17
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 43
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 44
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->updateButn()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/u;->j:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/u;->i:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->updateButn()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_3

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->updateButn()V

    :cond_3
    return-void
.end method

.method progress_layout()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->updateButn()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->updateButn()V

    :cond_3
    :goto_0
    return-void
.end method

.method showInstallButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->f:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method showProgress()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method updateButn()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    const v1, 0x7f080345

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x2b

    if-lez v2, :cond_2

    const/16 v0, 0x2b

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

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

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    const v1, 0x7f080a62

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_4

    :cond_3
    const/16 v2, 0xc

    const/4 v4, -0x1

    if-ne v0, v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    const-string v1, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    const v1, 0x7f0803ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_4
    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    const v1, 0x7f080a7b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_5
    const/16 v2, 0x9

    const v5, 0x7f080324

    if-ne v0, v2, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_6
    const/16 v2, 0xb

    if-ne v0, v2, :cond_7

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_7
    const/4 v2, 0x5

    if-eq v0, v2, :cond_10

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_8

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showProgress()V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    const v1, 0x7f080325

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/php25/PDownload/d;->i(Ljava/lang/String;J)D

    move-result-wide v0

    double-to-int v0, v0

    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 31
    iget-object v1, p0, Lcom/join/mgps/fragment/u;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_9
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showProgress()V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/php25/PDownload/d;->i(Ljava/lang/String;J)D

    move-result-wide v0

    double-to-int v0, v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/u;->N(I)V

    goto/16 :goto_4

    :cond_a
    const/16 v2, 0xa

    const-string v6, "M"

    if-ne v0, v2, :cond_b

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b49\u5f85\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x1

    const v7, 0x7f110261

    const-string v8, "\u3000"

    const v9, 0x7f1100d1

    if-ne v0, v3, :cond_d

    .line 42
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v0

    if-lez v0, :cond_c

    .line 44
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 46
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz v0, :cond_11

    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->r2(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_4

    :cond_d
    const/16 v3, 0x30

    if-ne v0, v3, :cond_e

    .line 52
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 54
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v0

    if-lez v0, :cond_f

    .line 56
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 57
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 58
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz v0, :cond_11

    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->m:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->r2(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto :goto_4

    .line 64
    :cond_10
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    .line 65
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    const v1, 0x7f080347

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 66
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/fragment/u;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    :goto_4
    return-void
.end method
