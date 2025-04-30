.class public Lcom/join/mgps/activity/FriendActivity;
.super Lcom/BaseActivity;
.source "FriendActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/l0$e;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/FriendActivity$g;,
        Lcom/join/mgps/activity/FriendActivity$j;,
        Lcom/join/mgps/activity/FriendActivity$i;,
        Lcom/join/mgps/activity/FriendActivity$h;
    }
.end annotation


# instance fields
.field A:Landroidx/recyclerview/widget/RecyclerView;

.field B:Lcom/join/mgps/activity/FriendActivity$j;

.field C:Lcom/join/mgps/activity/FriendActivity$g;

.field private D:I

.field E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field G:Lcom/join/mgps/dto/GameInfoBean;

.field H:Z

.field I:Landroid/view/View;

.field J:Landroidx/recyclerview/widget/RecyclerView;

.field K:Lcom/join/mgps/activity/FriendActivity$g;

.field a:Landroidx/fragment/app/FragmentManager;

.field protected b:Lcom/join/mgps/fragment/u1;

.field private c:Lcom/join/mgps/fragment/w0;

.field private d:Lcom/join/mgps/fragment/z1;

.field private e:Lcom/join/mgps/fragment/i1;

.field private f:Lcom/join/mgps/fragment/m;

.field g:Landroid/os/Handler;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Z

.field m:Lcom/join/mgps/dialog/j;

.field n:Lcom/join/mgps/dialog/n;

.field n0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field o:Lcom/join/mgps/dto/FriendBean;

.field p:Z

.field q:Z

.field r:Landroid/content/BroadcastReceiver;

.field s:Landroid/app/Dialog;

.field t:Lcom/facebook/drawee/view/SimpleDraweeView;

.field u:Landroid/view/View;

.field v:Landroid/view/View;

.field w:Landroid/widget/TextView;

.field x:Landroid/widget/TextView;

.field y:Landroid/view/View;

.field z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->g:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->p:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->q:Z

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->B:Lcom/join/mgps/activity/FriendActivity$j;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->C:Lcom/join/mgps/activity/FriendActivity$g;

    const/16 v2, -0x400

    .line 10
    iput v2, p0, Lcom/join/mgps/activity/FriendActivity;->D:I

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->E:Ljava/util/List;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->F:Ljava/util/List;

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->H:Z

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->K:Lcom/join/mgps/activity/FriendActivity$g;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->n0:Ljava/util/List;

    return-void
.end method

