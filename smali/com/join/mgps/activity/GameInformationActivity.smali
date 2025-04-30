.class public Lcom/join/mgps/activity/GameInformationActivity;
.super Lcom/BaseActivity;
.source "GameInformationActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c024a
.end annotation


# instance fields
.field A:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private A0:Lcom/join/mgps/dto/AccountBean;

.field B:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field private B0:Lcom/facebook/drawee/view/SimpleDraweeView;

.field C:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field C0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field D:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field D0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field E:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private E0:Lcom/join/mgps/adapter/GameCommentAdapter;

.field F:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private F0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/String;

.field private G0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private H0:Lcom/join/mgps/customview/WrapContentListView;

.field private I:Lcom/join/mgps/dto/GameInformationBean;

.field I0:Lcom/join/mgps/customview/t;

.field private J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field K:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field a:Lcom/join/mgps/rpc/d;

.field b:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/SmartScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/ObservableWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private v0:Landroid/content/Context;

.field w:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private w0:Lcom/join/mgps/dto/DetailResultBean;

.field x:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private x0:J

.field y:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private y0:Landroid/os/Handler;

.field z:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->G:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->y0:Landroid/os/Handler;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->I0:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivity;->y0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/GameInformationActivity;)Lcom/join/mgps/dto/DetailResultBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    return-object p0
.end method

