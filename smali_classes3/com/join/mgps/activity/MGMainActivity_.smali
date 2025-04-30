.class public final Lcom/join/mgps/activity/MGMainActivity_;
.super Lcom/join/mgps/activity/MGMainActivity;
.source "MGMainActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGMainActivity_$z2;
    }
.end annotation


# static fields
.field public static final E:Ljava/lang/String; = "intentDateBean"

.field public static final F:Ljava/lang/String; = "intentDateBean22"

.field public static final G:Ljava/lang/String; = "jPushIntentData"


# instance fields
.field private final A:Landroid/content/IntentFilter;

.field private final B:Landroid/content/BroadcastReceiver;

.field private final C:Landroid/content/IntentFilter;

.field private final D:Landroid/content/BroadcastReceiver;

.field private final a:Li3/c;

.field private final b:Ljava/util/Map;
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

.field private final c:Landroid/content/IntentFilter;

.field private final d:Landroid/content/BroadcastReceiver;

.field private final e:Landroid/content/IntentFilter;

.field private final f:Landroid/content/BroadcastReceiver;

.field private final g:Landroid/content/IntentFilter;

.field private final h:Landroid/content/BroadcastReceiver;

.field private final i:Landroid/content/IntentFilter;

.field private final j:Landroid/content/BroadcastReceiver;

.field private final k:Landroid/content/IntentFilter;

.field private final l:Landroid/content/BroadcastReceiver;

.field private final m:Landroid/content/IntentFilter;

.field private final o:Landroid/content/BroadcastReceiver;

.field private final p:Landroid/content/IntentFilter;

.field private final q:Landroid/content/BroadcastReceiver;

.field private final s:Landroid/content/IntentFilter;

.field private final t:Landroid/content/BroadcastReceiver;

.field private final u:Landroid/content/IntentFilter;

.field private final v:Landroid/content/BroadcastReceiver;

.field private final w:Landroid/content/IntentFilter;

.field private final x:Landroid/content/BroadcastReceiver;

.field private final y:Landroid/content/IntentFilter;

