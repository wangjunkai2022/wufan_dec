.class public Lcom/join/mgps/activity/CheckInviteDialogActivity;
.super Lcom/BaseActivity;
.source "CheckInviteDialogActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04d5
.end annotation


# static fields
.field public static o0:Ljava/lang/String; = null

.field public static p0:Ljava/lang/String; = null

.field public static q0:Ljava/lang/String; = null

.field public static r0:Ljava/lang/String; = null

.field public static final s0:I = 0x0

.field public static final t0:I = 0x1

.field public static final u0:I = 0x2

.field public static v0:Lcom/join/mgps/dto/ArenaInviteBean;


# instance fields
.field A:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field B:Landroid/os/Handler;

.field C:Ljava/lang/Runnable;

.field D:Ljava/lang/Runnable;

.field private E:I

.field private F:Lcom/join/mgps/dialog/v0;

.field private final G:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private H:Lcom/join/mgps/socket/fight/arena/a;

.field private I:Lcom/join/mgps/socket/fight/arena/b;

.field J:Lcom/join/mgps/customview/t;

.field K:Lcom/join/mgps/rpc/d;

.field a:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field n0:Lcom/join/mgps/dto/DetailResultBean;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/Long;

.field t:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->B:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$a;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->C:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$b;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->D:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->G:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->J:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->G:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    return-object p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->T0()Z

    move-result p0

    return p0
.end method

.method private J0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->J:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->J:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private Q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->R0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    const-string v1, "register_type_share_join_room"

    invoke-static {v1}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :goto_0
    return-void
.end method

