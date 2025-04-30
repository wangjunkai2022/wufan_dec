.class public Lcom/join/mgps/fragment/m4;
.super Lcom/join/mgps/fragment/d;
.source "RankingItemV2Fragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0228
.end annotation


# instance fields
.field private A:Lcom/join/mgps/dto/RecomDatabean;

.field private B:I

.field final C:Ljava/util/concurrent/atomic/AtomicInteger;

.field D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field E:Landroid/view/View;

.field F:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/y4;

.field d:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/rpc/d;

.field private l:I

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Z

.field x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/m4;->l:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/join/mgps/fragment/m4;->n:I

    .line 5
    iput v1, p0, Lcom/join/mgps/fragment/m4;->o:I

    .line 6
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/fragment/m4;->p:Ljava/util/Map;

    .line 7
    iput v0, p0, Lcom/join/mgps/fragment/m4;->q:I

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->r:Ljava/lang/String;

    .line 9
    iput v1, p0, Lcom/join/mgps/fragment/m4;->s:I

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->t:Ljava/lang/String;

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/fragment/m4;->u:Z

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->z:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->D:Ljava/util/List;

    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/fragment/m4;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/fragment/m4;->W(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/m4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    return-object p0
.end method

.method private P(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    :cond_1
    if-nez v0, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 17
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/APKUtils;->S(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;)V

    return-void

    .line 19
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    :goto_1
    return-void

    :cond_7
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    .line 23
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x2b

    if-lez v2, :cond_9

    const/16 v1, 0x2b

    :cond_9
    const/4 v2, 0x5

    if-eqz v1, :cond_16

    const/16 v5, 0xd

    if-eq v1, v5, :cond_15

    const/4 v5, 0x2

    if-eq v1, v5, :cond_14

    const/4 v5, 0x3

    if-eq v1, v5, :cond_13

    if-eq v1, v2, :cond_12

    const/4 v5, 0x6

    if-eq v1, v5, :cond_13

    const/4 v5, 0x7

    if-eq v1, v5, :cond_16

    const/16 v5, 0x2a

    if-eq v1, v5, :cond_f

    if-eq v1, v4, :cond_16

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 24
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_4

    .line 25
    :pswitch_1
    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 26
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_a
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    .line 28
    :cond_b
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 29
    iget-object v3, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-void

    .line 30
    :cond_c
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v3

    if-ne v3, v2, :cond_d

    .line 31
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 32
    :cond_d
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 33
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_e
    :goto_2
    return-void

    .line 38
    :cond_f
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3

    .line 39
    :cond_10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    :cond_11
    :goto_3
    return-void

    .line 45
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 46
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_4

    .line 47
    :cond_14
    :pswitch_2
    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 48
    :cond_15
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 49
    :cond_16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_17

    .line 50
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 51
    :cond_17
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 52
    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_4

    .line 53
    :cond_18
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v1

    if-ne v1, v2, :cond_19

    .line 54
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 55
    :cond_19
    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result p1

    invoke-static {v1, v0, v2, v3, p1}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic W(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

.method public static Z(Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n4;

    invoke-direct {v0}, Lcom/join/mgps/fragment/n4;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a0(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n4;

    invoke-direct {v0}, Lcom/join/mgps/fragment/n4;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fromHome"

    .line 4
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "title"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    check-cast p3, Ljava/io/Serializable;

    const-string p0, "datas"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static b0(ZLjava/lang/String;Ljava/util/List;I)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;I)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n4;

    invoke-direct {v0}, Lcom/join/mgps/fragment/n4;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fromHome"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "title"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    check-cast p2, Ljava/io/Serializable;

    const-string p0, "datas"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "from"

    .line 6
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private m0(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->m:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/join/mgps/fragment/m4;->p:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 9
    :goto_2
    iget-object v8, p0, Lcom/join/mgps/fragment/m4;->p:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 11
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_8

    .line 15
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_9
    if-nez v3, :cond_a

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_a
    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 22
    :cond_b
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_c
    :goto_4
    return-void
.end method

.method private n0()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/m4;->o:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/join/mgps/fragment/m4;->n:I

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/m4;->o:I

    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_6

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/m4;->p0()V

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    iget v5, p0, Lcom/join/mgps/fragment/m4;->o:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/join/mgps/adapter/y4$b;

    if-eqz v5, :cond_5

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/y4$b;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 12
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_3

    .line 13
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v8, v2, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_4

    .line 16
    iget-object v3, v2, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v3, v2, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 18
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 19
    iget-object v1, v2, Lcom/join/mgps/adapter/y4$b;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private p0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->x:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method O()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/m4;->v:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->t:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/m4;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m4;->O()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/m4;->v:Z

    :cond_0
    return-void
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/fragment/m4;->l:I

    iget v6, p0, Lcom/join/mgps/fragment/m4;->q:I

    const/16 v3, 0xa

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameListRequestBean(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method R(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/join/mgps/fragment/m4;->P(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 6
    :cond_1
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 8
    new-instance v2, Lcom/join/mgps/dto/RequestGameIdArgs;

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-direct {v2, p1, v3, v0}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;II)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lq1/h;->A0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 15
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setGameBean(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 16
    invoke-direct {p0, p2}, Lcom/join/mgps/fragment/m4;->P(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u4e0b\u8f7d\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/m4;->i0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void
.end method

.method S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/m4;->y:Ljava/lang/String;

    const-string v1, "fromHome"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/fragment/m4;->w:Z

    const-string v1, "title"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/m4;->z:Ljava/lang/String;

    const-string v1, "datas"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/join/mgps/fragment/m4;->x:Ljava/util/List;

    const-string v1, "from"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/m4;->B:I

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->r:Ljava/lang/String;

    return-void
.end method

.method V()V
    .locals 0

    return-void
.end method

.method X()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/m4;->l:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->t:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/m4;->S(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method afterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m4;->U()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/y4;

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/fragment/m4;->y:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/y4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    .line 6
    iget-boolean v1, p0, Lcom/join/mgps/fragment/m4;->w:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/adapter/y4;->d()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    new-instance v1, Lcom/join/mgps/fragment/m4$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/m4$a;-><init>(Lcom/join/mgps/fragment/m4;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/y4;->e(Lcom/join/mgps/adapter/y4$a;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/y4;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m4;->showLoding()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->x:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/m4;->showMain(Ljava/util/List;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/l4;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/l4;-><init>(Lcom/join/mgps/fragment/m4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 20
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 22
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method c0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/m4;->q:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method d0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method i0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public j0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/m4;->x:Ljava/util/List;

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m4;->showMain(Ljava/util/List;)V

    return-void
.end method

.method k0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    new-instance v1, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method l0(Z)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-nez p1, :cond_5

    .line 4
    iget p1, p0, Lcom/join/mgps/fragment/m4;->l:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->i:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    .line 12
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const v0, 0x7f110206

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_9

    .line 15
    iget p1, p0, Lcom/join/mgps/fragment/m4;->l:I

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_8

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->i:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m4;->O()V

    return-void
.end method

.method o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/m4;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/m4;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/m4;->e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/m4;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
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
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v4, 0x30

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/m4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/m4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/m4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/m4;->n0()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/m4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/m4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/m4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/m4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/m4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/fragment/m4;->n:I

    .line 2
    iput p2, p0, Lcom/join/mgps/fragment/m4;->o:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onVisible()V
    .locals 0

    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/m4;->l:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m4;->showLoding()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/fragment/m4;->t:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/m4;->S(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 12
    :cond_4
    iget v0, p0, Lcom/join/mgps/fragment/m4;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/m4;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->e:Lcom/join/mgps/customview/XListView2;

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/m4;->c:Lcom/join/mgps/adapter/y4;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method