.field private final z:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->a:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->c:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$o;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->d:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->e:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$z;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->f:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->g:Landroid/content/IntentFilter;

    .line 9
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$k0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$k0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->h:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->i:Landroid/content/IntentFilter;

    .line 11
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$v0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$v0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->j:Landroid/content/BroadcastReceiver;

    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->k:Landroid/content/IntentFilter;

    .line 13
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$g1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$g1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->l:Landroid/content/BroadcastReceiver;

    .line 14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->m:Landroid/content/IntentFilter;

    .line 15
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$r1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$r1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->o:Landroid/content/BroadcastReceiver;

    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->p:Landroid/content/IntentFilter;

    .line 17
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$c2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$c2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->q:Landroid/content/BroadcastReceiver;

    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->s:Landroid/content/IntentFilter;

    .line 19
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$n2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$n2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->t:Landroid/content/BroadcastReceiver;

    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->u:Landroid/content/IntentFilter;

    .line 21
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$y2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$y2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->v:Landroid/content/BroadcastReceiver;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->w:Landroid/content/IntentFilter;

    .line 23
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$e;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->x:Landroid/content/BroadcastReceiver;

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->y:Landroid/content/IntentFilter;

    .line 25
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$f;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->z:Landroid/content/BroadcastReceiver;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->A:Landroid/content/IntentFilter;

    .line 27
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$g;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->B:Landroid/content/BroadcastReceiver;

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->C:Landroid/content/IntentFilter;

    .line 29
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$h;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->D:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->checkShowOldUserRecom(Z)V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->delaydown(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/event/m;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startGameRoom(Lcom/join/mgps/event/m;)V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->autoSendAdd()V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->showOnlineCouponDialog(Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->saveUUID()V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->initApplicationData()V

    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getRootUrl()V

    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->initCheckSNKGame(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkRealName()V

    return-void
.end method

.method static synthetic M1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->preloadingAD()V

    return-void
.end method

.method static synthetic N1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->initJPushJoinDevice()V

    return-void
.end method

.method static synthetic O1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getRedPointData()V

    return-void
.end method

.method static synthetic P1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getHaveGameList()V

    return-void
.end method

.method static synthetic Q1(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->savePurchasedList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->hideSplash()V

    return-void
.end method

.method static synthetic R1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkPurchasedList()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/MGMainActivity_;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->startIntentOldUserRecom(J)V

    return-void
.end method

.method static synthetic S1(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getDetailData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->hideSplash2()V

    return-void
.end method

.method static synthetic T1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkInstallApp()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showSharedGameDialog(Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void
.end method

.method static synthetic U1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->rewadCopper()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/MGMainActivity_;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->showInstallAppDialogActivity(ILjava/util/List;)V

    return-void
.end method

.method static synthetic V1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->init()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/RewardBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->toastData(Lcom/join/mgps/dto/RewardBean;)V

    return-void
.end method

.method static synthetic W1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->selectTableDelay()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic X1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkToken()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateHistory()V

    return-void
.end method

.method static synthetic Y1(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startBackups(Z)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showBackupFinishDialog(I)V

    return-void
.end method

.method static synthetic Z1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->startLoadRecommendwifi()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getdownloadTaskUI(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getdownloadTask()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->sendRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b2(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->sendRigester(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateLine(I)V

    return-void
.end method

.method static synthetic c2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateDownloadingPoint(I)V

    return-void
.end method

.method static synthetic d2(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getVideoAdCfg(Z)V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->showRedPoint()V

    return-void
.end method

.method static synthetic e2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getEMUVersion()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateNoOpenPoint()V

    return-void
.end method

.method static synthetic f2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->pullUpExtHelper()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateHidePoint()V

    return-void
.end method

.method static synthetic g2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->onresumData()V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    return-void
.end method

.method static synthetic h2(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setADCacheData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->startPlayVideo()V

    return-void
.end method

.method static synthetic i2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateAndroidApp()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 3
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->netExcption:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->netConnectException:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity_;->injectExtras_()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->c:Landroid/content/IntentFilter;

    const-string v0, "com.join.intent.showtoast"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->e:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.appUpdate"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->g:Landroid/content/IntentFilter;

    const-string v0, "com.papa.broadcast.showUpdateDialog"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->i:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.backup_game_finish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->k:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_unread_notify"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->m:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.startDownloadLiveRes"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->p:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.coinflote"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->s:Landroid/content/IntentFilter;

    const-string v0, "com.join.intent.initAdVideoConfig"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->u:Landroid/content/IntentFilter;

    const-string v0, "com.download.delay.down"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->w:Landroid/content/IntentFilter;

    const-string v0, "com.download.permiss.get"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->y:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->A:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->C:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.emu.resume"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->d:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->c:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->f:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->e:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->h:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->g:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->j:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->i:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->l:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->k:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->o:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->m:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->q:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->p:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->t:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->s:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->v:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->u:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->x:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->w:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->z:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->y:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->B:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->A:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->D:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->C:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "intentDateBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/IntentDateBean;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    :cond_0
    const-string v1, "intentDateBean22"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/IntentDateBean;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean22:Lcom/join/mgps/Util/IntentDateBean;

    :cond_1
    const-string v1, "jPushIntentData"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/JPushIntentData;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    :cond_2
    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->refreshTabIcon()V

    return-void
.end method

.method static synthetic j2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->setwifiStadu()V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->serverConnectionException()V

    return-void
.end method

.method static synthetic k2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->touristLogin()V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->showDownNotice()V

    return-void
.end method

.method static synthetic l2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getHomePopupAd()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method static synthetic m2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->getBootPageData()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic n2(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->preLoad(Lcom/join/mgps/dto/PopupAdBean;)V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic o2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkSNKGame()V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->hideRedPoint()V

    return-void
.end method

.method static synthetic p2(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getSNKGameInfo(I)V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q2(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/ad/c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->delayLoadRewardAd(Lcom/join/mgps/ad/c;)V

    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->showAdM()V

    return-void
.end method

.method static synthetic r2(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->videoAdWatchLog(Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V

    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V

    return-void
.end method

.method static synthetic s2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkPlugNeedUpdate()V

    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->sanLocalGameIv(I)V

    return-void
.end method

.method static synthetic t2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->handleVideoAdWatchLogRecord()V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showCheckData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic u2(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->afterLogin()V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v2(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->reject(I)V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setSNKGameData(Lcom/join/mgps/dto/SNKGameInfoBean;)V

    return-void
.end method

.method static synthetic w2(Lcom/join/mgps/activity/MGMainActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getOnlineCouponConfig(I)V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->initAdVideoConfig()V

    return-void
.end method

.method static synthetic x2(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getData(Z)V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/MGMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->delayChangeAdshow()V

    return-void
.end method

.method public static y2(Landroid/content/Context;)Lcom/join/mgps/activity/MGMainActivity_$z2;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$z2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$z2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic z1(Lcom/join/mgps/activity/MGMainActivity_;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startAlphaBreathAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static z2(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MGMainActivity_$z2;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$z2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$z2;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method afterLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$b;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method autoSendAdd()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$l1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$l1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method checkDownlodingNumber()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$i2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$i2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method checkInstallApp()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$z1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$z1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method checkPlugNeedUpdate()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$w;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x4b0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method checkPurchasedList()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$x1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$x1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method checkRealName()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$t;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method checkSNKGame()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$u2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$u2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method checkShowOldUserRecom(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$s;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$s;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method checkToken()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$d2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$d2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method delayChangeAdshow()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$e1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$e1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method delayLoadRewardAd(Lcom/join/mgps/ad/c;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$w2;

    const-string v2, ""

    const-wide/16 v3, 0x12c

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$w2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/ad/c;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method delaydown(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$h1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$h1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-string p1, ""

    const-wide/16 v1, 0xbb8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$w0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$w0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getBootPageData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$s2;

    const-string v2, ""

    const-wide/16 v3, 0x5dc

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$s2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getData(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$x;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$x;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method getDetailData(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$y1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$y1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getEMUVersion()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$k2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$k2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getHaveGameList()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$v1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$v1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getHomePopupAd()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$r2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$r2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getOnlineCouponConfig(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$d;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getRedPointData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$u1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$u1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getRootUrl()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$p1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$p1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getSNKGameInfo(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$v2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$v2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getVideoAdCfg(Z)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$j2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$j2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Z)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getdownloadTask()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$g2;

    const-string v2, ""

    const-wide/16 v3, 0x3e8

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$g2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getdownloadTaskUI(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$g0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$g0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$k1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$k1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method handleVideoAdWatchLogRecord()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$a;

    const-string v2, ""

    const-wide/16 v3, 0x1388

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$a;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method hideRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$r;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method hideSplash()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$n;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x514

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method hideSplash2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$p;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x514

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method init()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$b2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$b2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method initAdVideoConfig()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$d1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$d1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method initApplicationData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$o1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$o1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method initCheckSNKGame(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/MGMainActivity_$q1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/MGMainActivity_$q1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method initJPushJoinDevice()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$t1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$t1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->a:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c046f

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090b53

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/LightningView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->numberInTab:Lcom/join/mgps/customview/LightningView;

    const v0, 0x7f090231

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    const v0, 0x7f0903db

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downlodingGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090ea7

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->splash:Landroid/widget/ImageView;

    const v0, 0x7f090169

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->bottom:Landroid/widget/LinearLayout;

    const v0, 0x7f090a52

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_tabselect:Landroid/widget/RelativeLayout;

    const v0, 0x7f090a3d

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_tabselect:Landroid/widget/LinearLayout;

    const v0, 0x7f090a43

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_tabselect:Landroid/widget/RelativeLayout;

    const v0, 0x7f090a51

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_image:Landroid/widget/ImageView;

    const v0, 0x7f090a53

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_text:Landroid/widget/TextView;

    const v0, 0x7f090a3c

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_image:Landroid/widget/ImageView;

    const v0, 0x7f090a3e

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_text:Landroid/widget/TextView;

    const v0, 0x7f090a3f

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    const v0, 0x7f0905df

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090a41

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_text:Landroid/widget/TextView;

    const v0, 0x7f090a42

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_image:Landroid/widget/ImageView;

    const v0, 0x7f090a45

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_text:Landroid/widget/TextView;

    const v0, 0x7f090498

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fightImage:Landroid/widget/ImageView;

    const v0, 0x7f0904a8

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fightText:Landroid/widget/TextView;

    const v0, 0x7f090cfa

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->red_point:Landroid/widget/TextView;

    const v0, 0x7f0904a4

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fightSelect:Landroid/widget/RelativeLayout;

    const v0, 0x7f090a40

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_tabselect:Landroid/widget/RelativeLayout;

    const v0, 0x7f091214

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->unreadMessageBadge:Landroid/widget/TextView;

    const v0, 0x7f090664

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_monkey_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090661

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_default_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f090663

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_monkey_image:Landroid/widget/ImageView;

    const v0, 0x7f090662

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_huojian_image:Landroid/widget/ImageView;

    const v0, 0x7f0906c3

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->imageView36:Landroid/widget/ImageView;

    const v0, 0x7f09089d

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->layout_others:Landroid/widget/RelativeLayout;

    const v0, 0x7f090380

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->discoverNormal:Landroid/widget/LinearLayout;

    const v0, 0x7f09037f

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->discoverMessage:Landroid/widget/ImageView;

    const v0, 0x7f09037e

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->discoverHuojian:Landroid/widget/ImageView;

    const v0, 0x7f090b37

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->notice_text:Landroid/widget/TextView;

    const v0, 0x7f090353

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->dialogBack:Landroid/widget/TextView;

    const v0, 0x7f090b36

    .line 35
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->notice_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f09015d

    .line 36
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->bigCenterRound:Landroid/widget/TextView;

    const v0, 0x7f090a59

    .line 37
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->miniGameBadge:Landroid/widget/TextView;

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_tabselect:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 39
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$i;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_tabselect:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 41
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$j;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_tabselect:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    .line 43
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$k;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_tabselect:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    .line 45
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$l;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->fightSelect:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    .line 47
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$m;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->afterViews()V

    return-void
.end method

.method onresumData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$m2;

    const-string v2, ""

    const-wide/16 v3, 0x3e8

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$m2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method preLoad(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$t2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$t2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/PopupAdBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method preloadingAD()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$s1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$s1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method pullUpExtHelper()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$l2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$l2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$u0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$u0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$s0;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$s0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$t0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$t0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method refreshTabIcon()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$p0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$p0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method reject(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$c;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method rewadCopper()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$a2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$a2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method sanLocalGameIv(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$z0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$z0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method savePurchasedList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$w1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$w1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method saveUUID()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$n1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$n1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method selectTableDelay()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$u;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x320

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method sendRegister(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$h0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$h0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method sendRigester(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$h2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$h2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method serverConnectionException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$q0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method setADCacheData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$v;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$v;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->a:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->a:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_;->a:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity_;->injectExtras_()V

    return-void
.end method

.method setSNKGameData(Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$c1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$c1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/SNKGameInfoBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method setwifiStadu()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$p2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$p2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method showAdM()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$x0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$x0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showBackupFinishDialog(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$f0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$f0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showCheckData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$a1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$a1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showDownNotice()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$r0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$r0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x5dc

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$y0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$y0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/PopupAdBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x1f4

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$j1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$j1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaRequest;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showInstallAppDialogActivity(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$b0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;ILjava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$d0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$d0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showOnlineCouponDialog(Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$m1;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$m1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$q;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showSharedGameDialog(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$a0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$a0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/CollectionBeanSub;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$b1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$b1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$n0;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$n0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/VersionDto;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startAlphaBreathAnimation(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$f1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$f1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Landroid/view/View;)V

    const-string p1, ""

    const-wide/16 v1, 0x190

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startBackups(Z)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGMainActivity_$e2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGMainActivity_$e2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Z)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method startGameRoom(Lcom/join/mgps/event/m;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$i1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$i1;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/event/m;)V

    const-string p1, ""

    const-wide/16 v1, 0xc8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startIntentOldUserRecom(J)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$y;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity_$y;-><init>(Lcom/join/mgps/activity/MGMainActivity_;J)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startLoadRecommendwifi()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$f2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$f2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method startPlayVideo()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$o0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$o0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x190

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method toastData(Lcom/join/mgps/dto/RewardBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$c0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$c0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Lcom/join/mgps/dto/RewardBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method touristLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$q2;

    const-string v2, ""

    const-wide/16 v3, 0x3e8

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$q2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method updateAndroidApp()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity_$o2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity_$o2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$j0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$j0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateHidePoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$m0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$m0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateHistory()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$e0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateLine(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$i0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity_$i0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateNoOpenPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity_$l0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity_$l0;-><init>(Lcom/join/mgps/activity/MGMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method videoAdWatchLog(Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/MGMainActivity_$x2;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/MGMainActivity_$x2;-><init>(Lcom/join/mgps/activity/MGMainActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
