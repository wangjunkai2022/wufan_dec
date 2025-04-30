.class public Lcom/join/mgps/activity/login/UsercenterFragmentNew;
.super Landroidx/fragment/app/Fragment;
.source "UsercenterFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c022f
.end annotation


# instance fields
.field private accountBean:Lcom/join/mgps/dto/AccountBean;

.field detail:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private downloadTasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field everdayGiftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field everdayGiftLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field everdayGiftText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fingerIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fingerLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fingerText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isGetViewConfigs:Z

.field volatile isGetingUserInfo:Z

.field iv_arrow:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_user_vip:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_copperTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_members:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_membersNew:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_svip:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_userinfo:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field mAdapter:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

.field mAdapter2:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

.field mAdapter3:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

.field mGridView:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mGridView2:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mGridView3:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mRpcClient:Lcom/join/mgps/rpc/d;

.field private mUserCenterDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUserCenterDatas2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUserCenterDatas3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private messagebadge1:Lq/rorbin/badgeview/a;

.field modNotVipView:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onekeyMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onekeyTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onkeyIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onkeyLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onkeyText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcForumClient:Lcom/join/mgps/rpc/h;

.field scroolView:Landroidx/core/widget/NestedScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field svipTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field test:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field titleLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_account:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_coppers:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_member:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_nickname:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_rank:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_svip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

.field userLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field view:Landroid/view/View;

.field vipModIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipModLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipModText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipProgress:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipTime:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->view:Landroid/view/View;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadTasksMap:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/join/mgps/dto/UserCenterBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UserCenterBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    return-object p1
.end method