.method public static synthetic E0(Lcom/join/mgps/activity/FriendActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->l1(I)V

    return-void
.end method

.method public static synthetic F0(Lcom/join/mgps/activity/FriendActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->n1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic G0(Lcom/join/mgps/activity/FriendActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->h1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H0(Lcom/join/mgps/activity/FriendActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->k1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I0(Lcom/join/mgps/activity/FriendActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->j1(I)V

    return-void
.end method

.method public static synthetic J0(Lcom/join/mgps/activity/FriendActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->i1(I)V

    return-void
.end method

.method public static synthetic K0(Lcom/join/mgps/activity/FriendActivity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity;->f1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic L0(Lcom/join/mgps/activity/FriendActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->e1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M0(Lcom/join/mgps/activity/FriendActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->d1()V

    return-void
.end method

.method public static synthetic N0(Lcom/join/mgps/activity/FriendActivity;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->m1(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method public static synthetic O0(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity;->g1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/FriendActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/FriendActivity;->D:I

    return p0
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/FriendActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/FriendActivity;->D:I

    return p1
.end method

.method static synthetic R0(Lcom/join/mgps/activity/FriendActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->U0()V

    return-void
.end method

.method private U0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->G:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->G:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->G:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestArenaRoomListArgs(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/c;->q(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/FriendActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FriendActivity$e;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private V0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/k;->m0()Lq1/j;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lq1/j;->u(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/FriendActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FriendActivity$d;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private synthetic d1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->checkClipboard()V

    return-void
.end method

.method private synthetic e1(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic f1(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->add(I)V

    .line 3
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v0, "3"

    .line 4
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->addFriends:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic g1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/FriendActivity;->b1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    .line 6
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/FriendActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/FriendActivity;->p1(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    goto :goto_0

    :cond_1
    const/16 p1, 0x2710

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/activity/FriendActivity;->startDownloadActivity(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic h1(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->y:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic i1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->G:Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->U0()V

    return-void
.end method

.method private synthetic j1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->G:Lcom/join/mgps/dto/GameInfoBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->q1(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->X0()V

    return-void
.end method

.method private synthetic k1(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->I:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic l1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->n0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->q1(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->Y0()V

    return-void
.end method

.method private synthetic m1(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    const-string v1, "\u8bf7\u8f93\u5165\u623f\u95f4\u5bc6\u7801"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/join/mgps/customview/input/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 2
    new-instance v1, Lcom/join/mgps/activity/FriendActivity$f;

    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/FriendActivity$f;-><init>(Lcom/join/mgps/activity/FriendActivity;Lcom/join/mgps/customview/input/a;Lapp/mgsim/arena/ArenaRequest;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    return-void
.end method

.method private synthetic n1(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method private p1(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {p0, p1, v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->u1(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private u1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->f:Lcom/join/mgps/fragment/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/fragment/n;

    invoke-direct {v0}, Lcom/join/mgps/fragment/n;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->f:Lcom/join/mgps/fragment/m;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "type"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    const-string v2, "gameid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "typeIndex"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->f:Lcom/join/mgps/fragment/m;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09053e

    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->f:Lcom/join/mgps/fragment/m;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method


# virtual methods
.method public B()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->W0(I)V

    return-void

    .line 4
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method S0(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 2

    const v0, 0x7f01002e

    const v1, 0x7f010039

    .line 1
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method protected T0()I
    .locals 1

    const v0, 0x7f09053e

    return v0
.end method

.method public W0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->o1(I)V

    :cond_1
    return-void
.end method

.method public X0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->y:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public Y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method Z0()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->s1()V

    :cond_0
    return-void
.end method

.method a1(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method add(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/dto/FriendReqBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    const-string p1, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 6
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/g;->o()Lq1/g;

    move-result-object p1

    invoke-interface {p1, v1}, Lq1/g;->b(Lcom/join/mgps/dto/FriendReqBean;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/FriendActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FriendActivity$b;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method addSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u5df2\u53d1\u9001\u52a0\u597d\u53cb\u7533\u8bf7"

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->toast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method autoSendAdd()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
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

.method public b1(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/join/android/app/common/utils/h;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method protected c1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method checkClipboard()V
    .locals 3

    :try_start_0
    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/wufan/friend/chat/c;->l(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FriendActivity;->showAddFriend(I)V

    const-string v1, ""

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected checkGameIsInstall(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->p:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->q:Z

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->p:Z

    .line 6
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_2

    new-array v2, v0, [Ljava/lang/String;

    .line 7
    invoke-static {p0, p1, v0, v2}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->q:Z

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->q:Z

    goto :goto_1

    .line 10
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity;->q:Z

    goto :goto_1

    .line 11
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->p:Z

    .line 12
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->q:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->p:Z

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public g0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->j:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FriendActivity;->W0(I)V

    return-void
.end method

.method getFriendInfo(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/FriendActivity$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FriendActivity$c;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public m0(Lcom/join/mgps/dto/FriendBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->b1(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 6
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 7
    invoke-static {p0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->p1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    goto :goto_0

    :cond_3
    const/16 p1, 0x2711

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/FriendActivity;->startDownloadActivity(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public o(Lcom/join/mgps/dto/FriendBean;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const p1, 0x7f110206

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->w1()V

    goto :goto_0

    .line 7
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/wufan/friend/chat/c;->v(IJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method o1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->b:Lcom/join/mgps/fragment/u1;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->c:Lcom/join/mgps/fragment/w0;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->S0(Landroidx/fragment/app/FragmentTransaction;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->c:Lcom/join/mgps/fragment/w0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->d:Lcom/join/mgps/fragment/z1;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->S0(Landroidx/fragment/app/FragmentTransaction;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->d:Lcom/join/mgps/fragment/z1;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->e:Lcom/join/mgps/fragment/i1;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->S0(Landroidx/fragment/app/FragmentTransaction;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->e:Lcom/join/mgps/fragment/i1;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 12
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-nez p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->b:Lcom/join/mgps/fragment/u1;

    if-nez p1, :cond_4

    .line 16
    new-instance p1, Lcom/join/mgps/fragment/v1;

    invoke-direct {p1}, Lcom/join/mgps/fragment/v1;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->b:Lcom/join/mgps/fragment/u1;

    .line 17
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    const-string v2, "gameId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->i:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->b:Lcom/join/mgps/fragment/u1;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->T0()I

    move-result p1

    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->b:Lcom/join/mgps/fragment/u1;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_1

    .line 22
    :cond_4
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->S0(Landroidx/fragment/app/FragmentTransaction;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->c:Lcom/join/mgps/fragment/w0;

    if-nez p1, :cond_6

    .line 25
    new-instance p1, Lcom/join/mgps/fragment/x0;

    invoke-direct {p1}, Lcom/join/mgps/fragment/x0;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->c:Lcom/join/mgps/fragment/w0;

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->T0()I

    move-result p1

    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->c:Lcom/join/mgps/fragment/w0;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 27
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    .line 28
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->S0(Landroidx/fragment/app/FragmentTransaction;)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->d:Lcom/join/mgps/fragment/z1;

    if-nez p1, :cond_8

    .line 30
    new-instance p1, Lcom/join/mgps/fragment/a2;

    invoke-direct {p1}, Lcom/join/mgps/fragment/a2;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->d:Lcom/join/mgps/fragment/z1;

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->T0()I

    move-result p1

    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->d:Lcom/join/mgps/fragment/z1;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 32
    :cond_8
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_9
    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    .line 33
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->S0(Landroidx/fragment/app/FragmentTransaction;)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->e:Lcom/join/mgps/fragment/i1;

    if-nez p1, :cond_a

    .line 35
    new-instance p1, Lcom/join/mgps/fragment/j1;

    invoke-direct {p1}, Lcom/join/mgps/fragment/j1;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->e:Lcom/join/mgps/fragment/i1;

    .line 36
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->j:Ljava/lang/String;

    const-string v2, "ruid"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->e:Lcom/join/mgps/fragment/i1;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->T0()I

    move-result p1

    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->e:Lcom/join/mgps/fragment/i1;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 40
    :cond_a
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/i1;->r0(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->e:Lcom/join/mgps/fragment/i1;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 42
    :cond_b
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0x2710

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    .line 3
    iput-object p3, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    goto :goto_0

    :cond_0
    const/16 p2, 0x2711

    if-ne p1, p2, :cond_1

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    :cond_1
    :goto_0
    return-void
.end method

.method public onArenaResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->r1()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->registerReceiver()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->a:Landroidx/fragment/app/FragmentManager;

    .line 6
    instance-of p1, p0, Lcom/join/mgps/activity/FriendInviteActivity;

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->c1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->W0(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->u1()V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->unregisterReceiver()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->H:Z

    :cond_1
    return-void
.end method

.method public onFriendEvent(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->F()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->V0()Lcom/wufan/friend/chat/protocol/p0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->V0()Lcom/wufan/friend/chat/protocol/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/p0;->Z0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->H:Z

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x1;->V0()Lcom/wufan/friend/chat/protocol/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/p0;->Z0()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->x1(Ljava/util/List;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->b:Lcom/join/mgps/fragment/u1;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->c:Lcom/join/mgps/fragment/w0;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->d:Lcom/join/mgps/fragment/z1;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->e:Lcom/join/mgps/fragment/i1;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->f:Lcom/join/mgps/fragment/m;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->a:Landroidx/fragment/app/FragmentManager;

    .line 9
    instance-of p1, p0, Lcom/join/mgps/activity/FriendInviteActivity;

    if-eqz p1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->c1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->W0(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->u1()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->H:Z

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->H:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->b:Lcom/join/mgps/fragment/u1;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/fragment/u1;->P0()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/v;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/v;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->Z0()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method q1(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->b1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 5
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->p1(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    goto :goto_0

    :cond_1
    const/16 v0, 0x2710

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/FriendActivity;->startDownloadActivity(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public r1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->o1(I)V

    return-void
.end method

.method registerReceiver()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/FriendActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FriendActivity$a;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->r:Landroid/content/BroadcastReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method s1()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1706

    goto :goto_0

    :cond_0
    const/16 v0, 0x707

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method showAddFriend(I)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-eq v1, p1, :cond_6

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    if-nez v0, :cond_4

    .line 4
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204e2

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c016e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090288

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->u:Landroid/view/View;

    const v1, 0x7f090205

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->v:Landroid/view/View;

    const v1, 0x7f090acd

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->w:Landroid/widget/TextView;

    const v1, 0x7f090062

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->x:Landroid/widget/TextView;

    const v1, 0x7f090126

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->t:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 20
    :cond_2
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v1, :cond_3

    const/4 v1, -0x1

    .line 21
    :cond_3
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 22
    invoke-virtual {v2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->u:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/p;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/p;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->v:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/q;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/q;-><init>(Lcom/join/mgps/activity/FriendActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->getFriendInfo(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->s:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 27
    :cond_5
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->showInviteCode:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_6
    :goto_0
    return-void
.end method

.method showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity;->H:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/w;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/w;-><init>(Lcom/join/mgps/activity/FriendActivity;Lapp/mgsim/arena/ArenaRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startDownloadActivity(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->q:Z

    const-string v1, "hasPlug"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity;->p:Z

    const-string v1, "hasRom"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method t1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->n:Lcom/join/mgps/dialog/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/n;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/n;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->n:Lcom/join/mgps/dialog/n;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->n:Lcom/join/mgps/dialog/n;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/n;->g()V

    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/n;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/n;-><init>(Lcom/join/mgps/activity/FriendActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method unregisterReceiver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method v1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->m:Lcom/join/mgps/dialog/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dialog/j;->c()V

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->s()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/activity/u;

    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/u;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;)V

    .line 4
    new-instance v2, Lcom/join/mgps/dialog/j;

    invoke-direct {v2, p0, v1}, Lcom/join/mgps/dialog/j;-><init>(Landroid/app/Activity;Lcom/join/mgps/dialog/j$c;)V

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->m:Lcom/join/mgps/dialog/j;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/dialog/j;->h(Ljava/util/List;Z)V

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->m:Lcom/join/mgps/dialog/j;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/j;->j()V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->t1()V

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity;->Z0()V

    return-void
.end method

.method public w1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->y:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c04de

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->y:Landroid/view/View;

    const v3, 0x7f090cf3

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->y:Landroid/view/View;

    const v3, 0x7f090cf4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->y:Landroid/view/View;

    const v3, 0x7f090288

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->u:Landroid/view/View;

    .line 7
    new-instance v3, Lcom/join/mgps/activity/m;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/m;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v2, Lcom/join/mgps/activity/FriendActivity$j;

    invoke-direct {v2, p0, p0}, Lcom/join/mgps/activity/FriendActivity$j;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->B:Lcom/join/mgps/activity/FriendActivity$j;

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/FriendActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    new-instance v2, Lcom/join/mgps/activity/FriendActivity$g;

    invoke-direct {v2, p0, p0, v1}, Lcom/join/mgps/activity/FriendActivity$g;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->C:Lcom/join/mgps/activity/FriendActivity$g;

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/activity/FriendActivity$g;->b()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->F:Ljava/util/List;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/join/mgps/activity/FriendActivity;->C:Lcom/join/mgps/activity/FriendActivity$g;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->B:Lcom/join/mgps/activity/FriendActivity$j;

    new-instance v3, Lcom/join/mgps/activity/t;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/t;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/FriendActivity$j;->f(Lcom/join/mgps/activity/FriendActivity$h;)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->C:Lcom/join/mgps/activity/FriendActivity$g;

    new-instance v3, Lcom/join/mgps/activity/s;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/s;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/FriendActivity$g;->g(Lcom/join/mgps/activity/FriendActivity$h;)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->o:Lcom/join/mgps/dto/FriendBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getSource()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->C:Lcom/join/mgps/activity/FriendActivity$g;

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/FriendActivity$g;->f(Z)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->C:Lcom/join/mgps/activity/FriendActivity$g;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FriendActivity$g;->f(Z)V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->C:Lcom/join/mgps/activity/FriendActivity$g;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FriendActivity$g;->h(Z)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;->V0()V

    return-void
.end method

.method public x1(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/r0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->I:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c04df

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->I:Landroid/view/View;

    const v3, 0x7f090cf4

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->J:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->I:Landroid/view/View;

    const v3, 0x7f090288

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/join/mgps/activity/o;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/o;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->J:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v2, Lcom/join/mgps/activity/FriendActivity$g;

    invoke-direct {v2, p0, p0, v1}, Lcom/join/mgps/activity/FriendActivity$g;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->K:Lcom/join/mgps/activity/FriendActivity$g;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/activity/FriendActivity$g;->b()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->n0:Ljava/util/List;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->J:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/join/mgps/activity/FriendActivity;->K:Lcom/join/mgps/activity/FriendActivity$g;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->K:Lcom/join/mgps/activity/FriendActivity$g;

    new-instance v3, Lcom/join/mgps/activity/r;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/r;-><init>(Lcom/join/mgps/activity/FriendActivity;)V

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/FriendActivity$g;->g(Lcom/join/mgps/activity/FriendActivity$h;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->K:Lcom/join/mgps/activity/FriendActivity$g;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/FriendActivity$g;->h(Z)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/r0;

    .line 17
    new-instance v1, Lcom/join/mgps/dto/GameInfoBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 18
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/r0;->I1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setPic_cover(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/r0;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setTitle(Ljava/lang/String;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/r0;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/r0;->getGameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->n0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity;->K:Lcom/join/mgps/activity/FriendActivity$g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
