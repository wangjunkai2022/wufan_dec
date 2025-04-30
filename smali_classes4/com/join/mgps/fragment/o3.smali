.class public Lcom/join/mgps/fragment/o3;
.super Landroidx/fragment/app/Fragment;
.source "NewArenaMainFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0220
.end annotation


# static fields
.field private static final D0:Ljava/lang/String; = "NewArenaMainFragment"

.field private static final E0:I = 0x1010


# instance fields
.field private A:Lcom/join/mgps/dialog/x0;

.field private A0:Lcom/join/mgps/adapter/t1;

.field private final B:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field B0:Z

.field private C:Lcom/join/mgps/socket/fight/arena/a;

.field C0:Z

.field private D:Lcom/papa91/battle/protocol/GameRoom;

.field private E:Lcom/join/mgps/dialog/v0;

.field F:Landroidx/fragment/app/FragmentManager;

.field G:Lcom/join/mgps/activity/arena/b;

.field H:Lcom/join/mgps/fragment/c;

.field I:Lcom/join/mgps/fragment/c;

.field J:Landroid/view/View;

.field K:Landroid/view/View;

.field private a:Z

.field b:Lcom/join/mgps/rpc/k;

.field c:Lcom/join/mgps/rpc/k;

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/join/mgps/customview/AutoScrollViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/customview/AutoScrollViewPager<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n0:Landroid/view/View;

.field o:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field o0:Landroid/view/View;

.field private p:Lcom/join/mgps/socket/fight/arena/b;

.field p0:Landroid/widget/TextView;

.field private q:Landroid/app/Activity;

.field q0:Landroid/widget/TextView;

.field private r:Ljava/lang/String;

.field r0:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field s0:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field t0:I

.field u:Landroid/widget/TextView;

.field private u0:Landroidx/fragment/app/FragmentManager;

.field v:Landroid/widget/RelativeLayout;

.field private v0:Lcom/join/mgps/dto/ResultResMainBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;"
        }
    .end annotation
.end field

.field w:Landroid/widget/TextView;

.field w0:I

.field x:Landroid/widget/TextView;

.field private x0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field y:Landroid/widget/TextView;

.field private y0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field z:Landroid/widget/TextView;

.field private z0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o3;->a:Z

    .line 3
    new-instance v1, Lcom/join/mgps/fragment/o3$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o3$i;-><init>(Lcom/join/mgps/fragment/o3;)V

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->B:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/o3;->t0:I

    const/16 v1, 0x14

    .line 5
    iput v1, p0, Lcom/join/mgps/fragment/o3;->w0:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->y0:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->z0:Ljava/util/List;

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o3;->B0:Z

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o3;->C0:Z

    return-void
.end method

