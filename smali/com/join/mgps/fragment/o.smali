.class public Lcom/join/mgps/fragment/o;
.super Landroidx/fragment/app/Fragment;
.source "CodesBoxFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c01fc
.end annotation


# instance fields
.field a:Lcom/join/mgps/rpc/d;

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:I

.field private h:Landroid/widget/TextView;

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/join/mgps/adapter/g;

.field private p:Lcom/join/mgps/adapter/h;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Lcom/join/mgps/customview/t;

.field private s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private t:Landroid/widget/TextView;

.field u:Landroid/os/Handler;

.field private v:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/fragment/o$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/o$a;-><init>(Lcom/join/mgps/fragment/o;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->u:Landroid/os/Handler;

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/o;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/o;->j:Z

    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/o;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/o;->k:I

    return p1
.end method

.method static synthetic P(Lcom/join/mgps/fragment/o;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/o;)Lcom/join/mgps/customview/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    return-object p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/o;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method


# virtual methods
.method S()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o;->j:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget v2, p0, Lcom/join/mgps/fragment/o;->k:I

    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/o;->U(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->a:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->L0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageBean;->getFlag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageBean;->getMessages()Lcom/join/mgps/dto/GiftPackageMessageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageMessageBean;->getData()Lcom/join/mgps/dto/GiftPackageMainDataInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageMainDataInfoBean;->getUser()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageBean;->getMessages()Lcom/join/mgps/dto/GiftPackageMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageMessageBean;->getData()Lcom/join/mgps/dto/GiftPackageMainDataInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageMainDataInfoBean;->getRecommend()Ljava/util/List;

    move-result-object v2

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 9
    iget v2, p0, Lcom/join/mgps/fragment/o;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/join/mgps/fragment/o;->k:I

    .line 10
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/o;->showMain(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 11
    iget v3, p0, Lcom/join/mgps/fragment/o;->k:I

    if-ne v3, v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->n:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->Z()V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->W()V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->W()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o;->j:Z

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->a0()V

    goto :goto_2

    .line 20
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o;->j:Z

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->a0()V

    .line 22
    throw v0

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->W()V

    :goto_2
    return-void
.end method

.method T(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u9886\u53d6\u5931\u8d25"

    if-eqz v0, :cond_7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {p2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->a:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->f0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageOperationBean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getFlag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getError_info()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getMessages()Lcom/join/mgps/dto/GiftPackageOperationMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageOperationMessageBean;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 15
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_overdue(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/fragment/o;->n:Ljava/util/List;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->S()V

    .line 19
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o;->V(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public U(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/fragment/o;->g:I

    iget v2, p0, Lcom/join/mgps/fragment/o;->l:I

    const-string v3, ""

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageRequestBean(IIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method V(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->o:Lcom/join/mgps/adapter/g;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c0563

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->v:Landroid/widget/Button;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    const v1, 0x7f09036b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    const v2, 0x7f09100a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    const v3, 0x7f090db2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    const v4, 0x7f090db1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 9
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    const v5, 0x7f090a6f

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/join/mgps/fragment/o;->t:Landroid/widget/TextView;

    const-string v4, "\u9886\u53f7\u6210\u529f"

    .line 10
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u5173\u95ed"

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->v:Landroid/widget/Button;

    const-string v3, "\u4e0b\u8f7d\u6e38\u620f"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v5, 0x9

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-nez v4, :cond_3

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 19
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v8, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 20
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    iget-object v8, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    iget-object v8, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v4

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 23
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 26
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadType()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 28
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 29
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    .line 30
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0x2b

    if-lez v4, :cond_5

    const/16 v7, 0x2b

    :cond_5
    if-eqz v7, :cond_7

    if-eq v7, v6, :cond_6

    if-eq v7, v5, :cond_7

    if-eq v7, v8, :cond_7

    .line 31
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->v:Landroid/widget/Button;

    const-string v4, "\u4e0b\u8f7d\u4e2d.."

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 32
    :cond_6
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->v:Landroid/widget/Button;

    const-string v4, "\u542f\u52a8\u6e38\u620f"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 33
    :cond_7
    iget-object v4, p0, Lcom/join/mgps/fragment/o;->v:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 35
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->v:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v5

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->D2(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/fragment/o;->t:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 37
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    if-eqz v3, :cond_9

    .line 38
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    return-void

    .line 39
    :cond_8
    iget-object v3, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 40
    :cond_9
    new-instance v3, Lcom/join/mgps/fragment/o$f;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/fragment/o$f;-><init>(Lcom/join/mgps/fragment/o;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance p1, Lcom/join/mgps/fragment/o$g;

    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/o$g;-><init>(Lcom/join/mgps/fragment/o;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->v:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/fragment/o$h;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/o$h;-><init>(Lcom/join/mgps/fragment/o;Lcom/join/mgps/dto/DetailResultBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method W()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/fragment/o;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method X()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
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

.method Z()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->q:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->b:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->p:Lcom/join/mgps/adapter/h;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110203

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method a0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->a:Lcom/join/mgps/rpc/d;

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/o;->k:I

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/o$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o$b;-><init>(Lcom/join/mgps/fragment/o;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/o$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o$c;-><init>(Lcom/join/mgps/fragment/o;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/o$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o$d;-><init>(Lcom/join/mgps/fragment/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x14

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/o;->l:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->m:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->n:Ljava/util/List;

    .line 11
    new-instance v0, Lcom/join/mgps/adapter/g;

    iget-object v1, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/fragment/o;->m:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/g;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->o:Lcom/join/mgps/adapter/g;

    .line 12
    new-instance v0, Lcom/join/mgps/adapter/h;

    iget-object v1, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/fragment/o;->n:Ljava/util/List;

    iget-object v3, p0, Lcom/join/mgps/fragment/o;->u:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/adapter/h;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->p:Lcom/join/mgps/adapter/h;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090417

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/join/mgps/fragment/o;->q:Landroid/widget/RelativeLayout;

    const v1, 0x7f090fe9

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o;->h:Landroid/widget/TextView;

    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->q:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/fragment/o$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/o$e;-><init>(Lcom/join/mgps/fragment/o;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    iget-object v2, p0, Lcom/join/mgps/fragment/o;->o:Lcom/join/mgps/adapter/g;

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/join/mgps/fragment/o;->p:Lcom/join/mgps/adapter/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->X()V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->S()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "uid"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/fragment/o;->g:I

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->r:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

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

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/16 v1, 0x30

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_3
    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/o;->k:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->X()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->S()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/o;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/join/mgps/fragment/o;->k:I

    if-ge p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o;->o:Lcom/join/mgps/adapter/g;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