.method private addDivider(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPlaceHolder(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1
    new-instance v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    invoke-direct {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;-><init>()V

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setPlaceHolder(Z)V

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isLogined()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

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

.method private setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterItemBean;->getPic_remote()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterItemBean;->getSub_title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setListener(Landroid/widget/GridView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridView;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private showRedPoint(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v0

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const-wide/16 v1, 0xc8

    .line 3
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->messagebadge1:Lq/rorbin/badgeview/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lq/rorbin/badgeview/QBadgeView;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, p1}, Lq/rorbin/badgeview/QBadgeView;->c(Landroid/view/View;)Lq/rorbin/badgeview/a;

    move-result-object p1

    .line 7
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->q(I)Lq/rorbin/badgeview/a;

    move-result-object p1

    const/high16 v0, -0x10000

    .line 8
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->g(I)Lq/rorbin/badgeview/a;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lq/rorbin/badgeview/a;->v(FZ)Lq/rorbin/badgeview/a;

    move-result-object p1

    const v0, 0x800055

    .line 10
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->o(I)Lq/rorbin/badgeview/a;

    move-result-object p1

    const/4 v0, -0x1

    .line 11
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->l(I)Lq/rorbin/badgeview/a;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->messagebadge1:Lq/rorbin/badgeview/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private testAddCommentSelf(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private updateViewH(Ljava/util/List;Landroid/widget/GridView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;",
            "Landroid/widget/GridView;",
            ")V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadTasks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->statubar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->statubar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getDownloadTaskInfo()V

    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mRpcClient:Lcom/join/mgps/rpc/d;

    .line 12
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcForumClient:Lcom/join/mgps/rpc/h;

    .line 13
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/UserCenterBean;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->scroolView:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 21
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    .line 22
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter2:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    .line 23
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter3:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter2:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter3:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setListener(Landroid/widget/GridView;Ljava/util/List;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setListener(Landroid/widget/GridView;Ljava/util/List;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setListener(Landroid/widget/GridView;Ljava/util/List;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->pullMyProfileInfo()V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    .line 33
    sget-boolean v0, Lcom/join/android/app/common/http/c;->c:Z

    if-nez v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method calculateVIPExpTime()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    .line 3
    div-long/2addr v4, v6

    .line 4
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    cmp-long v7, v0, v2

    if-lez v7, :cond_2

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6709\u6548\u671f\u81f3"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->m(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->q(J)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-wide/16 v0, 0x1e

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    .line 10
    :try_start_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n<font color=#FFFFFF>\u5269\u4f59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u5929</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x7f5

    if-le v3, v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    const-string v1, "\u6709\u6548\u671f\u81f32099-05-12"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    const-string v1, "\u53bb\u5f00\u901a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_members:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$9;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$9;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
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
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateDownloadView()V

    return-void
.end method

.method changeMgState(Ljava/lang/String;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isOfficialAccount()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestMsgState(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mRpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/d;->W(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultValbean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultValbean;->isVal()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "UserCenter"

    if-eqz p1, :cond_2

    :try_start_1
    const-string p1, "changeMgState success"

    .line 7
    invoke-static {p2, p1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "changeMgState failure"

    .line 8
    invoke-static {p2, p1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    invoke-direct {v0}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setEmpty(Z)V

    return-object v0
.end method

.method detail()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean;->getDetail_entrance()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/JumpInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/JumpInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const/16 v1, 0x38

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goVip(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method downloadView1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method downloadView2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

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
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateDownloadView()V

    return-void
.end method

.method getUserInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountUserInfoRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setUid(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->d(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getLive_total_charm()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setLive_total_charm(I)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_anchor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/dto/AccountBean;->setPapaMoney(J)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountBean;->setMember_title(Lcom/join/mgps/dto/AccountBean$MemberInfo;)V

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 24
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getViewConfigs()V

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v0

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_4

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tokenFailure()V

    goto :goto_1

    .line 29
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getViewConfigs()V

    goto :goto_1

    .line 31
    :cond_5
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getViewConfigs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 33
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getViewConfigs()V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 36
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->touristLogin()V

    return-void

    .line 37
    :cond_7
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    :goto_1
    return-void
.end method

.method getViewConfigs()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z

    .line 6
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v3, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v1, Lcom/join/mgps/dto/RequestUserCenterArgs;

    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v6

    if-ne v6, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v4, v5, v2}, Lcom/join/mgps/dto/RequestUserCenterArgs;-><init>(ILjava/lang/String;I)V

    .line 8
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-interface {v1, v3}, Lq1/h;->h0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v2

    const/16 v3, 0x258

    if-ne v2, v3, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 15
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v1

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    :goto_3
    return-void
.end method

.method goLogin()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method hideRedPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->messagebadge1:Lq/rorbin/badgeview/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->hide(Z)V

    .line 3
    :cond_0
    sput v1, Lcom/MApplication;->H:I

    return-void
.end method

.method isActivityFinish()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isOfficialAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method ll_copper()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getMember_func()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getJumpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->P2(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method loadViewConfigsFromLocal()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/UserCenterBean;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroid/widget/GridView;

    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateViewH(Ljava/util/List;Landroid/widget/GridView;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroid/widget/GridView;

    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateViewH(Ljava/util/List;Landroid/widget/GridView;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroid/widget/GridView;

    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateViewH(Ljava/util/List;Landroid/widget/GridView;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter2:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter3:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-eqz v1, :cond_b

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getMember_func()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_1

    .line 19
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 20
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_copperTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_2

    .line 23
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 24
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyMessage:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_3

    .line 27
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->svipTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v4, :cond_a

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->modNotVipView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_members:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_membersNew:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v1

    const-wide/16 v6, 0x3e8

    mul-long v1, v1, v6

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/32 v8, 0x5265c00

    .line 38
    div-long/2addr v6, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->q(J)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v8, 0x1e

    cmp-long v2, v6, v8

    if-gtz v2, :cond_4

    .line 41
    :try_start_3
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4f1a\u5458\u5269\u4f59\uff1a"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\u5929"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x7f5

    if-lt v1, v2, :cond_5

    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    const-string v2, "\u7ec8\u751f\u4f1a\u5458"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 43
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4f1a\u5458\u5269\u4f59\uff1a"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\u5929"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipProgress:Landroid/widget/ProgressBar;

    long-to-int v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x16d

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    const-string v2, "\u8be6\u60c5"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 47
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    const-string v2, "\u5f00\u901a\u4f1a\u5458"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-eqz v1, :cond_7

    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getJoin_member()Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getModule_entrance_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 53
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 54
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModText:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v6, v7}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_8

    .line 56
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerText:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    .line 57
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_9

    .line 58
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyText:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    .line 59
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_b

    .line 60
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    goto :goto_3

    .line 61
    :cond_a
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->modNotVipView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getJoin_member()Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 63
    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_members:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_membersNew:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->pullMyProfileInfo()V

    .line 67
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_c
    :goto_4
    return-void

    :catch_1
    move-exception v0

    const-string v1, "UserCenter"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadViewConfigsFromLocal exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    return-void
.end method

.method public loginOut(Landroid/content/Context;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_out"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->touristLogin()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/n;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->pullMyProfileInfo()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshUserCenter()V

    .line 3
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v0

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/MApplication;->H:I

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->hideRedPoint()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    :cond_1
    :goto_0
    return-void
.end method

.method onekey()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getMember_func()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getJumpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method pullMyProfileInfo()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcForumClient:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    invoke-interface/range {v2 .. v7}, Lcom/join/mgps/rpc/h;->k(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->getUser_info()Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->getUnread_message()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateAdapterByNewMsgCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public refreshUserCenter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getUserInfo()V

    return-void
.end method

.method refreshViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "--"

    const-string v1, ""

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_nickname:Landroid/widget/TextView;

    const-string v3, "\u672a\u767b\u5f55"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/generic/a;

    new-instance v3, Lcom/facebook/drawee/drawable/n;

    const-string v4, "#99BDC9"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/facebook/drawee/drawable/n;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->y(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f080c9f

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    const-string v2, "---"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_members:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_svip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 15
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_nickname:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->calculateVIPExpTime()V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean;->getJoin_member()Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    const-string v1, "#F47500"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u5584\u8d44\u6599 / \u9886\u793c\u5305 / \u62a2\u7ea2\u5305"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    const-string v1, "#A9A9A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-eqz v0, :cond_8

    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean;->getMember_func()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_6

    .line 42
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 43
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_copperTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_7

    .line 46
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_8

    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->svipTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_members:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$3;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$3;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_svip:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$4;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$4;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$5;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$5;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$6;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$6;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_arrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$7;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$7;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_userinfo:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$8;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$8;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public showNotif()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    return-void
.end method

.method showNotifUi()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/MApplication;->H:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;->setTotalnum(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroid/widget/GridView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter$ViewHolder;

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter$ViewHolder;

    .line 8
    iget-object v2, v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter$ViewHolder;->messageBadge:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    sget v2, Lcom/MApplication;->H:I

    if-lez v2, :cond_3

    .line 11
    iget-object v2, v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter$ViewHolder;->messageBadge:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    sget v1, Lcom/MApplication;->H:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_2

    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter$ViewHolder;->messageBadge:Landroid/widget/TextView;

    const-string v1, "+99"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter$ViewHolder;->messageBadge:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/MApplication;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isActivityFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method test()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/join/android/app/common/http/c;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http://apphd.5fun.net/static/papa_url_demo/index.html"

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method tokenFailure()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const v0, 0x7f110267

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showToast(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->touristLogin()V

    return-void
.end method

.method touristLogin()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    sput v2, Lcom/MApplication;->H:I

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isLogined()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/TouristLoginRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    const-string v3, "2"

    .line 5
    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 11
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 18
    :cond_1
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getUserInfo()V

    goto :goto_0

    .line 21
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showToast(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    goto :goto_0

    .line 24
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    goto :goto_0

    .line 29
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    :goto_0
    return-void
.end method

.method updateAdapterByNewMsgCount(I)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    monitor-enter v0

    const/4 v1, -0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    .line 4
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 5
    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 6
    invoke-virtual {v5}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v5}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/JumpInfoBean;

    .line 8
    invoke-virtual {v5}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 9
    invoke-virtual {v5}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    const/16 v5, 0xf

    if-ne v6, v5, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-ltz v1, :cond_5

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setUnReadCount(I)V

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/activity/login/UsercenterFragmentNew$MyAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method updateDownloadView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    :cond_1
    if-lez v1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    :cond_5
    :goto_0
    return-void
.end method

.method public updateInfo(Landroid/content/Context;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshUserCenter()V

    return-void
.end method

.method wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/UserCenterBean;",
            "I)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getFirst_group()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v1, 0x4

    .line 6
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->addPlaceHolder(Ljava/util/List;I)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getSecond_group()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 10
    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    rsub-int/lit8 v1, v1, 0x4

    .line 11
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->addPlaceHolder(Ljava/util/List;I)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 15
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    rsub-int/lit8 p1, p1, 0x4

    .line 16
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->addPlaceHolder(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