.method private E0(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    .line 2
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    .line 3
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/fragment/o3$g;

    invoke-direct {v4, p0, p1}, Lcom/join/mgps/fragment/o3$g;-><init>(Lcom/join/mgps/fragment/o3;I)V

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/z;->P(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dialog/h0$c;)Landroid/app/Dialog;

    return-void
.end method

.method private F0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->E:Lcom/join/mgps/dialog/v0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dialog/v0;->a()V

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/v0;

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/join/mgps/dialog/v0;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->E:Lcom/join/mgps/dialog/v0;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u5165\u5931\u8d25\uff0c\u60a8\u4e0e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u623f\u95f4\u4e0d\u5728\u540c\u4e00\u6218\u533a\n\u8bf7\u8fdb\u5165\u8be5\u6e38\u620f\u623f\u95f4\u5217\u8868\uff0c\u5e76\u5207\u6362\u81f3\u3010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3011\u540e\u518d\u67e5\u627e\u623f\u95f4\u53f7\u8fdb\u5165"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/v0;->d(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->E:Lcom/join/mgps/dialog/v0;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/v0;->e()V

    return-void
.end method

.method private G0()V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    const-string v2, "\u8bf7\u8f93\u5165\u623f\u95f4\u53f7"

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/join/mgps/customview/input/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 2
    new-instance v1, Lcom/join/mgps/fragment/o3$h;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/fragment/o3$h;-><init>(Lcom/join/mgps/fragment/o3;Lcom/join/mgps/customview/input/a;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    return-void
.end method

.method private I0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/Util/z;->z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/x0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dialog/x0;->b()V

    return-void
.end method

.method private K0(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    const-class v2, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/fragment/o3;->C0:Z

    const-string v2, "hasPlug"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-boolean v1, p0, Lcom/join/mgps/fragment/o3;->B0:Z

    const-string v2, "hasRom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/o3;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o3;->B:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    return-object p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/o3;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o3;->E0(I)V

    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/o3;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o3;->k0(I)V

    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/o3;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/o3;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o3;->y0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic S(Lcom/join/mgps/fragment/o3;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o3;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic T(Lcom/join/mgps/fragment/o3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic U(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic V(Lcom/join/mgps/fragment/o3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o3;->I0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W(Lcom/join/mgps/fragment/o3;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method static synthetic X(Lcom/join/mgps/fragment/o3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/o3;->G0()V

    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/o3;ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/o3;->v0(ILandroidx/fragment/app/FragmentTransaction;)V

    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    return-object p0
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/o3;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o3;->z0:Ljava/util/List;

    return-object p0
.end method

.method private c0(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private f0(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o3;->B0:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o3;->C0:Z

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
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o3;->B0:Z

    .line 6
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v2, p1, v0, v3}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o3;->C0:Z

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o3;->C0:Z

    goto :goto_1

    .line 10
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o3;->C0:Z

    goto :goto_1

    .line 11
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o3;->B0:Z

    .line 12
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/fragment/o3;->C0:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/join/mgps/fragment/o3;->B0:Z

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method private k0(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/o3;->m0()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/join/mgps/fragment/o3$f;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/fragment/o3$f;-><init>(Lcom/join/mgps/fragment/o3;I)V

    .line 4
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->H(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 5
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/backends/pipeline/e;->d0(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private m0()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private n0(Ljava/util/List;I)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;I)",
            "Lcom/facebook/drawee/view/SimpleDraweeView;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    new-instance v1, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    const/high16 v2, 0x41400000    # 12.0f

    .line 4
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/RoundingParams;->s(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f080719

    invoke-static {v0, p2, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object v0
.end method

.method private v0(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p0:Landroid/widget/TextView;

    const-string v1, "#7B95A4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->r0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->s0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->r0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->s0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/16 v0, 0x8

    const-string v2, "#FFC438"

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq p1, v3, :cond_9

    const/4 v5, 0x2

    if-eq p1, v5, :cond_6

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->J:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->K:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->n0:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->o0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->m:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->H:Lcom/join/mgps/fragment/c;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->G:Lcom/join/mgps/activity/arena/b;

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->s0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->s0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/16 :goto_0

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->J:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->K:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->n0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->o0:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->m:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->G:Lcom/join/mgps/activity/arena/b;

    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 29
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->I:Lcom/join/mgps/fragment/c;

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 31
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->r0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->r0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 33
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->J:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->K:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->n0:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->o0:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->m:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->H:Lcom/join/mgps/fragment/c;

    if-eqz p1, :cond_7

    .line 40
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 41
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->I:Lcom/join/mgps/fragment/c;

    if-eqz p1, :cond_8

    .line 42
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->q0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->q0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 45
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->J:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->K:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->n0:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->o0:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->p0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->p0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :goto_0
    return-void
.end method

.method private w0(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method A0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o3;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->L0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->J0()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "\u6b63\u5728\u8fde\u63a5\u670d\u52a1\u5668\uff0c\u8bf7\u7a0d\u540e..."

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o3;->showToast(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/o3;->G0()V

    :goto_0
    return-void
.end method

.method B0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->l:Lcom/join/mgps/customview/AutoScrollViewPager;

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->y0:Ljava/util/List;

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_4
    return-void

    .line 11
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gez p1, :cond_7

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->l:Lcom/join/mgps/customview/AutoScrollViewPager;

    if-nez p1, :cond_6

    return-void

    .line 13
    :cond_6
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method C0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->z0:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->z0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    new-instance p1, Lcom/join/mgps/dto/GameInfoBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    const-string v0, "\u609f\u996d\u5168\u660e\u661f"

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setTitle(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setRoom_count(I)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0803b8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setPic_remote_vertical(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->z0:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->A0:Lcom/join/mgps/adapter/t1;

    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->z0:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/t1;->e(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setRefreshing(Z)V
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

.method D0(Lcom/join/mgps/dto/GameListBannerBean;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getLately_battle()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getArcade_battle()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->u:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getFc_battle()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getMatch_title()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->v:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getMatch_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->x:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getNick_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getJoin_number()I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->y:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getJoin_number()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method H0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    const-string v2, "\u8bf7\u8f93\u5165\u623f\u95f4\u5bc6\u7801"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/join/mgps/customview/input/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 2
    new-instance v1, Lcom/join/mgps/fragment/o3$j;

    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/fragment/o3$j;-><init>(Lcom/join/mgps/fragment/o3;Lcom/join/mgps/customview/input/a;Lcom/papa91/battle/protocol/GameRoom;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    return-void
.end method

.method J0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    return-void
.end method

.method L0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/o3;->c0(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method afterViews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->b:Lcom/join/mgps/rpc/k;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->c:Lcom/join/mgps/rpc/k;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->F:Landroidx/fragment/app/FragmentManager;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->u0:Landroidx/fragment/app/FragmentManager;

    .line 5
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/o3$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o3$m;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->u0:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 9
    :try_start_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c04d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09009a

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090866

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->s:Landroid/widget/TextView;

    const v1, 0x7f09083b

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->t:Landroid/widget/TextView;

    const v1, 0x7f09048c

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->u:Landroid/widget/TextView;

    const v1, 0x7f090436

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->w:Landroid/widget/TextView;

    const v1, 0x7f090437

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->x:Landroid/widget/TextView;

    const v1, 0x7f090439

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->y:Landroid/widget/TextView;

    const v1, 0x7f090438

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->z:Landroid/widget/TextView;

    const v1, 0x7f09043a

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->v:Landroid/widget/RelativeLayout;

    const v1, 0x7f09083d

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->J:Landroid/view/View;

    const v1, 0x7f090afa

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->K:Landroid/view/View;

    const v1, 0x7f0905ce

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->n0:Landroid/view/View;

    const v1, 0x7f09048a

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->o0:Landroid/view/View;

    const v1, 0x7f0910a8

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->p0:Landroid/widget/TextView;

    .line 26
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const v1, 0x7f0910ab

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->q0:Landroid/widget/TextView;

    const v1, 0x7f09109c

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->r0:Landroid/widget/TextView;

    const v1, 0x7f09109b

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->s0:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 31
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int v4, v1, v4

    mul-int/lit8 v1, v1, 0x70

    div-int/lit16 v1, v1, 0x15e

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v1, v4}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 35
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->v:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/fragment/o3$n;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/o3$n;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09083c

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/fragment/o3$o;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/o3$o;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090937

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/fragment/o3$p;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/o3$p;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090934

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/fragment/o3$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/o3$a;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090928

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/fragment/o3$b;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/o3$b;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900a0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/AutoScrollViewPager;

    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->l:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 42
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 43
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/j;->j(Landroid/app/Activity;)F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3ffe666666666666L    # 1.9

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_1

    const/4 v0, 0x5

    goto :goto_2

    :cond_1
    const/4 v0, 0x4

    .line 45
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Lcom/join/mgps/fragment/o3$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o3$c;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 49
    new-instance v0, Lcom/join/mgps/adapter/t1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/t1;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->A0:Lcom/join/mgps/adapter/t1;

    .line 50
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->A0:Lcom/join/mgps/adapter/t1;

    new-instance v1, Lcom/join/mgps/fragment/o3$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o3$d;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/t1;->f(Lcom/join/mgps/adapter/t1$e;)V

    .line 52
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->p0()V

    return-void
.end method

.method public d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->y0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->y0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->y0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->y0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "NewArenaMainFragment"

    const-string v1, "--- removeObserver---"

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->B:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method g0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/join/android/app/common/utils/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->showLoding()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->z0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->showLodingFailed()V

    :goto_0
    return-void
.end method

.method h0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method i0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result p1

    const-string v2, "register_type_NewArenaMainFragment"

    invoke-static {v2, v1, p2, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_0
    return-void
.end method

.method j0(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "register_type_NewArenaMainFragment"

    invoke-static {v1, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->searchRoomById(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_0
    return-void
.end method

.method l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->v0:Lcom/join/mgps/dto/ResultResMainBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->z0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->g0()V

    :goto_0
    return-void
.end method

.method public o0()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1010

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o3;->H0(Lcom/papa91/battle/protocol/GameRoom;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o3;->H0(Lcom/papa91/battle/protocol/GameRoom;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u6b63\u5728\u83b7\u53d6\u623f\u95f4..."

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o3;->I0(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/o3;->i0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    .line 3
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    new-instance v1, Lcom/join/mgps/fragment/o3$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o3$k;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/b$b;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 5
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a;

    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    new-instance v1, Lcom/join/mgps/fragment/o3$l;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o3$l;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/o3;->C:Lcom/join/mgps/socket/fight/arena/a;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o3;->a:Z

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string v0, "NewArenaMainFragment"

    const-string v1, "--onDestroy--"

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->x0:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 10
    iput-object v1, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "NewArenaMainFragment"

    const-string v1, "--onDestroyView--"

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o3;->a:Z

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tbl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->d0()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string v0, "NewArenaMainFragment"

    const-string v1, "--onPause--"

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->h0()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "NewArenaMainFragment"

    const-string v1, "--onResume--"

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/fragment/o3;->t0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->l0()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->l:Lcom/join/mgps/customview/AutoScrollViewPager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->n()V

    :cond_0
    return-void
.end method

.method p0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/dto/CollectionCommentRequest;

    invoke-direct {v1}, Lcom/join/mgps/dto/CollectionCommentRequest;-><init>()V

    const-string v2, ""

    .line 3
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CollectionCommentRequest;->setCollection_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/CollectionCommentRequest;->setUid(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/c;->N1(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/o3$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o3$e;-><init>(Lcom/join/mgps/fragment/o3;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method q0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/o3;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->v0:Lcom/join/mgps/dto/ResultResMainBean;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->showLodingFailed()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->u0()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->z1()V

    return-void
.end method

.method r0(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 14
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-string v4, "\u91cd\u8bd5"

    const-string v5, "\u53d6\u6d88"

    const/16 v6, 0x100

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "dialog_error_hint"

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x9

    const-string v2, "\u786e\u5b9a"

    const/16 v3, 0x101

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->C:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v11

    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    aput-object p1, v1, v10

    const-string p1, "\u6211\u77e5\u9053\u4e86"

    aput-object p1, v1, v9

    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->C:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v12

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v11

    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    aput-object p1, v1, v10

    aput-object v2, v1, v9

    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->C:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    const/16 v3, 0x102

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v12

    iget v3, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v11

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    aput-object p1, v1, v10

    aput-object v2, v1, v9

    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->C:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v12

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v11

    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    aput-object p1, v1, v10

    aput-object v2, v1, v9

    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->C:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v12

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v11

    const-string p1, "\u623f\u95f4\u5df2\u6ee1\uff0c\u65e0\u6cd5\u52a0\u5165!"

    aput-object p1, v1, v10

    aput-object v2, v1, v9

    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->C:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v12

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v11

    const-string p1, "\u623f\u95f4\u53f7\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    aput-object p1, v1, v10

    aput-object v5, v1, v9

    aput-object v4, v1, v8

    aput-object v2, v1, v3

    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->C:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v12

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v11

    const-string p1, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    aput-object p1, v1, v10

    aput-object v5, v1, v9

    aput-object v4, v1, v8

    aput-object v2, v1, v3

    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const-string v0, "NewArenaMain"

    const-string v1, "relodingimag"

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->l0()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->m:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->e:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->m:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setRefreshing(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->z1()V

    :cond_3
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method t0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->A:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7981\u6b62\u5916\u8bbe\u7528\u6237\u52a0\u5165!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v0

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->D:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->p:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o3;->F0(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/o3;->f0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p1, 0x1010

    .line 11
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o3;->K0(I)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o3;->H0(Lcom/papa91/battle/protocol/GameRoom;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/fragment/o3;->i0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method u0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->e:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget v0, p0, Lcom/join/mgps/fragment/o3;->t0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->z1()V

    return-void
.end method

.method x0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/lobby_active/index/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->v0:Lcom/join/mgps/dto/ResultResMainBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->v0:Lcom/join/mgps/dto/ResultResMainBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameListBannerBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean;->getBanner_list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o3;->B0(Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->q:Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->l0()V

    return-void
.end method

.method z0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->o:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->o:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/o3;->c:Lcom/join/mgps/rpc/k;

    invoke-interface {v2, v1, v0}, Lcom/join/mgps/rpc/k;->P(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v1}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabled()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lapp/mgsim/arena/ArenaResponse;

    invoke-direct {v1}, Lapp/mgsim/arena/ArenaResponse;-><init>()V

    const/16 v2, 0x3e9

    .line 8
    iput v2, v1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabledMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o3;->r0(Lapp/mgsim/arena/ArenaResponse;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->showLodingFailed()V

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getStartGameCopper()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/o3;->w0:I

    if-nez v0, :cond_1

    const/16 v0, 0x14

    .line 13
    iput v0, p0, Lcom/join/mgps/fragment/o3;->w0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/fragment/o3;->b:Lcom/join/mgps/rpc/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/k;->u(Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->q0()V

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_1
    iget-boolean v1, p0, Lcom/join/mgps/fragment/o3;->a:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getError()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->v0:Lcom/join/mgps/dto/ResultResMainBean;

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameListBannerBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean;->getBanner_list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o3;->B0(Ljava/util/List;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->v0:Lcom/join/mgps/dto/ResultResMainBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameListBannerBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o3;->D0(Lcom/join/mgps/dto/GameListBannerBean;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/o3;->v0:Lcom/join/mgps/dto/ResultResMainBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameListBannerBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o3;->C0(Ljava/util/List;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->u0()V

    :cond_3
    :goto_2
    return-void
.end method
