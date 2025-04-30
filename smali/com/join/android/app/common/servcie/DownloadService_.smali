.class public final Lcom/join/android/app/common/servcie/DownloadService_;
.super Lcom/join/android/app/common/servcie/DownloadService;
.source "DownloadService_.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/servcie/DownloadService_$l;
    }
.end annotation


# instance fields
.field private final n:Landroid/content/IntentFilter;

.field private final o:Landroid/content/BroadcastReceiver;

.field private final p:Landroid/content/IntentFilter;

.field private final q:Landroid/content/BroadcastReceiver;

.field private final r:Landroid/content/IntentFilter;

.field private final s:Landroid/content/BroadcastReceiver;

.field private final t:Landroid/content/IntentFilter;

.field private final u:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadService;-><init>()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->n:Landroid/content/IntentFilter;

    .line 3
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$c;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$c;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->o:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->p:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$d;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->q:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->r:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$e;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$e;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->s:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->t:Landroid/content/IntentFilter;

    .line 9
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$f;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$f;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->u:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic E(Lcom/join/android/app/common/servcie/DownloadService_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadService;->C(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method static synthetic F(Lcom/join/android/app/common/servcie/DownloadService_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/android/app/common/servcie/DownloadService;->B(II)V

    return-void
.end method

.method static synthetic G(Lcom/join/android/app/common/servcie/DownloadService_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadService;->w()V

    return-void
.end method

.method static synthetic H(Lcom/join/android/app/common/servcie/DownloadService_;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadService;->o(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic I(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadService;->l(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadService;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic K(Lcom/join/android/app/common/servcie/DownloadService_;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/android/app/common/servcie/DownloadService;->h(ILjava/lang/String;)V

    return-void
.end method

.method private L()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService;->b:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->n:Landroid/content/IntentFilter;

    const-string v1, "com.join.apkinstalldataobb.action.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->p:Landroid/content/IntentFilter;

    const-string v1, "com.join.apkinstal.action.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->r:Landroid/content/IntentFilter;

    const-string v1, "com.join.downloadbygameid.action.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->t:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->t:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->t:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->t:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public static M(Landroid/content/Context;)Lcom/join/android/app/common/servcie/DownloadService_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$l;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method B(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/android/app/common/servcie/DownloadService_$h;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method C(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/common/servcie/DownloadService_$g;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Lcom/join/mgps/dto/DetailResultBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/android/app/common/servcie/DownloadService_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/android/app/common/servcie/DownloadService_$a;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method h(ILjava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/android/app/common/servcie/DownloadService_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/android/app/common/servcie/DownloadService_$b;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method l(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/android/app/common/servcie/DownloadService_$k;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/android/app/common/servcie/DownloadService_$k;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method o(Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/common/servcie/DownloadService_$j;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;Landroid/content/Intent;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadService_;->L()V

    .line 2
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadService;->onCreate()V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->o:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_;->n:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->q:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_;->p:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->s:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_;->r:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->u:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_;->t:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadService;->onDestroy()V

    return-void
.end method

.method w()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadService_$i;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadService_$i;-><init>(Lcom/join/android/app/common/servcie/DownloadService_;)V

    const-string v1, ""

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
