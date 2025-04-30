.class public Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;
.super Lcom/BaseAppCompatActivity;
.source "GamedetailVideoMainActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0287
.end annotation


# static fields
.field private static final BUNDLE_FRAGMENTS_KEY:Ljava/lang/String; = "android:support:fragments"

.field private static final OPTION_VIEW:Ljava/lang/String; = "view"

.field public static hasInAnim:Z


# instance fields
.field autodown:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field fragment:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

.field fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isFromVideo:Z

.field iv_back:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mainCover:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field main_content:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field setNetwork:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field showCover:Z

.field statuHVIew:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private statubarH:I

.field private tintManager:Lcom/join/android/app/common/manager/b;

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field xoffW:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showCover:Z

    const/16 v1, 0xc8

    .line 5
    iput v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->xoffW:I

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->sendPoint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method private backCheck()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->backpressedTofinishActivity()V

    :cond_0
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

.method private sendPoint(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 4
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 7
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v6, v0

    move-object v8, v2

    const-string v0, "112"

    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "147"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getReMarks()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v10, v1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    move-object v7, p1

    move-object v9, p1

    invoke-virtual/range {v3 .. v10}, Lcom/papa/sim/statistic/p;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startTActivity(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ZLcom/join/mgps/dto/ExtBean;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "isFromVideo"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "gameId"

    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "autodown"

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "extBean"

    .line 5
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 2
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statubarH:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statuHVIew:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 5
    iget v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statubarH:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statuHVIew:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statuHVIew:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->xoffW:I

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getDetialData()V

    return-void
.end method

.method animFinish()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x258L
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    return-void
.end method

.method public autoPlayVideo(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    :cond_2
    return-void
.end method

.method protected clearFragmentsTag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clickBack()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->backCheck()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->clearVideo()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getDetialData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 4
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 6
    new-instance v2, Lcom/join/mgps/dto/RequestGameIdArgs;

    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-direct {v2, v3, v4, v0}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;II)V

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestGameIdArgs;->setDownloadedGameIdList(Ljava/util/List;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lq1/h;->i(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->updateUi(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLodingFailed()V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLodingFailed()V

    :goto_0
    return-void
.end method

.method public getModleFourBeanShow()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-object v0
.end method

.method public getModleFourFragment()Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    return-object v0
.end method

.method public getViewpagerCurrentPage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public gethideOrshowCover()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showCover:Z

    return v0
.end method

.method hideLoadingDelay()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xc8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->iv_back:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->main_content:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_faile:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->mainCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method iv_back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->backCheck()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->clearVideo()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDestroy()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->backCheck()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->onBackPressedMy()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->clearFragmentsTag()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android:support:fragments"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->clearFragmentsTag()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android:support:fragments"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLoding()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getDetialData()V

    return-void
.end method

.method scroolToposition()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x4e2L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->xoffW:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method shakeAnim()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public shakeAnimback()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$3;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$3;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->animFinish()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstIntentgamedetialVideo()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_faile:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_faile:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->setNetwork:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->setNetwork:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setPosition_path(Lcom/psk/eventmodule/StatFactory$VolcanoOther;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVideo_and_cover()Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;

    move-result-object v0

    const-string v1, "autodown"

    const-string v2, "isFromVideo"

    const-string v3, "extBean"

    const-string v4, "gameId"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideo_url()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->from:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 9
    iget-object v7, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->iv_back:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v7, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->main_content:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v7, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_layout:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v7, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_faile:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v7, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v8, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v8}, Lcom/join/mgps/pref/PrefDef_;->firstIntentgamedetialVideo()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v8

    invoke-virtual {v8}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 16
    iput-boolean v5, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showCover:Z

    .line 17
    sput-boolean v5, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    .line 18
    :cond_1
    new-instance v9, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;

    invoke-direct {v9}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;-><init>()V

    iput-object v9, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 23
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "videoDatas"

    .line 24
    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Lcom/join/mgps/adapter/x$a;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    const-string v3, "\u89c6\u9891"

    invoke-direct {v0, v3, v1}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_switch()I

    move-result p1

    const-string v0, "\u8be6\u60c5"

    if-ne p1, v5, :cond_3

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    iget-boolean v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    invoke-static {p1, v1, v3, v2}, Lcom/join/mgps/activity/g0;->i0(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;ZZ)Lcom/join/mgps/activity/g0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 31
    new-instance v1, Lcom/join/mgps/adapter/x$a;

    invoke-direct {v1, v0, p1}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    iget-boolean v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    invoke-static {p1, v1, v3, v2}, Lcom/join/mgps/activity/l0;->n0(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;ZZ)Lcom/join/mgps/activity/l0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 33
    new-instance v1, Lcom/join/mgps/adapter/x$a;

    invoke-direct {v1, v0, p1}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :goto_0
    new-instance p1, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0, v7}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    if-eqz v8, :cond_4

    .line 37
    iput-boolean v5, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showCover:Z

    .line 38
    sput-boolean v5, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->shakeAnim()V

    :cond_4
    const-string p1, "1"

    .line 40
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->sendPoint(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 41
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->main_content:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->mainCover:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->iv_back:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hideLoadingDelay()V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragment:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    if-eqz v2, :cond_6

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 52
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_switch()I

    move-result p1

    const v1, 0x7f090535

    if-ne p1, v5, :cond_7

    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    iget-boolean v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    iget-boolean v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    invoke-static {p1, v2, v3, v4}, Lcom/join/mgps/activity/g0;->i0(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;ZZ)Lcom/join/mgps/activity/g0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 54
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const-string p1, "2"

    .line 55
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->sendPoint(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    iget-boolean v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    iget-boolean v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    invoke-static {p1, v2, v3, v4}, Lcom/join/mgps/activity/l0;->n0(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;ZZ)Lcom/join/mgps/activity/l0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 57
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const-string p1, "0"

    .line 58
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->sendPoint(Ljava/lang/String;)V

    .line 59
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_2
    return-void
.end method