.method private T0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private U0(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

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

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method H0(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->s:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->y:Z

    .line 4
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_2

    new-array v2, v1, [Ljava/lang/String;

    .line 5
    invoke-static {p0, p1, v1, v2}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->W0()V

    goto :goto_2

    .line 18
    :cond_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->y:Z

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->getData()V

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->l:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->k:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->m:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->y:Z

    .line 24
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_7

    new-array v2, v1, [Ljava/lang/String;

    .line 25
    invoke-static {p0, p1, v1, v2}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 27
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p:Ljava/lang/String;

    goto :goto_1

    .line 31
    :cond_5
    iput-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    goto :goto_1

    .line 32
    :cond_6
    iput-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p:Ljava/lang/String;

    .line 36
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->W0()V

    :goto_2
    return-void
.end method

.method I0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->x()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/CheckInviteDialogActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$g;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method K0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, ""

    .line 3
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p0:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method L0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const-string v0, ""

    .line 1
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p0:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->c:Landroid/widget/Button;

    const-string v2, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->d:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->y:Z

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    if-nez v1, :cond_0

    iget-boolean v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    if-nez v3, :cond_0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u3001"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->x:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->x:Landroid/widget/TextView;

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\u540e\uff0c\u8bf7\u518d\u6b21\u590d\u5236\"\u7ea6\u6218\u53e3\u4ee4\"\u5373\u53ef\u5feb\u901f\u52a0\u5165\u7ea6\u6218~"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->y:Z

    if-eqz v1, :cond_3

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->s:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 15
    invoke-static {v0, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n0:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public M0(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method N0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    const-string v1, "\u5927\u5385\u5bf9\u6218"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 5
    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->v0:Lcom/join/mgps/dto/ArenaInviteBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->Q0()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V

    :goto_0
    return-void
.end method

.method P0(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showToast(Ljava/lang/String;)V

    .line 2
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    const/16 v1, 0x8

    const-string v2, "\u786e\u5b9a"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x101

    const/4 v7, 0x0

    const/4 v8, 0x4

    const-string v9, "dialog_error_hint"

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showToast(Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$h;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v7

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    aput-object p1, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I0()V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v7

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    aput-object p1, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I0()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v7

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    aput-object p1, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I0()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v7

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "\u623f\u95f4\u5df2\u6ee1\uff0c\u65e0\u6cd5\u52a0\u5165!"

    aput-object p1, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I0()V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v7

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563!"

    aput-object p1, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I0()V

    :goto_0
    return-void
.end method

.method R0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p0:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v5, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->E:I

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->s:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/join/mgps/activity/CheckInviteDialogActivity;->r0:Ljava/lang/String;

    const-string v2, "register_type_share_join_room"

    invoke-static/range {v2 .. v8}, Lapp/mgsim/arena/ArenaRequestFactory;->shareJoinRoom(Ljava/lang/String;JIJLjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService_;->C(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method S0(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u8fdb\u5165\u3010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u3011\u6311\u6218\u597d\u53cb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x263a

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->M0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->M0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->t:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->C:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->D:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method V0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->F:Lcom/join/mgps/dialog/v0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dialog/v0;->a()V

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/v0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/v0;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->F:Lcom/join/mgps/dialog/v0;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->F:Lcom/join/mgps/dialog/v0;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/v0;->e()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->F:Lcom/join/mgps/dialog/v0;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/v0;->b()Landroid/app/Dialog;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$e;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method W0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->y:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->O0()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->A:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->y:Z

    const-string v2, "M"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p0, v0, v4}, Lcom/join/mgps/Util/UtilsMy;->G2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->G2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->y:Z

    const-string v1, "\u4f60\u9700\u8981\u5148\u4e0b\u8f7d\u6e38\u620f<"

    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    if-nez v2, :cond_3

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">\u548c"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x11

    if-nez v0, :cond_4

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 25
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->z:Z

    if-nez v0, :cond_5

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f60\u9700\u8981\u5148\u4e0b\u8f7d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method X0()Z
    .locals 2

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

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
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const-string v0, "\uffe5"

    const-string v1, "#"

    const-string v2, "&"

    const-string v3, "$"

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->K:Lcom/join/mgps/rpc/d;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 3
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    sput-object v4, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    :try_start_0
    const-string v5, "\u3010"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    const-string v7, "\u3011"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->r:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    const/16 v5, 0x263a

    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->M0(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 6
    iget-object v6, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->M0(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 7
    iget-object v6, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->q:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 9
    iget-object v5, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 11
    :cond_0
    iget-object v5, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->E:I

    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v3, :cond_1

    .line 14
    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/join/mgps/activity/CheckInviteDialogActivity;->r0:Ljava/lang/String;

    .line 15
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p0:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->s:Ljava/lang/Long;

    .line 20
    new-instance v0, Lcom/join/mgps/dto/ArenaInviteBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ArenaInviteBean;-><init>()V

    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->v0:Lcom/join/mgps/dto/ArenaInviteBean;

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->s:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArenaInviteBean;->setGameId(Ljava/lang/Long;)V

    .line 22
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->v0:Lcom/join/mgps/dto/ArenaInviteBean;

    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArenaInviteBean;->setGroupId(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->v0:Lcom/join/mgps/dto/ArenaInviteBean;

    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->q0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArenaInviteBean;->setNo(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->v0:Lcom/join/mgps/dto/ArenaInviteBean;

    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->r0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArenaInviteBean;->setPassword(Ljava/lang/String;)V

    .line 25
    iget v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->E:I

    if-lez v0, :cond_4

    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->s:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    goto :goto_0

    .line 26
    :cond_3
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    new-instance v1, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/b$b;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 28
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a;

    new-instance v1, Lcom/join/mgps/activity/CheckInviteDialogActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity$d;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H:Lcom/join/mgps/socket/fight/arena/a;

    const/16 v0, 0xbb8

    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->S0(I)V

    return-void

    .line 30
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 31
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->s:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->K:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->R(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DetailResultBean;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->n0:Lcom/join/mgps/dto/DetailResultBean;

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H0(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->G:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->I:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    :cond_1
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/16 v0, 0x1f4

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->S0(I)V

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

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->c:Landroid/widget/Button;

    const-string v1, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->A:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->T0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