.method private N0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->I0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->I0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private P0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentUtil;->getSplashActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->setSplashActivity(Landroid/app/Activity;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    const-class v2, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private X0(Landroid/widget/ListView;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 3
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivity;->H0:Lcom/join/mgps/customview/WrapContentListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 4
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v5, v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    const/4 v5, 0x0

    .line 5
    invoke-interface {v0, v2, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 6
    invoke-virtual {v5, v1, v1}, Landroid/view/View;->measure(II)V

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private c1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x2b

    const v4, 0x7f080393

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v5, "\u6253\u5f00"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const/16 v0, 0x2b

    :cond_3
    :goto_1
    const v2, 0x7f080396

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    const/16 v3, 0x30

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    const/4 v3, 0x7

    if-eq v0, v3, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const v1, 0x7f080399

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v1, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 11
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 13
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v1, "\u7b49\u5f85"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 15
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const v1, 0x7f08039b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 23
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110261

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->F2(Landroid/widget/Button;Lcom/join/mgps/dto/DetailResultBean;)V

    :cond_a
    :goto_3
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

.method private d1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x2b

    const v4, 0x7f080393

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const-string v5, "\u6253\u5f00"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const/16 v0, 0x2b

    :cond_3
    :goto_1
    const v2, 0x7f080396

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    const/16 v3, 0x30

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    const/4 v3, 0x7

    if-eq v0, v3, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const v1, 0x7f080399

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const-string v1, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 11
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 13
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const-string v1, "\u7b49\u5f85"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 15
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const v1, 0x7f08039b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 23
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->T0(Lcom/join/mgps/dto/DetailResultBean;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110261

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 29
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->F2(Landroid/widget/Button;Lcom/join/mgps/dto/DetailResultBean;)V

    :cond_a
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f1(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->Q0(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->G0:Ljava/util/List;

    if-eqz v0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->G0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->G0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/InformationCommentBean;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    move-result v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    or-int/lit8 v1, v1, 0x1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/InformationCommentBean;->setPraise_count(Ljava/lang/String;)V

    or-int/lit8 v1, v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->G0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->Z0(Ljava/util/List;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method H0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/InformationCommentBean;

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;

    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 4
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->F0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 7
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v2, v0, v7}, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->F0:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method I0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tpl_two_position()I

    move-result v5

    const/16 v6, 0x74

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method J0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->P0()V

    return-void
.end method

.method K0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x2b

    if-lez v0, :cond_2

    const/16 v1, 0x2b

    :cond_2
    const/4 v0, 0x5

    if-eqz v1, :cond_f

    const/16 v3, 0xd

    if-eq v1, v3, :cond_e

    if-eq v1, v2, :cond_f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    const/4 v3, 0x3

    if-eq v1, v3, :cond_c

    if-eq v1, v0, :cond_b

    const/4 v3, 0x6

    if-eq v1, v3, :cond_c

    const/4 v3, 0x7

    if-eq v1, v3, :cond_f

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 5
    :pswitch_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    goto/16 :goto_2

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 9
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 10
    :cond_6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 12
    :cond_7
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v2

    if-ne v2, v0, :cond_8

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_8
    if-eqz v1, :cond_9

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 15
    invoke-static {v1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_a
    :goto_0
    return-void

    .line 18
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 19
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 20
    :cond_d
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 21
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p0, v0}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 22
    :cond_f
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v2, Lcom/papa/sim/statistic/Where;->article:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_10
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1

    .line 28
    :cond_11
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v1

    if-ne v1, v0, :cond_12

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 30
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 31
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->A(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method L0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method M0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x7d0L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method

.method O0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x2b

    if-lez v0, :cond_2

    const/16 v1, 0x2b

    :cond_2
    const/4 v0, 0x5

    if-eqz v1, :cond_f

    const/16 v3, 0xd

    if-eq v1, v3, :cond_e

    if-eq v1, v2, :cond_f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    const/4 v3, 0x3

    if-eq v1, v3, :cond_c

    if-eq v1, v0, :cond_b

    const/4 v3, 0x6

    if-eq v1, v3, :cond_c

    const/4 v3, 0x7

    if-eq v1, v3, :cond_f

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 5
    :pswitch_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    goto/16 :goto_2

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 9
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 10
    :cond_6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 12
    :cond_7
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v2

    if-ne v2, v0, :cond_8

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_8
    if-eqz v1, :cond_9

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 15
    invoke-static {v1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_a
    :goto_0
    return-void

    .line 18
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 19
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 20
    :cond_d
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 21
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p0, v0}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 22
    :cond_f
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v2, Lcom/papa/sim/statistic/Where;->article:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_10
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1

    .line 28
    :cond_11
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v1

    if-ne v1, v0, :cond_12

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 30
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 31
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->A(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method Q0(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/GameInformationCommentRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/GameInformationCommentRequest;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 3
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setComment_type([I)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setInformation_id(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setPn(I)V

    const/16 p1, 0x14

    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setPc(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->A0:Lcom/join/mgps/dto/AccountBean;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setUid(I)V

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameInformationComment(Lcom/join/mgps/dto/GameInformationCommentRequest;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->a:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->k0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/InformationCommentBack;

    if-nez p1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->U0()V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBack;->getHot()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->U0()V

    return-void

    .line 16
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->Z0(Ljava/util/List;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->U0()V

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->U0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->U0()V

    goto :goto_0

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->U0()V

    :goto_0
    return-void
.end method

.method R0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->E:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getgameInformation(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->a:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->O(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInformationBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->a1(Lcom/join/mgps/dto/GameInformationBean;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V

    :goto_0
    return-void
.end method

.method S0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->x0:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x0:J

    .line 4
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    const-string v1, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShow_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 15
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    return-void
.end method

.method T0(Lcom/join/mgps/dto/DetailResultBean;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method U0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c02d8

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method V0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->c1()V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->d1()V

    return-void
.end method

.method W0(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string p2, "\u70b9\u8d5e\u5931\u8d25"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p3, Lcom/join/mgps/dto/PariseRequest;

    invoke-direct {p3}, Lcom/join/mgps/dto/PariseRequest;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/PariseRequest;->setInformation_id(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/PariseRequest;->setComment_id(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->A0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/PariseRequest;->setUid(I)V

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameInformationParis(Lcom/join/mgps/dto/PariseRequest;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p3

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->a:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, p3}, Lcom/join/mgps/rpc/d;->p0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result v1

    const/16 v2, 0x2c2

    if-ne v1, v2, :cond_1

    const-string p3, "\u5b8c\u5584\u8d44\u6599\u540e\u5c31\u53ef\u70b9\u8d5e\u54e6"

    .line 10
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/GameInformationActivity;->showMessage(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    return-void

    :cond_1
    if-eqz p3, :cond_4

    .line 12
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 13
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 14
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\u4f60\u5df2\u8d5e\u8fc7"

    if-lez v1, :cond_3

    .line 15
    :try_start_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dto/PariseBackData;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PariseBackData;->isVal()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 16
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p3, v2

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/InformationCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 20
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->f1(Lcom/join/mgps/dto/InformationCommentBean;)V

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 23
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->f1(Lcom/join/mgps/dto/InformationCommentBean;)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 26
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->f1(Lcom/join/mgps/dto/InformationCommentBean;)V

    goto :goto_0

    .line 27
    :cond_4
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 29
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->f1(Lcom/join/mgps/dto/InformationCommentBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 30
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 33
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->f1(Lcom/join/mgps/dto/InformationCommentBean;)V

    goto :goto_0

    :cond_5
    const-string p2, "\u6ca1\u6709\u7f51\u7edc"

    .line 34
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 36
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->f1(Lcom/join/mgps/dto/InformationCommentBean;)V

    :goto_0
    return-void
.end method

.method Y0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->p0:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->z0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u6761"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->q0:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity$h;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity$h;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0249

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f091246

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->B0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f080c9f

    .line 6
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->A0:Lcom/join/mgps/dto/AccountBean;

    if-eqz v1, :cond_0

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->B0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2, v1, v3}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    :cond_0
    const v1, 0x7f090a26

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 11
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$i;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method Z0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->G0:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->H0:Lcom/join/mgps/customview/WrapContentListView;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->F0:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/join/mgps/customview/WrapContentListView;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/WrapContentListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->H0:Lcom/join/mgps/customview/WrapContentListView;

    .line 6
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$b;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 7
    new-instance v1, Lcom/join/mgps/adapter/GameCommentAdapter;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->F0:Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/GameCommentAdapter$j;)V

    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->E0:Lcom/join/mgps/adapter/GameCommentAdapter;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->H0:Lcom/join/mgps/customview/WrapContentListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->H0:Lcom/join/mgps/customview/WrapContentListView;

    const v2, 0x7f080c72

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 11
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/join/android/app/common/utils/j;->k(Landroid/app/Activity;)I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->s0:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->H0:Lcom/join/mgps/customview/WrapContentListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->H0:Lcom/join/mgps/customview/WrapContentListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0238

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->F0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->H0(Ljava/util/List;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->E0:Lcom/join/mgps/adapter/GameCommentAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->notifyDataSetChanged()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->e1()V

    return-void
.end method

.method a1(Lcom/join/mgps/dto/GameInformationBean;)V
    .locals 13
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getComment_count()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->z0:I

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->u0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->u0:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getComment_count()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->u0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->e:Lcom/join/mgps/customview/SmartScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->s0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->K:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->n0:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4f5c\u8005:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->o0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getRelease_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    new-instance v5, Landroid/webkit/WebChromeClient;

    invoke-direct {v5}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    new-instance v5, Lcom/join/mgps/activity/GameInformationActivity$c;

    invoke-direct {v5, p0}, Lcom/join/mgps/activity/GameInformationActivity$c;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    const-string v6, "papa"

    invoke-virtual {v0, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v7, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getContent()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    const-string v8, "about:blank"

    const-string v10, "text/html"

    const-string v11, "utf-8"

    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    new-instance v5, Lcom/join/mgps/activity/GameInformationActivity$d;

    invoke-direct {v5, p0}, Lcom/join/mgps/activity/GameInformationActivity$d;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 24
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->Y0()V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->Q0(Ljava/lang/String;)V

    .line 29
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getGame_info()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_3

    .line 31
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    const/16 v0, 0x6a

    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->G:Ljava/lang/String;

    if-nez p1, :cond_4

    return-void

    .line 36
    :cond_4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_8

    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 41
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 44
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 45
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 46
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 48
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 53
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->c1()V

    .line 54
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->d1()V

    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->u:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5927\u5c0f\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    if-nez p1, :cond_9

    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 61
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->F:Z

    if-eqz p1, :cond_a

    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->O0()V

    .line 65
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$e;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->n:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$f;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->s0:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$g;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->q:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_count()I

    move-result v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u70ed\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->r:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    .line 73
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->a:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    iput-object p0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->getDownloadTaskInfo()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->B:Lcom/join/mgps/customview/CustomerDownloadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLoding()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->r0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->R0()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->e:Lcom/join/mgps/customview/SmartScrollView;

    new-instance v1, Lcom/join/mgps/activity/GameInformationActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameInformationActivity$a;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SmartScrollView;->setScanScrollChangedListener(Lcom/join/mgps/customview/SmartScrollView$a;)V

    return-void
.end method

.method b1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    const/4 v1, 0x3

    if-eq p2, v1, :cond_8

    const/4 v1, 0x5

    if-eq p2, v1, :cond_6

    const/4 v1, 0x6

    if-eq p2, v1, :cond_5

    const/4 v1, 0x7

    if-eq p2, v1, :cond_3

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 p1, 0xb

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateDownloadView()V

    return-void
.end method

.method e1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->H0:Lcom/join/mgps/customview/WrapContentListView;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->X0(Landroid/widget/ListView;)V

    return-void
.end method

.method g1(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p3, :cond_0

    const p3, 0x7f08075e

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f080c9c

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->r()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateDownloadView()V

    return-void
.end method

.method h1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->P0()V

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/GameInformationActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    const/16 v1, 0x30

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->c1()V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->d1()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->I:Lcom/join/mgps/dto/GameInformationBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->Q0(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onResume"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->A0:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_2

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->B0:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->B0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2, v0, v3}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v3, 0x5

    if-eqz v0, :cond_7

    .line 14
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v4, :cond_7

    .line 15
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 16
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v0, p0, v1, v4}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v4}, Lcom/join/android/app/common/utils/APKUtils;->l(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 24
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->c1()V

    .line 25
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->d1()V

    goto/16 :goto_3

    :cond_7
    if-nez v0, :cond_b

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_b

    .line 27
    sget-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 28
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_2

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_2

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->J:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 35
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->c1()V

    .line 36
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->d1()V

    :cond_b
    :goto_3
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLoding()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->R0()V

    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->e:Lcom/join/mgps/customview/SmartScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->s0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->e:Lcom/join/mgps/customview/SmartScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->s0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method updateDownloadView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->C0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D0:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->B:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    if-lez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->B:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->B:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    :goto_0
    return-void
.end method
