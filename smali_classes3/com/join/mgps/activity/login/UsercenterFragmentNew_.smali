.class public final Lcom/join/mgps/activity/login/UsercenterFragmentNew_;
.super Lcom/join/mgps/activity/login/UsercenterFragmentNew;
.source "UsercenterFragmentNew_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/UsercenterFragmentNew_$FragmentBuilder_;
    }
.end annotation


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private contentView_:Landroid/view/View;

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final intentFilter2_:Landroid/content/IntentFilter;

.field private final loginOutReceiver_:Landroid/content/BroadcastReceiver;

.field private final onViewChangedNotifier_:Li3/c;

.field private final updateInfoReceiver_:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->beans_:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$1;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->updateInfoReceiver_:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter2_:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$2;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->loginOutReceiver_:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V

    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getUserInfo()V

    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->pullMyProfileInfo()V

    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->hideRedPoint()V

    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tokenFailure()V

    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateAdapterByNewMsgCount(I)V

    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateDownloadView()V

    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->changeMgState(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->touristLogin()V

    return-void
.end method

.method public static builder()Lcom/join/mgps/activity/login/UsercenterFragmentNew_$FragmentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$FragmentBuilder_;

    invoke-direct {v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$FragmentBuilder_;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter1_:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter2_:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_login_out"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method changeMgState(Ljava/lang/String;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$17;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$17;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$21;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$21;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getUserInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$19;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$19;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method hideRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$12;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$12;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method loadViewConfigsFromLocal()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$11;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$11;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->updateInfoReceiver_:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter1_:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->loginOutReceiver_:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->intentFilter2_:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c022f

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->updateInfoReceiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->loginOutReceiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-super {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->contentView_:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_arrow:Landroid/widget/ImageView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_nickname:Landroid/widget/TextView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_copperTitle:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyTitle:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->svipTitle:Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyMessage:Landroid/widget/TextView;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_userinfo:Landroid/widget/LinearLayout;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_svip:Landroid/widget/LinearLayout;

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_members:Landroid/widget/LinearLayout;

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_membersNew:Landroid/view/View;

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipProgress:Landroid/widget/ProgressBar;

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModText:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModLayout:Landroid/widget/LinearLayout;

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerText:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerLayout:Landroid/widget/LinearLayout;

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyText:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyLayout:Landroid/widget/LinearLayout;

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftText:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftLayout:Landroid/widget/LinearLayout;

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroid/widget/GridView;

    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroid/widget/GridView;

    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroid/widget/GridView;

    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->scroolView:Landroidx/core/widget/NestedScrollView;

    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userLayout:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->modNotVipView:Landroid/view/View;

    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->statubar:Landroid/view/View;

    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090834

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0907dc

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_arrow:Landroid/widget/ImageView;

    const v0, 0x7f09119d

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_nickname:Landroid/widget/TextView;

    const v0, 0x7f090836

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    const v0, 0x7f09119e

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    const v0, 0x7f09119a

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    const v0, 0x7f09119b

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    const v0, 0x7f09091f

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_copperTitle:Landroid/widget/TextView;

    const v0, 0x7f090b6d

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyTitle:Landroid/widget/TextView;

    const v0, 0x7f090f07

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->svipTitle:Landroid/widget/TextView;

    const v0, 0x7f090b6c

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyMessage:Landroid/widget/TextView;

    const v0, 0x7f09119c

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    const v0, 0x7f09119f

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    const v0, 0x7f090973

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_userinfo:Landroid/widget/LinearLayout;

    const v0, 0x7f090964

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_svip:Landroid/widget/LinearLayout;

    const v0, 0x7f09093c

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_members:Landroid/widget/LinearLayout;

    const v0, 0x7f09093d

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_membersNew:Landroid/view/View;

    const v0, 0x7f0912a0

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0912a6

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    const v0, 0x7f09129f

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModText:Landroid/widget/TextView;

    const v0, 0x7f09129d

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09129e

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0904bb

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerText:Landroid/widget/TextView;

    const v0, 0x7f0904b9

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0904ba

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090b70

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyText:Landroid/widget/TextView;

    const v0, 0x7f090b6e

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090b6f

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09043f

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftText:Landroid/widget/TextView;

    const v0, 0x7f09043d

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09043e

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0909d7

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroid/widget/GridView;

    const v0, 0x7f0909d8

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroid/widget/GridView;

    const v0, 0x7f0909d9

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroid/widget/GridView;

    const v0, 0x7f090dcd

    .line 35
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->scroolView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f091234

    .line 36
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userLayout:Landroid/view/View;

    const v0, 0x7f09101a

    .line 37
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    const v0, 0x7f090a62

    .line 38
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->modNotVipView:Landroid/view/View;

    const v0, 0x7f090835

    .line 39
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090ee4

    .line 40
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->statubar:Landroid/view/View;

    const v0, 0x7f0903cc

    .line 41
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f0903cb

    .line 42
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f09034a

    .line 43
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    const v0, 0x7f090f38

    .line 44
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    const v0, 0x7f090b6a

    .line 45
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09091e

    .line 46
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$3;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$3;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 49
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$4;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$4;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 50
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$5;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$5;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 52
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$6;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$6;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_4

    .line 54
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$7;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$7;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_5

    .line 56
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$8;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$8;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method pullMyProfileInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$20;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$20;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method refreshViews()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$9;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$9;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showNotifUi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$10;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$10;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$14;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$14;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method tokenFailure()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$13;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$13;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method touristLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$18;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$18;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method updateAdapterByNewMsgCount(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$15;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$15;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$16;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_$16;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
